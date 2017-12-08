using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Models;
using DALFactory;
using IDAL;
namespace BLL
{
   public class CommentsService
    {
        private static IComments icomments = DataAccess.CreateComments();
        public static int Insert(Comments comments)
        {
            return icomments.Insert(comments);
        }
        public static DataTable SelectAll()
        {
            return icomments.SelectAll();
        }
        public static int DeleteAll(int ComID)
        {
            return icomments.DeleteAll(ComID);
        }
    }
}
