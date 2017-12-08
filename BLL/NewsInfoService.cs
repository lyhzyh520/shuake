﻿using System;
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
   public class NewsInfoService
    {
        private static INewsInfo inewinfo = DataAccess.CreateNewsInfo();
        public static int Insert(NewsInfo newsinfo)
        {
            return inewinfo.Insert(newsinfo);
        }
         public static  DataTable SelectAll()
        {
            return inewinfo.SelectAll();
        }
    }
}
