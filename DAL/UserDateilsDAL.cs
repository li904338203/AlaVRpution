using DBUtility;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace DAL
{
    public  class UserDateilsDAL
    {
        public DataBase myData = DBHelper.CreateData("mySql");
        public DataSet SelectUserDateils(int ModerId) 
        {
            myData.AddParameter("@moderid", ModerId);
            string strsql = "select  Moder.UploaderId,Moder.ModerId,dbo.[User].UserName,[User].UserEmil,[User].tr1,UserDetails.City,UserDetails.Images,UserDetails.TelePhone,UserDetails.UserIntroduction from Moder left join [User] on Moder.UploaderId=[User].UserID  left join UserDetails on  [User].UserID=UserDetails.UserId where Moder.ModerId = @moderid";
            DataSet da = myData.ExecuteDataSet(strsql);
            return da;
        }
        public DataSet SelectUserDateilsByuserid(int ModerId)
        {
            myData.AddParameter("@moderid", ModerId);
            string strsql = "select  Moder.UploaderId,Moder.ModerId,dbo.[User].UserName,[User].UserEmil,[User].tr1,UserDetails.City,UserDetails.Images,UserDetails.TelePhone,UserDetails.UserIntroduction from Moder left join [User] on Moder.UploaderId=[User].UserID  left join UserDetails on  [User].UserID=UserDetails.UserId where [User].UserID = @moderid";
            DataSet da = myData.ExecuteDataSet(strsql);
            return da;
        }
    }
}
