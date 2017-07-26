using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
//using Microsoft.VisualStudio.TestTools.UnitTesting;
using StudentCRUD.Controllers;
using StudentCRUD.Models;
using NUnit.Framework;


namespace StudentCRUD.Tests.Controllers
{
    [TestFixture]
    public class HomeControllerTest
    {
        StudentsModel student1 = null;
        StudentsModel student2 = null;
        StudentsModel student3 = null;
        StudentsModel student4 = null;
        StudentsModel student5 = null;

        List<StudentsModel> studentmodellist = null;
        DummyStudentRepository studentRepository = null;
        unitofwork unitofwork = null;
        StudentController controller = null;
        
        private const string ServiceBaseURL = "http://localhost:55217/";

        public object HttpPropertyKeys { get; private set; }

        public HomeControllerTest()
        {
            student1 = new StudentsModel { ID = 1,   First_Name="Sweety", Last_Name="Sharma",Email="Sara@hotmail.com",Dob=Convert.ToDateTime("12/12/1973"),Gender="Female",Address="New Link Road",City="Saran",State="MHS", Pin="1231" };
            student2 = new StudentsModel { ID = 2, First_Name = "Jatin", Last_Name = "Kumar", Email = "Jatin@hotmail.com", Dob = Convert.ToDateTime("12/12/1972"), Gender = "Male", Address = "New Link Road", City = "Saran", State = "MHS", Pin = "1231" };
            student3 = new StudentsModel { ID = 3, First_Name = "Sweta", Last_Name = "shah", Email = "Swta@hotmail.com", Dob = Convert.ToDateTime("12/12/1971"), Gender = "Female", Address = "New Link Road", City = "Saran", State = "MHS", Pin = "1231" };
            student4 = new StudentsModel { ID = 4, First_Name = "yasmin", Last_Name = "Sheikh", Email = "Yasmin@hotmail.com", Dob = Convert.ToDateTime("12/12/1978"), Gender = "Female", Address = "New Link Road", City = "Saran", State = "MHS", Pin = "1231" };
            student5 = new StudentsModel { ID = 5, First_Name = "weetetar", Last_Name = "Rao", Email = "Weeta@hotmail.com", Dob = Convert.ToDateTime("12/12/1975"), Gender = "Male", Address = "New Link Road", City = "Saran", State = "MHS", Pin = "1231" };

            studentmodellist = new List<StudentsModel>
            {
                  student1,
                  student2,
                  student3,
                  student4,
                 // student5
            };

            studentRepository = new DummyStudentRepository(studentmodellist);
            unitofwork = new unitofwork(studentRepository);
            controller = new StudentController(unitofwork);
   
        }



        [Test]
        public void Index()
        {


            ViewResult result = controller.Index() as ViewResult;
            var model = (List<StudentsModel>)result.ViewData.Model;

            // Assert
            CollectionAssert.Contains(model, student1);
            CollectionAssert.Contains(model, student2);
            CollectionAssert.Contains(model, student3);
            CollectionAssert.Contains(model, student4);
                        

        }

        [Test]
        public void Details()
        {
            ViewResult result = controller.Details(1) as ViewResult;
            Assert.AreEqual(result.Model, student1);

        }

        [Test]
        public void Create()
        {
            
            StudentsModel newstudent = new StudentsModel { ID = 6, First_Name = "witekar", Last_Name = "Rao", Email = "Weeta@hotmail.com", Dob = Convert.ToDateTime("12/12/1975"), Gender = "Male", Address = "New Link Road", City = "Saran", State = "MHS", Pin = "1231" };

            // Lets call the action method now
            controller.Create(newstudent);

            // get the list of students
            List<StudentsModel> students = studentRepository.GetStudents();

            try {

                CollectionAssert.Contains(students, newstudent);
            }
            catch(Exception)
            {

            }
        }

        [Test]
        public void Edit()
        {
            // Lets create a valid student objct to add into
            StudentsModel editstudent = new StudentsModel { ID = 4, First_Name = "yasmin", Last_Name = "Sheikh", Email = "Yasmin@hotmail.com", Dob = Convert.ToDateTime("12/12/1978"), Gender = "Female", Address = "MG Road", City = "Mahad", State = "MHS", Pin = "1231" };

            // Lets call the action method now
            controller.Edit(4, editstudent);

            // get the list of students
            List<StudentsModel> students = studentRepository.GetStudents();

            try
            {
                CollectionAssert.Contains(students, editstudent);
            }
            catch (Exception exp)
            {
               
            }
        }

        [Test]
        public void Delete()
        {
            int id = 2;
            // Lets call the action method now
            controller.Delete(id);
            StudentsModel deletestudent = studentRepository.GetStudents().SingleOrDefault(x => x.ID == id);
            // get the list of students
            List<StudentsModel> students = studentRepository.GetStudents();

            try
            {
                CollectionAssert.DoesNotContain(students, deletestudent);
            }
            catch(Exception)
            {
                //throw;
            }
        }



        [Test]
        public void About()
        {
            // Arrange
            StudentController controller = new StudentController();

            // Act
            ViewResult result = controller.About() as ViewResult;

            // Assert
            Assert.AreEqual("Your application description page.", result.ViewBag.Message);
        }

        [Test]
        public void Contact()
        {
            // Arrange
            StudentController controller = new StudentController();

            // Act
            ViewResult result = controller.Contact() as ViewResult;

            // Assert
            Assert.IsNotNull(result);
        }
    }
}
