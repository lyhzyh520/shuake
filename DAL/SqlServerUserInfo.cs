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
    public class SqlServerUserInfo : IUserInfo
    {
        //存表的信息
        public int Insert(UserInfo userinfo)
        {
            string sql = "insert into UserInfo values (@UserName,@Password,@Email,@Phone)";
            SqlParameter[] sp = new SqlParameter[]{
                                                 new SqlParameter("@UserName",userinfo.UserName),
                                                 new SqlParameter("Password",userinfo.Password),
                                                 new SqlParameter("Email",userinfo.Email),
                                                 new SqlParameter("Phone",userinfo.Phone)};
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        //核对信息
        public SqlDataReader Login(string Name, string paw)
        {

            string sql = "select * from UserInfo where  UserName=@UserName and Password=@Password";
            SqlParameter[] sp = new SqlParameter[]{
              
                new SqlParameter("@UserName",Name),
                new SqlParameter("@Password",paw)
        };
            return DBHelper.GetDataReader(sql, sp);
        }
    }
}
