using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json;
using BookShopOnline.Areas.Admin.Models;

namespace BookShopOnline.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        BookStoreDbContext db = new BookStoreDbContext();
        // GET: Admin/Home
        public ActionResult Index()
        {
            return View();
        }                
    }
}