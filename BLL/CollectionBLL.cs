using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class CollectionBLL
    {
        DAL.CollectionDAL dal = new DAL.CollectionDAL();
        public DataSet SelectCollectionModer(int userid) 
        {
            return dal.SelectCollectionModer(userid);
        }
        public DataSet SelectCollectionById(int uploaderId)
        {
            return dal.SelectCollectionById( uploaderId);
        }
    }
}
