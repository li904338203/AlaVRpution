using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class CommentBLL
    {
        DAL.CommentDAL dal = new DAL.CommentDAL();
        public DataSet SelectComment(int ModerId)
        {
            return dal.SelectComment(ModerId);
        }
        public bool InserComment(Moder.Comment com)
        {
            return dal.InserComment(com);
        }
    }
}
