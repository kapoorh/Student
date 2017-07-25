using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentCRUD.Models
{
    public class DummyStudentRepository : IStudentRepository
    {
        List<StudentsModel> studentmodellist = null;

        public DummyStudentRepository(List<StudentsModel> student)
        {
            this.studentmodellist = student;
        }

        public List<StudentsModel> GetStudents()
        {
            return studentmodellist;
        }

        public void InsertStudentsModel(StudentsModel student)
        {
            studentmodellist.Add(student);
        }

        public void EditStudentsModel(StudentsModel studentedit)
        {
            int id = studentedit.ID;
            StudentsModel studenttotupdate = studentmodellist.SingleOrDefault(x => x.ID == id);
            DeleteStudentsModel(id);
            studentmodellist.Add(studentedit);
        }

        public void DeleteStudentsModel(int id)
        {
            StudentsModel studenttoDel = studentmodellist.SingleOrDefault(x => x.ID == id);
            studentmodellist.Remove(studenttoDel);
        }
    }
}