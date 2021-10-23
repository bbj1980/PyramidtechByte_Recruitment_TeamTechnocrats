using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;
using IronPython.Hosting;
using Microsoft.Scripting.Hosting;

namespace ResumePrserScript
{
    public class Program
    {
        public static void Main(string[] args)
        {
            ScriptRuntime ipy = Python.CreateRuntime();

            dynamic test1 = ipy.UseFile("E:\\Projects\\Tech Fest\\PyramidtechByte_Recruitment_TeamTechnocrats\\Python Scripts\\Tech Fest\\main.py");
            // Call function   
            test1.main();

            CreateHostBuilder(args).Build().Run();
        }

        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.UseStartup<Startup>();
                });
    }
}
