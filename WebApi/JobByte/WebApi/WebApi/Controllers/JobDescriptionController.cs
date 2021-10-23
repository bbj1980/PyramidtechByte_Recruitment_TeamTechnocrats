using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApi.Core;
using WebApi.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class JobDescriptionController : ControllerBase
    {

        private readonly ILogger<JobDescriptionController> _logger;
        private readonly ProcessDocument _processDocument;

        public JobDescriptionController(ILogger<JobDescriptionController> logger)
        {
            _logger = logger; _processDocument = new ProcessDocument();
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
        public JobDescription Post([FromBody] string base64encodedstring)
        {
            return this._processDocument.ExtractJobDescription(base64encodedstring);

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
