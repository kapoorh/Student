using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using StudentCRUD.Models;

namespace StudentCRUD.Controllers
{
    public class StudentController : Controller
    {
        private unitofwork unitofWork = null;

        public StudentController() : this(new unitofwork())
        {

        }

        public StudentController(unitofwork uow)
        {
            this.unitofWork = uow;
        }

        public ActionResult Index()
        {
            
            List<StudentsModel> allstudents = unitofWork.studentrepository.GetStudents();
            return View(allstudents);
        }

        public ActionResult Details(int id = 0)
        {
            
            List<StudentsModel> allstudents = unitofWork.studentrepository.GetStudents();
            StudentsModel studentmodeldet = allstudents.SingleOrDefault(x => x.ID == id);
            if (studentmodeldet == null)
            {
                return HttpNotFound();
            }
            return View(studentmodeldet);
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Home/Create  

        [HttpPost]
        public void Create(StudentsModel newstudent)
        {
            try
            {
                // TODO: Add insert logic here  
                StudentsModel studentmodel = new StudentsModel();

                studentmodel.First_Name = newstudent.First_Name.ToString();
                studentmodel.Last_Name = newstudent.Last_Name.ToString();
                studentmodel.Email = newstudent.Email.ToString();
                studentmodel.Dob = Convert.ToDateTime(newstudent.Dob.ToString());
                studentmodel.Gender = newstudent.Gender.ToString();
                studentmodel.Address = newstudent .Address.ToString();
                studentmodel.City = newstudent.City.ToString();
                studentmodel.State = newstudent.State.ToString();
                studentmodel.Pin = newstudent.Pin.ToString();

                
                unitofWork.studentrepository.InsertStudentsModel(studentmodel);
                
            }
            catch(Exception e)
            {
                throw e;                
            }
        }



        [HttpGet]
        public ActionResult Edit(int id)
        {
            
            List<StudentsModel> allstudents = unitofWork.studentrepository.GetStudents();
            StudentsModel studentmodeldet = allstudents.SingleOrDefault(x => x.ID == id);
            return View(studentmodeldet);
        }

        [HttpPost]
        public ActionResult Edit(int id, StudentsModel editstudent)
        {
            if (ModelState.IsValid)
            {
                
                List<StudentsModel> allstudents = unitofWork.studentrepository.GetStudents();
                StudentsModel studentmodeledit = allstudents.FirstOrDefault(x => x.ID == id);
                studentmodeledit.ID = id;

                studentmodeledit.First_Name = editstudent.First_Name.ToString();
                studentmodeledit.Last_Name = editstudent.Last_Name.ToString();
                studentmodeledit.Email = editstudent.Email.ToString();
                studentmodeledit.Dob = Convert.ToDateTime(editstudent.Dob.ToString());
                studentmodeledit.Gender = editstudent.Gender.ToString();
                studentmodeledit.Address = editstudent.Address.ToString();
                studentmodeledit.City = editstudent.City.ToString();
                studentmodeledit.State = editstudent.State.ToString();
                studentmodeledit.Pin = editstudent.Pin.ToString();

                unitofWork.studentrepository.EditStudentsModel(studentmodeledit);
                
            }

            return View();
        }

        [HttpGet]
        public ActionResult Delete(int id)
        {
            
            List<StudentsModel> allstudents = unitofWork.studentrepository.GetStudents();
            StudentsModel studentmodeldet = allstudents.SingleOrDefault(x => x.ID == id);
            return View(studentmodeldet);
        }

        [HttpPost]
        public void Delete(int id, FormCollection formcollection)
        {
            try
            {
                StudentRepository studentrepository = new StudentRepository();
                unitofWork.studentrepository.DeleteStudentsModel(id);
            
            }

            catch (Exception)
            {
                
            }

        }
        //public ActionResult About()
        //{
        //    ViewBag.Message = "Your application description page.";

        //    return View();
        //}

        //public ActionResult Contact()
        //{
        //    ViewBag.Message = "Your contact page.";

        //    return View();
        //}
    }
}