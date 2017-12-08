using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
   public class SubQuestion
    {
        public int CourseID { get; set; }
        public int SubID { get; set; }
        public string Title { get; set; }
        public string Answer { get; set; }
    }
}
