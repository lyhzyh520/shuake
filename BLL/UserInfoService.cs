using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Models;
using IDAL;
using DALFactory;
namespace BLL
{
    public class UserInfoService
    {
        private static IUserInfo iuserinfo = DataAccess.CreateUserInfo();
        public static int Insert(UserInfo userinfo)
        {
            return iuserinfo.Insert(userinfo);
        }
        public static SqlDataReader Login( string Name, string paw)
        {
            return iuserinfo.Login(Name, paw);
        }
    }
}
