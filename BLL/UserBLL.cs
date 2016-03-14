using System;
using System.Collections.Generic;
using System.Data;
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

       public bool Register(Moder.User moder)
       {
           return dal.Register(moder);
       }
       public bool SelectUserName(Moder.User moder)
       {
           return dal.SelectUserName(moder);
       }
       public DataTable SelectUserName1(string UserName) {
           return dal.SelectUserName1(UserName);
       }
       public int updateUser(int userid, string city, string iphone, string UserIntroduction, string UserEmil, string qq)
       {
           return dal.updateUser( userid,  city,  iphone,  UserIntroduction,  UserEmil, qq);
       }
    }
}
