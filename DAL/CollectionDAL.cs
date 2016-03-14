using DBUtility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAL
{
    public  class CollectionDAL
    {
        public DataBase myData = DBHelper.CreateData("mySql");

        //收藏
        public DataSet SelectCollectionModer(int userid){
             myData.AddParameter("@moderid",userid);
             string strsql = "select Collection.ModerId,Moder.ModerName ,Moder.UploaderId,Moder.Recommend,Moder.Follow,Moder.ModerPath ,Moder.UploaderTime  ,Moder.IsRecommend  , Moder.dianzan,Moder.pinglun,Moder.CommentNums,dbo.[User].UserName,UserDetails.Images from Collection left join Moder on Collection.ModerId = Moder.ModerId left join UserDetails on Moder.UploaderId=UserDetails.UserId left join [User] on UserDetails.UserId = [User].UserID where Collection.UserId = @moderid";
             DataSet da = myData.ExecuteDataSet(strsql);
             return da;

        }
        public DataSet SelectCollectionById(int uploaderId)
        {
            myData.AddParameter("@UploaderId", uploaderId);
            string strsql = "select Moder.ModerId  ,Moder.ModerName ,Moder.UploaderId,Moder.Recommend,Moder.Follow,Moder.ModerPath ,Moder.UploaderTime  ,Moder.IsRecommend  , Moder.dianzan,Moder.pinglun,Moder.CommentNums,dbo.[User].UserName,UserDetails.Images from Moder left join [User] on Moder.UploaderId=[User].UserID  left join UserDetails on  [User].UserID=UserDetails.UserId where Moder.UploaderId = @UploaderId";
            DataSet da = myData.ExecuteDataSet(strsql);
            return da;
        }
           }
}
