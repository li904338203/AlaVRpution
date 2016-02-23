using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
   public class UserBLL
    {
       DAL.UserDAL dal = new DAL.UserDAL();

       public bool Login(Moder.User model)
       {
           return dal.Login(model);
       }
    }
}
