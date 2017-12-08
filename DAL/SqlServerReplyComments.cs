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
    public class SqlServerReplyComments : IReplyComments
    {
        //按ReplyComID删除评论
        public int  DeleteAll(int ReplyComID)
        {
            SqlParameter[] sp = { new SqlParameter("@ReplyComID", ReplyComID) };
            return DBHelper.GetExcuteNonQuery("DeleteReplyComments", System.Data.CommandType.StoredProcedure, sp);
        }

        //存表的信息
        public int Insert(ReplyComments replycomment)
        {
            string sql = "insert into Course values(@ReplyComID,@ComID,@UserID,@ReplyComContent,@ReplyComTime)";
            SqlParameter[] sp = new SqlParameter[] {new SqlParameter("@ReplyComID",replycomment.ReplyComID),
                                               new SqlParameter("@ComID",replycomment.ComID),
                                               new SqlParameter("@UserID",replycomment.UserID),
                                               new SqlParameter("@ReplyComContent",replycomment.ReplyComContent),
                                               new SqlParameter("@ReplyComTime",replycomment.ReplyComTime)};
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        //显示表的信息
        public DataTable SelectAll()
        {
            string sql = "select  * from ReplyComments order by ReplyComTime desc";
            return DBHelper.GetFillData(sql);
        }
    }
}
