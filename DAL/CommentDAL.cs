using DBUtility;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace DAL
{
   public  class CommentDAL
    {

       public DataBase myData = DBHelper.CreateData("mySql");
       public DataSet SelectComment( int ModerId){
           
           myData.AddParameter("@moderid",ModerId);
           string strsql = "select  Comment.CommentId,Comment.CommentContent,Comment.CommentTime,Comment.ModerId,dbo.[User].UserName,UserDetails.Images from Comment left join [User] on Comment.CommentUser=[User].UserID  left join UserDetails on  [User].UserID=UserDetails.UserId where Comment.ModerId=@moderid";
           DataSet da = myData.ExecuteDataSet(strsql);
           return da;
       }
       public bool InserComment(Moder.Comment com) {
           myData.AddParameter("@CommentUser", com.CommentUser);
           myData.AddParameter("@CommentContent", com.CommentContent);
           myData.AddParameter("@ModerId", com.ModerId);
           myData.AddParameter("@CommentTime", com.CommentTime);
           string strsql = "insert into Comment(CommentUser,CommentContent,ModerId,CommentTime) values(@CommentUser,@CommentContent,@ModerId,@CommentTime)";
           int dt = myData.ExecuteNonQuery(strsql);
           if (dt <= 0)
           {
               return false;
           }
           else
               return true;
       }
    }
}
