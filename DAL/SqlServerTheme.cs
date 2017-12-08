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
    public class SqlServerTheme : ITheme
    {
        //存表的信息
        public int Insert(Theme theme)
        {
            string sql = "insert into Theme vaules(@ThemeID,@ISID,@UserID,@ThemeName,@ThemeTime,@ThemeContent)";
            SqlParameter[] sp = new SqlParameter[] {new SqlParameter("@ThemeID",theme.ThemeID),
                                                 new SqlParameter("@ISID",theme.ISID),
                                                 new SqlParameter("@UserID",theme.UserID),
                                                 new SqlParameter("@ThemeName",theme.ThemeName),
                                                 new SqlParameter("@hemeTime",theme.ThemeTime),
                                                 new SqlParameter("@hemeContent", theme.ThemeContent)};
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //展现表的信息
        public DataTable SelectAll()
        {
            string sql = "select * from Theme  order by ThemeTime desc";
            return DBHelper.GetFillData(sql);
        }

        //更新话题内容
        public int UpdataTheme(string ThemeContent)
        {
            string sql = "update Theme set ThemeContent=@ThemeContent";
            SqlParameter[] sp = {
                new SqlParameter ("@ThemeContent",ThemeContent)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        //更新用户编号
        public int UpdataTheme(int UserID)
        {
            string sql = "update Theme set UserID=@UserID";
            SqlParameter[] sp = {
                new SqlParameter ("@UserID",UserID)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
    }
}
