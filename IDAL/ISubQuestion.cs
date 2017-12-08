using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data;
namespace IDAL
{
  public interface ISubQuestion
    {
        //存表信息
        int Insert(SubQuestion subquestion);
        //展现表的信息
        DataTable SelectAll();
        //选取三道题
        DataTable SelectThree();
    }
}
