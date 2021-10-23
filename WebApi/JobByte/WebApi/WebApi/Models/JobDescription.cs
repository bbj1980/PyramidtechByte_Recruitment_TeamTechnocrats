using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApi.Models
{
    public class JobDescription
    {
        public string Name { get; set; }
        public string Position { get; set; }
        public string Description { get; set; }
        public string Techskill { get; set; }
        public string Softskill { get; set; }
        public string Location { get; set; }
        public string Education { get; set; }
        public string Experience { get; set; }
        public string Nationality { get; set; }
        public string Comments { get; set; }
    }
}
