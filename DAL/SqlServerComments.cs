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
    public class SqlServerComments : IComments
    {
        //删除
        public int DeleteAll(int ComID)
        {
            SqlParameter[] sp = { new SqlParameter("@ComID", ComID) };
            return DBHelper.GetExcuteNonQuery("DeleteComments", System.Data.CommandType.StoredProcedure, sp);
        }
        //增加
        public int Insert(Comments comments)
        {
            string sql = "insert into Comments values(@ComID,@UserID,@ThemeID,@ComContent,@ComTime)";
            SqlParameter[] sp = new SqlParameter[] { new SqlParameter("@ComID",comments.ComID),
                                                 new SqlParameter("@UserID",comments.UserID),
                                                 new SqlParameter("@ThemeID",comments.ThemeID),
                                                 new SqlParameter("ComContent",comments.ComContent),
                                                 new SqlParameter("@ComTime",comments.ComTime)};
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        //展现
        public DataTable SelectAll()
        {
            string sql = "select * from Comments order by ComTime desc";
            return DBHelper.GetFillData(sql);
        }
    }
}
