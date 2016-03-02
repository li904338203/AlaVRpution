using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Moder
{
   public class mosers1
    {
       public mosers1(){}


       private int _Id;
       private string _ModerName;
       private int _UploaderId;
       private string _Recommend;
       private int _Follow;
       private string _ModerPath;
       private DateTime _UploaderTime;
       private bool _IsRecommend;
       private string _CommentNums;

       public int Id
       {
           set { _Id = value;}
           get{ return _Id;}
       }

       public string ModerName 
       {
           set { _ModerName = value; }
           get { return _ModerName; }
       }
       public int UploaderId 
       {
           set { _UploaderId = value; }
           get { return _UploaderId; }
       }
       public int Follow 
       {
           set { _Follow = value; }
           get { return _Follow; }
       }
       public string ModerPath 
       {
           set { _ModerPath = value; }
           get { return _ModerPath; }
       }
       public DateTime UploaderTime 
       {
           set { _UploaderTime = value; }
           get { return _UploaderTime; }
       }
       public bool IsRecommend {
           set { _IsRecommend = value; }
           get { return _IsRecommend;}
       }
       public string CommentNums {
           set { _Recommend =  value; }
           get{ return _CommentNums;}
       }
    }
}
