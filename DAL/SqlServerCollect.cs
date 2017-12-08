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
    public class SqlServerCollect : ICollect
    {
        //存数据
        public int Insert(Collect collect)
        {
            string sql = "insert into Collect values(@CtID,@UserID,@ObID,@SubID,@CtTime)";
            SqlParameter[] sp = new SqlParameter[] { new SqlParameter("@CtID",collect.CtID),
                                                 new SqlParameter("@UserID",collect.UserID),
                                                 new SqlParameter("@ObID",collect.ObID),
                                                 new SqlParameter("@SubID",collect.SubID),
                                                 new SqlParameter("@CtTime",collect.CtTime)};
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //按照产生时间展现数据
        public DataTable SelectAll()
        {
            string sql = "select  * from Collect order by CtTime desc";
            return DBHelper.GetFillData(sql);
        }
    }
}
