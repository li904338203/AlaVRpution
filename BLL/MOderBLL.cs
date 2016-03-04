using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace BLL
{
     public class MOderBLL
    {
         DAL.ModerDAL dal = new DAL.ModerDAL();
         public DataSet ModerSelect() {
             return dal.ModerSelect();
         }
         public DataSet AuthorNameSet(int userid) {
             return dal.AuthorNameSet(userid);
         }
         public DataSet AuthorImgSet(int userid)
         {
             return dal.AuthorImgSet(userid);
         }
    }
}
