﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DBUtility;
using System.Data;
using Moder;

namespace DAL
{
    public class ModerDAL
    {
        public DataBase myData = DBHelper.CreateData("mySql");
        ///<summary>
        /// 页面数据加载
        ///</summary>
        public DataSet ModerSelect() 
        {
            string strsql = "select TOP 9 Moder.ModerId  ,Moder.ModerName ,Moder.UploaderId,Moder.Recommend,Moder.Follow,Moder.ModerPath ,Moder.UploaderTime  ,Moder.IsRecommend  , Moder.dianzan,Moder.pinglun,Moder.CommentNums,dbo.[User].UserName,UserDetails.Images from Moder left join [User] on Moder.UploaderId=[User].UserID  left join UserDetails on  [User].UserID=UserDetails.UserId";
            DataSet da = myData.ExecuteDataSet(strsql);
           
          
             return da;
        }
        public DataSet ModerSelectFenye(int index) {
          //  myData.AddParameter("@index", index);
            //string strsql = "select TOP 9 Moder.ModerId  ,Moder.ModerName ,Moder.UploaderId,Moder.Recommend,Moder.Follow,Moder.ModerPath ,Moder.UploaderTime  ,Moder.IsRecommend  , Moder.dianzan,Moder.pinglun,Moder.CommentNums,dbo.[User].UserName,UserDetails.Images from Moder left join [User] on Moder.UploaderId=[User].UserID  left join UserDetails on  [User].UserID=UserDetails.UserId  where Moder.ModerId>all(select top @index Moder.ModerId from Moder order by Moder.ModerId)order by Moder.ModerId";
            string strsql = "select Moder.ModerId  ,Moder.ModerName ,Moder.UploaderId,Moder.Recommend,Moder.Follow,Moder.ModerPath ,Moder.UploaderTime  ,Moder.IsRecommend  , Moder.dianzan,Moder.pinglun,Moder.CommentNums,dbo.[User].UserName,UserDetails.Images from Moder left join [User] on Moder.UploaderId=[User].UserID  left join UserDetails on  [User].UserID=UserDetails.UserId";
            DataSet da = myData.ExecuteDataSet(strsql,0,index);
            return da;
        
        }
        public DataSet ModerSelectById( int ModerId) { 
        
            myData.AddParameter("@moderid",ModerId);
            string strsql = "select Moder.ModerId  ,Moder.ModerName ,Moder.UploaderId,Moder.Recommend,Moder.Follow,Moder.ModerPath ,Moder.UploaderTime  ,Moder.IsRecommend  , Moder.dianzan,Moder.pinglun,Moder.CommentNums,dbo.[User].UserName,UserDetails.Images from Moder left join [User] on Moder.UploaderId=[User].UserID  left join UserDetails on  [User].UserID=UserDetails.UserId where Moder.ModerId = @moderid";
            DataSet da = myData.ExecuteDataSet(strsql);
            return da;
        }
        public DataSet AuthorNameSet(int userid) { 
             myData.AddParameter("@userid",userid);
             string strsqlname = "select UserName from [User] where UserID =@userid";
           
             DataSet da = myData.ExecuteDataSet(strsqlname);
             return da;
         }
        public DataSet AuthorImgSet(int userid)
        {
            myData.AddParameter("@userid", userid);
            
            string strsqlimg = "select Images from UserDetails where UserId = @userid";
            DataSet da = myData.ExecuteDataSet(strsqlimg);
            return da;
        }

    }
}
