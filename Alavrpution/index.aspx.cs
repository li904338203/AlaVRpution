﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Alavrpution
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login1_Click(object sender, EventArgs e)
        {
            //DBUtility.ShowMessagae em = new DBUtility.ShowMessagae();
            //em.Show("请检查用户名和密码是否正确！！");
            Moder.User user = new Moder.User();
            user.PassWord = "123";
            user.UserName = "321";
            string name = this.username.Value;
            string pwd = this.password.Value;


        }
        public string login(string name, string pwd)
        {
            BLL.UserBLL a = new BLL.UserBLL();
            Moder.User moder = new Moder.User();
            moder.UserName = name;
            moder.PassWord = pwd;

            a.Login(moder);
            return "";
           
        }
    }
   
}