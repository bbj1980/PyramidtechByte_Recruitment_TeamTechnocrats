using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApi.Core;
using WebApi.Data;
using WebApi.Models;
using WebApi.Request;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class JobDescriptionController : ControllerBase
    {

        private readonly ILogger<JobDescriptionController> _logger;
        private readonly ProcessDocument _processDocument;
        private readonly ApiDBContext _context;

        public JobDescriptionController(ILogger<JobDescriptionController> logger)
        {
            _logger = logger;
            _processDocument = new ProcessDocument();
            _context = new ApiDBContext();

        }
        // GET: api/<JobDescriptionController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<JobDescriptionController>/5
        //[HttpGet("{id}")]
        //public JobDescription Get(int id)
        //{
        //    return this._processDocument.ExtractJobDescription();
        //}

        // POST api/<JobDescriptionController>
        [HttpPost]
        public JobDescription Post([FromBody] JDRequest req)
        {
            return this._processDocument.ExtractJobDescription(req.base64String);

        }

        [HttpPost]
        [Route("savejobdescription")]
        public void SaveJobDescription([FromBody] JobDescription req)
        {




            List<SqlParameter> sqlParams = new List<SqlParameter>()
{
new SqlParameter("@JDName",req.Position),
new SqlParameter("@JDDescription",req.Description),
new SqlParameter("@Position",req.Position),
new SqlParameter("@TechSkill",req.Techskill),
new SqlParameter("@SoftSkill",req.Softskill),
new SqlParameter("@Location",req.Location==null?"":req.Location),
new SqlParameter("@Education",req.Education),
new SqlParameter("@Experience",req.Experience),
new SqlParameter("@Nationality",req.Nationality),
new SqlParameter("@Comments",req.Comments),
new SqlParameter("@EnteredBy","Sagir")

};



            var result = _context.Database.ExecuteSqlRaw(@"EXEC [dbo].[sJDAddDetails]    @JDName,@JDDescription ,@Position ,@TechSkill,@SoftSkill,@Location ,@Education,@Experience,@Nationality,@Comments ,@EnteredBy ", sqlParams);

        }

        // PUT api/<JobDescriptionController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<JobDescriptionController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
