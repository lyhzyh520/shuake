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
    public class SqlServerNewsInfo : INewsInfo
    {
        //存表的信息
        public int Insert(NewsInfo newsinfo)
        {
            string sql = "insert into NewsInfo values(@NewsID,@NewsTitle,@NewsContent,@NewsTime)";
            SqlParameter[] sp = new SqlParameter[] { new SqlParameter("@NewsID",newsinfo.NewsID),
                                                 new SqlParameter("@NewsTitle",newsinfo.NewsTitle),
                                                 new SqlParameter("@NewsContent",newsinfo.NewsContent),
                                                 new SqlParameter("@NewsTime",newsinfo.NewsTime)};
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        //展现表的信息
        public DataTable SelectAll()
        {
            string sql = "select  * from NewsInfo order by NewsTime desc";
            return DBHelper.GetFillData(sql);
        }
    }
}
