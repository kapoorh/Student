using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace StudentCRUD.Models
{
    public class StudentRepository :IStudentRepository
    {
        public List<StudentsModel> allStudents;
        public XDocument StudentsData;

        public StudentRepository()
        {
            try
            {
                allStudents = new List<StudentsModel>();1234
                StudentsData = XDocument.Load(HttpContext.Current.Server.MapPath("~/App_Data/studentdata.xml"));
                var Students = from t in StudentsData.Descendants("student")
                               select new StudentsModel(
                                   (int)t.Element("ID"),
                                   t.Element("first_name").Value,
                               t.Element("last_name").Value,
                               t.Element("email").Value,
                               (DateTime)t.Element("dob"),
                               t.Element("gender").Value,
                               
                               t.Element("address").Value,
                               t.Element("city").Value,
                               t.Element("state").Value,
                               t.Element("pin").Value);

                allStudents.AddRange(Students.ToList<StudentsModel>());
            }
            catch (Exception exp)
            {
                throw;
                //throw new NotImplementedException();
            }
        }

        public List<StudentsModel> GetStudents()
        {
            return allStudents;
        }

        //public StudentsModel GetStudentByID(int id)
        //{
        //    return allStudents.Find(item => item.ID == id);
        //}

        public void InsertStudentsModel(StudentsModel Student)
        {
            Student.ID = (int)(from S in StudentsData.Descendants("student") orderby (int)S.Element("ID") descending select (int)S.Element("ID")).FirstOrDefault() + 1;

            StudentsData.Root.Add(new XElement("student", new XElement("ID", Student.ID),
                new XElement("first_name", Student.First_Name),
                new XElement("last_name", Student.Last_Name),
                new XElement("email", Student.Email),
                new XElement("dob", Student.Dob.Date.ToShortDateString()),
                new XElement("gender", Student.Gender),
                new XElement("address", Student.Address),
                new XElement("city", Student.City),
                new XElement("state", Student.State),
                new XElement("pin", Student.Pin)));

            StudentsData.Save(HttpContext.Current.Server.MapPath("~/App_Data/studentdata.xml"));
        }

        public void EditStudentsModel(StudentsModel Student)
        {
            try
            {
                XElement node = StudentsData.Root.Elements("student").Where(i => (int)i.Element("ID") == Student.ID).FirstOrDefault();

                node.SetElementValue("first_name", Student.First_Name);
                node.SetElementValue("last_name", Student.Last_Name);
                node.SetElementValue("email", Student.Email);
                node.SetElementValue("dob", Student.Dob.ToShortDateString());
                node.SetElementValue("gender", Student.Gender);
                
                node.SetElementValue("address", Student.Address);
                node.SetElementValue("city", Student.City);
                node.SetElementValue("state", Student.State);
                node.SetElementValue("pin", Student.Pin);
                StudentsData.Save(HttpContext.Current.Server.MapPath("~/App_Data/studentdata.xml"));
            }
            catch (Exception)
            {

                throw new NotImplementedException();
            }
        }


        public void DeleteStudentsModel(int id)
        {
            try
            {
                StudentsData.Root.Elements("student").Where(i => (int)i.Element("ID") == id).Remove();

                StudentsData.Save(HttpContext.Current.Server.MapPath("~/App_Data/studentdata.xml"));

            }
            catch (Exception)
            {

                throw new NotImplementedException();
            }
        }
    }
}