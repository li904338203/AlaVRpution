using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DBUtility;
using System.Data;
using Moder;

namespace DAL
{

    public class UserDAL
    {
        public DataBase myData = DBHelper.CreateData("mySql");

        ///<summary>
        ///用户登陆
        ///</summary>
        public bool Login(Moder.User model)
        {
            myData.AddParameter("@name", model.UserName);
            myData.AddParameter("@pass", model.PassWord);
            string strsql = "SELECT UserName ,PassWord FROM [User] where UserName=@name and PassWord = @pass";
            DataTable dt = myData.ExecuteDataSet(strsql).Tables[0];
            if (dt.Rows.Count < 1)
            {
                return false;
            }
            else
            {
                return true;
            }
               
        }
        ///<summary>
        ///用户注册
        ///<summary>
        public bool Register(Moder.User model)
        {
            myData.AddParameter("@Emil", model.UserEmil);
            myData.AddParameter("@uname", model.UserName);
            myData.AddParameter("@password", model.PassWord);
            myData.AddParameter("@cteatTime", DateTime.Now);
            string strsql = "insert into[User] (Username,UserEmil,Password,CteatTime)values(@uname,@Emil,@password,@cteatTime)";
            int dt = myData.ExecuteNonQuery(strsql);
            if (dt <= 0)
            {
                return false;
            }
            else
                return true;
        }
        ///<summary>
        ///查询用户名和邮箱
        ///<summary>
        ///
        public bool SelectUserName(Moder.User model)
        {
            myData.AddParameter("@name", model.UserName);
            string strsql = "SELECT UserName from [User] where UserName=@name";
            DataTable dt = myData.ExecuteDataSet(strsql).Tables[0];
            if (dt.Rows.Count < 1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        
            public DataTable SelectUserName1(string UserName)
        {
            myData.AddParameter("@name",UserName);
            string strsql = "SELECT UserID from [User] where UserName=@name";
            DataTable dt = myData.ExecuteDataSet(strsql).Tables[0];
            

            return dt;
        }

            public int updateUser(int userid, string city, string iphone, string UserIntroduction, string UserEmil,string qq) 
            {
                  myData.AddParameter("@userid",userid);
                  myData.AddParameter("@city", city);
                  myData.AddParameter("@iphone", iphone);
                  myData.AddParameter("@UserIntroduction", UserIntroduction);
                  myData.AddParameter("@UserEmil", UserEmil);
                  myData.AddParameter("@qq", qq);
                  string strsql = "update UserDetails set City=@city,TelePhone=@iphone,UserIntroduction=@UserIntroduction where userid=@userid update [User] set UserEmil=@UserEmil,tr1=@qq where UserID = @userid";
                  int da = myData.ExecuteNonQuery(strsql);
                  return da;
            }
    }
}
