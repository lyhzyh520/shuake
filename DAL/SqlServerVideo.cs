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
    public class SqlServerVideo : IVideo
    {
        //存表的信息
        public int Insert(Video video)
        {
            string sql = "insert into Video values(@VideoID,@VideoName,@VideoBrief,@CreatTime)";
            SqlParameter[] sp = new SqlParameter[] {new SqlParameter("@VideoID",video.VideoID),
                                                 new SqlParameter("@VideoName",video.VideoName),
                                                 new SqlParameter("@VideoBrief",video.VideoBrief),
                                                 new SqlParameter("@CreatTime",video.CreatTime)};
            return DBHelper.GetExcuteNonQuery(sql,sp);
        }

        //展现表的信息
        public DataTable SelectAll()
        {
            string sql = "select * from Video order by CreatTime desc";
            return DBHelper.GetFillData(sql);
        }
    }
}
