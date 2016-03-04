using System;
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
            string strsql = "SELECT  ModerId  ,ModerName ,UploaderId,Recommend,Follow,ModerPath ,UploaderTime  ,IsRecommend  ,dianzan,pinglun,CommentNums FROM Moder";
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
