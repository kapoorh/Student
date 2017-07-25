using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentCRUD.Models
{
   public interface IStudentRepository
    {
        List<StudentsModel> GetStudents();
       // StudentsModel GetStudentByID(int id);
        void InsertStudentsModel(StudentsModel Student);
        void EditStudentsModel(StudentsModel Student);
        void DeleteStudentsModel(int id);
        //StudentsModel GetStudentByID(int id);
        //StudentsModel GetStudentByEmailPwd(string email, string pwd);

    }
}