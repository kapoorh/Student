using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentCRUD.Models
{
    public class unitofwork
    {
        public unitofwork()
        {
            StudentRepository studentrepository = new StudentRepository();
            //DummyStudentRepository dummystudentRepository = new DummyStudentRepository();
        }

        public unitofwork(IStudentRepository studentRepo)
        {
            studentrepository = studentRepo;

        }

        public IStudentRepository studentrepository
        {
            get;
            private set;


        }
    }
}