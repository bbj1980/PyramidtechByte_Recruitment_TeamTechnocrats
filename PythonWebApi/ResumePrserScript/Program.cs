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


            var engine = Python.CreateEngine(); // Extract Python language engine from their grasp
            var scope = engine.CreateScope(); // Introduce Python namespace (scope)
            var paths = engine.GetSearchPaths();
            paths.Add("c:\\my_libs");
            engine.SetSearchPaths(paths);
            ScriptSource source = engine.CreateScriptSourceFromFile("E:\\Projects\\Tech Fest\\PyramidtechByte_Recruitment_TeamTechnocrats\\Python Scripts\\Tech Fest\\main.py"); // Load the script
            object result = source.Execute(scope);


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
