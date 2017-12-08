using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Models;
namespace IDAL
{
   public interface IVideo
    {
        //存表的信息
        int Insert(Video video);
        //展现表的信息
        DataTable SelectAll();
    }
}
