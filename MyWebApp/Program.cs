var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Hello from .NET + Azure!");
app.MapGet("/health", () => Results.Ok("Healthy"));

app.Run();
