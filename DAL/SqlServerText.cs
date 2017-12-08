using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Models;
using IDAL;
namespace DAL
{
    public class SqlServerText : IText
    {
        //存表的信息
        public int Insert(Text text)
        {
            string sql = "insert into Text vaules(@TextID,@TextName.@TextUrl)";
            SqlParameter[] sp = new SqlParameter[] {new SqlParameter("@TextID",text.TextID),
                                                 new SqlParameter("@TextName",text.TextName),
                                                 new SqlParameter("@TextUrl",text.TextUrl) };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

       //显示表的信息
        public DataTable SelectTextAll()
        {
            string sql = "select * from Text";
            return DBHelper.GetFillData(sql);
        }
    }
}
