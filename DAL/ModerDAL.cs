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
            string strsql = "SELECT  ModerId  ,ModerName ,UploaderId,Recommend,Follow,ModerPath ,UploaderTime  ,IsRecommend  ,CommentNums FROM Moder";
            DataSet da = myData.ExecuteDataSet(strsql);
           
          
             return da;
        }

    }
}
