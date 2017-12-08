using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Models;
namespace IDAL
{
   public interface IText
    {
        //存表的信息
        int Insert(Text text);
        //展现表的信息
        DataTable SelectTextAll();
    }
}
