using AspNetCoreHero.ToastNotification;
using FoodOrder.Models;
using Microsoft.EntityFrameworkCore;
using System.Configuration;
using System.Text.Encodings.Web;
using System.Text.Unicode;

namespace FoodOrder
{
	public class Program
	{
		public static void Main(string[] args)
		{
			var builder = WebApplication.CreateBuilder(args);

			// Add services to the container.
			//Connection string
			//builder.Services.AddDbContext<FoodOrderDBContext>(options =>
			//options.UseSqlServer(builder.Configuration.GetConnectionString("FoodOrderDB")));

			builder.Services.AddSingleton<HtmlEncoder>(HtmlEncoder.Create(allowedRanges: new[] { UnicodeRanges.All }));

			builder.Services.AddControllersWithViews().AddRazorRuntimeCompilation();
			builder.Services.AddNotyf(config => { config.DurationInSeconds = 10; config.IsDismissable = true; config.Position = NotyfPosition.BottomRight; });

			var app = builder.Build();

			// Configure the HTTP request pipeline.
			if (!app.Environment.IsDevelopment())
			{
				app.UseExceptionHandler("/Home/Error");
			}
			app.UseStaticFiles();

			app.UseRouting();
				
			app.UseAuthorization();
			

			

			app.UseEndpoints(endpoints =>
			{
				endpoints.MapControllerRoute(
				name: "areas",
				pattern: "{area:exists}/{controller=Home}/{action=Index}/{id?}"
				);
				endpoints.MapControllerRoute(
				name: "default",
				pattern: "{controller=Home}/{action=Index}/{id?}");
			});
			app.Run();
		}
	}
}