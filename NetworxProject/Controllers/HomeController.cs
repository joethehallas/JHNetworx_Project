using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NetworxProject.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Title = "About";
            ViewBag.Message = "";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Title = "Contact";
            ViewBag.Message = "Joe Hallas";

            return View();
        }
    }
}