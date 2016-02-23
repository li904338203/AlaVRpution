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
            myData.AddParameter("@name",model.UserName);
            myData.AddParameter("@pass", model.PassWord);
            string strsql = "select UserName,PassWord From User where UserName = @name and PassWord = @pass";
            DataTable dt = myData.ExecuteDataSet(strsql).Tables[0];
            if (dt.Rows.Count < 1)
            {
                return false;
            }
            else
                return true;
        }
    }
}
