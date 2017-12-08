using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Models;
using IDAL;
using DALFactory;
namespace BLL
{
   public class VideoService
    {
        private static IVideo ivideo = DataAccess.CreateVideo();
        public static int Insert(Video video)
        {
            return ivideo.Insert(video);
        }
        public static DataTable SelectAll()
        {
            return ivideo.SelectAll();
        }
    }
}
