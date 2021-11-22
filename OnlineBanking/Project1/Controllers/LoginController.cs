using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Project1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Project1.Controllers
{
    public class LoginController : Controller
    {
        private readonly onlinebankingContext db;
        

        public LoginController(onlinebankingContext  context)
        {
            db = context;
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult GetdetailScat()
        {
            return View();
        }

        #region Login

        public ActionResult Login()
        {
            ViewBag.Title = "My Bank Application";
            return View();
        }


        [HttpPost]
        public ActionResult Login(AccountDetail Model)
        {
            if(Model.Userid == null && Model.Password == null)
            {
               
                ViewBag.Message = "Username or Password cannot be empty";
                return View();
            }
            else
            {
                
               
                if (Model.Userid == null)
                {
                 
                    ViewBag.Message = "Invalid User";
                                      
                    return View();
                }
                else if(Model.Password==null)
                {
                    ViewBag.Message = "Invalid Password";

                    return View();

                }
                else
                {
                    var q = from p in db.AccountDetails
                            where p.Userid == Model.Userid && p.Password == Model.Password
                            select p;
                    if (q.Any())
                    {
                        ViewBag.Message = "Login Successfull";

                        HttpContext.Session.SetString("uid",Model.Userid);

                        
                        return RedirectToAction("Index","Dashboard");


                    }
                    else
                    {
                        ViewBag.Message = "Invalid  User id and Password";
                        
                        return View();
                    }

                }
            }                      
        }
    }
    #endregion
}
