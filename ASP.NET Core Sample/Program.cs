using Microsoft.Extensions.FileProviders;
using System.Text;
using Microsoft.AspNetCore.Server.Kestrel.Core;
using System;
using System.ComponentModel;


var builder = WebApplication.CreateBuilder(args);
builder.Services.Configure<KestrelServerOptions>(options => options.AllowSynchronousIO = true);
var app = builder.Build();


try
{
    app.Run(context =>
    {
        string path = context.Request.Path;
        string substringOfPath = path.Substring(1, path.Length - 1);
        using var stream = new FileStream(substringOfPath, FileMode.Open, FileAccess.Read);
        context.Response.StatusCode = 200;
        context.Response.ContentType = "image/jpeg";
        stream.CopyTo(context.Response.Body);

        return Task.CompletedTask;
    });
        
}
catch (DirectoryNotFoundException e)
{
    Console.WriteLine(e.Message);
}


app.Run();