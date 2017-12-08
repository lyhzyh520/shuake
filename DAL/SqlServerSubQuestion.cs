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
    public class SqlServerSubQuestion : ISubQuestion
    {
        //存表的信息
        public int Insert(SubQuestion subquestion)
        {
            string sql = "insert into SubQuestion values(@CourseID,@SubID,@Title,@Answer)";
            SqlParameter[] sp = new SqlParameter[] { new SqlParameter("@CourseID",subquestion.CourseID),
                                                 new SqlParameter("@SubID",subquestion.SubID),
                                                 new SqlParameter("@Title",subquestion.Title),
                                                 new SqlParameter("@Answer",subquestion.Answer) };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        //展现表的信息
        public DataTable SelectAll()
        {
            string sql = "select  * from SubQuestionorder by SubID desc";
            return DBHelper.GetFillData(sql);
        }

        //随机选取三道题
        public DataTable SelectThree()
        {
            string sql = "select top 3 * from SubQuestion order by NEWID() ";
            return DBHelper.GetFillData(sql);
        }
    }
}
