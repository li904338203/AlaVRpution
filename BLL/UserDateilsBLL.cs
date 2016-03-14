using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public  class UserDateilsBLL
    {
        DAL.UserDateilsDAL dal = new DAL.UserDateilsDAL();
        public DataSet SelectUserDateils(int ModerId) 
        {
            return dal.SelectUserDateils(ModerId);
        }
        public DataSet SelectUserDateilsByuserid(int userid) {

            return dal.SelectUserDateilsByuserid(userid);
        }
    }
}
