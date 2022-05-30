using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AppWebVaciadePrueba.Controllers
{
    public class HomeController : Controller
    {
        Models.ModeloDatosContainer contexto=new Models.ModeloDatosContainer();

        // GET: Home
        public ActionResult Index()
        {
            ViewBag.NombreUsuario = "Diego Rivera";
            ViewBag.Title = "Inicio del sitio";
            int[] edades = { 47, 51, 25, 23 };
            ViewData["Edad"] =edades;
            
            TempData["valor1"] = 80000;


            return View();

        }

        public string Saludar(int rut)
        {
            return "Bienvendo amigo tu RUT es: " + rut;
        }

        public ActionResult Personas()
        {
            return View();
        }

        public ActionResult Alumno()
        {
            
            return View(contexto.AlumnoSet);
        }
    }
}