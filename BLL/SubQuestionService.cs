using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Models;
using IDAL;
using DALFactory;
namespace BLL
{
   public class SubQuestionService
    {
        private static ISubQuestion isubquestion = DataAccess.CreateSubQuestion();
        public static int Insert(SubQuestion subquestion)
        {
            return isubquestion.Insert(subquestion);
        }
        public static  DataTable SelectAll()
        {
            return isubquestion.SelectAll();
        }
        public static  DataTable SelectThree()
        {
            return isubquestion.SelectThree();
        }
    }
}
