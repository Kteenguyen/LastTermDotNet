using FoodOrder.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace FoodOrder.Controllers
{
    public class MenuController : Controller
    {
        private readonly FoodOrderDBContext _context;
        public MenuController(FoodOrderDBContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }
        
       
    }
}
