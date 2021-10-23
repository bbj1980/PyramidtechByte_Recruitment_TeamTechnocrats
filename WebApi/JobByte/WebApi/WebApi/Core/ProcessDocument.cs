using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApi.Models;
using System.IO;
using System.IO.Packaging;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using DocumentFormat.OpenXml;
using System.Net.Http;

namespace WebApi.Core
{
    public class ProcessDocument
    {
        public JobDescription ExtractJobDescription(string base64encodedstring)
        {
            //string filepath = "D:\\temp\\Automation QA1.docx";
            var bytes = Convert.FromBase64String(base64encodedstring);
            var contents = new MemoryStream(bytes);
            var JD = new JobDescription();
            var tableRows = new List<TableRow>();

            using (WordprocessingDocument wordDocument =
            WordprocessingDocument.Open(contents, false))
            {
                // Assign a reference to the existing document body.  

                tableRows = wordDocument.MainDocumentPart.Document.Body.OfType<Table>().First().OfType<TableRow>().ToList();

                //Extract  Description 
                JD.Description = tableRows.ElementAt(3).OfType<TableCell>().ElementAt(0).InnerText.Trim();
                //Extract  Position 
                JD.Position = tableRows.ElementAt(1).OfType<TableCell>().ElementAt(0).InnerText.Trim();
                //Extract  Techskill 
                JD.Techskill = tableRows.ElementAt(5).OfType<TableCell>().ElementAt(0).InnerText.Trim() 
                    + tableRows.ElementAt(7).OfType<TableCell>().ElementAt(0).InnerText.Trim();
                //Extract  Softskill 
                JD.Softskill = tableRows.ElementAt(13).OfType<TableCell>().ElementAt(0).InnerText.Trim();
                //Extract  Education 
                JD.Education = tableRows.ElementAt(9).OfType<TableCell>().ElementAt(0).InnerText.Trim();
                //Extract  Experience 
                JD.Experience = tableRows.ElementAt(9).OfType<TableCell>().ElementAt(1).InnerText.Trim();
                //Extract  Comments 
                JD.Comments = tableRows.ElementAt(15).OfType<TableCell>().ElementAt(0).InnerText;

            }

            return JD;
        }
    }
}
