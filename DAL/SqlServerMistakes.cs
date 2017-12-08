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
    public class SqlServerMistakes : IMistakes
    {
        //存表的信息
        int IMistakes.Insert(Mistakes mistakes)
        {
            string sql = "insert into Mistakes values(@MisID,@UserID,@ObID,@MisTime)";
            SqlParameter[] sp = new SqlParameter[] {new SqlParameter("@MisID",mistakes.MisID),
                                                 new SqlParameter("@UserID",mistakes.UserID),
                                                 new SqlParameter ("@ObID",mistakes.ObID),
                                                 new SqlParameter("@MisTime",mistakes.MisTime) };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        //展现表的信息
        DataTable IMistakes.SelectAll()
        {
            string sql = "select  * from  Mistakes order by MisTime desc";
            return DBHelper.GetFillData(sql);
        }
    }
}
