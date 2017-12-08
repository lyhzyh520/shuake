using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Models;
namespace IDAL
{
public interface IComments
    {
        //存表的信息
        int Insert(Comments comments);
        //展现表的信息
        DataTable SelectAll();
        //删除表
        int DeleteAll(int ComID);
    }
}
