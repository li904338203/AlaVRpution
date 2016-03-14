using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Moder
{
   public  class Collection
    {
       public Collection() { }

       private int _Id;
       private int _userid;
       private int _moderid;

       public int Id
       {
           set { _Id = value; }
           get{ return _Id;}
       }
       public int UserId
       {
           set { _userid = value; }
           get { return _userid;}
       }
       public int ModerId
       {
           set { _moderid = value; }
           get { return _moderid; }
       }
    }
}
