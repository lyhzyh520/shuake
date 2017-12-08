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
   public class TextService
    {
        private static IText itext = DataAccess.CreateText();
        public static int Insert(Text text)
        {
            return itext.Insert(text);
        }
        public static DataTable SelectTextAll()
        {
            return itext.SelectTextAll();
        }
    }
}
