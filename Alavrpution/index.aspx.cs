using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Alavrpution
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["userName"] != null)
            {
                //从cookie中获取到Username
                string str = Request.Cookies["userName"].Value;

                this.lgag.Style.Add("display", "none");
                this.lg.Style.Add("display", "block");
                
            }
        }
        protected void Login1_Click(object sender, EventArgs e)
        {
            //DBUtility.ShowMessagae em = new DBUtility.ShowMessagae();
            //em.Show("请检查用户名和密码是否正确！！");
            BLL.UserBLL a = new BLL.UserBLL();
            Moder.User moder = new Moder.User();
            moder.UserName = this.username.Value;
            moder.PassWord = this.password.Value;
           

            if (moder.UserName == "" || moder.PassWord == "")
            {
                DBUtility.ShowMessagae em = new DBUtility.ShowMessagae();
                em.Show("用户名或密码不能为空！！");
            }
            else
            {
                bool b = a.Login(moder);
                if (b == true)
                {
                    DBUtility.ShowMessagae em = new DBUtility.ShowMessagae();
                    em.ShowLocation("登陆成功！！");
                    //创建cookie
                    HttpCookie cokie = new HttpCookie("userName");
                    cokie.Value=moder.UserName;
                    cokie.Expires=DateTime.MaxValue; 
                    Response.Cookies.Add(cokie);
                }
                else
                {
                    DBUtility.ShowMessagae em = new DBUtility.ShowMessagae();
                    em.Show("请检查用户名和密码是否正确！！");
                }
            }
           


        }

        protected void Register_Click(object sender, EventArgs e)
        {
            BLL.UserBLL a = new BLL.UserBLL();
            Moder.User moder = new Moder.User();
            moder.UserEmil = this.emil.Value;
            moder.UserName = this.uname.Value;
            moder.PassWord = this.pword.Value;

            if (moder.UserEmil == "" || moder.UserName == "" || moder.PassWord=="")
            {
                DBUtility.ShowMessagae em = new DBUtility.ShowMessagae();
                em.Show("注册信息不够完善！！");
            }
            else
            {
                Regex regemail = new Regex(@"^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$");
                if (!regemail.IsMatch(moder.UserEmil))
                {
                    //匹配失败
                    DBUtility.ShowMessagae em = new DBUtility.ShowMessagae();
                    em.Show("请填写正确的Email地址！！");
                }
                else
                {
                    bool d = a.SelectUserName(moder);
                    if (d == true)
                    {
                        DBUtility.ShowMessagae em = new DBUtility.ShowMessagae();
                        em.Show("用户名已存在！！");
                    }
                    else
                    {

                        bool b = a.Register(moder);
                        if (b == true)
                        {
                            DBUtility.ShowMessagae em = new DBUtility.ShowMessagae();
                            em.ShowLocation("注册成功！！");

                        }
                        else
                        {
                            DBUtility.ShowMessagae em = new DBUtility.ShowMessagae();
                            em.Show("服务器繁忙，请稍后重试！！");
                        }
                    }
                }
            } 
        }
        protected void zhuxiao_Click(object sender, EventArgs e)
        {
            Response.Cookies["userName"].Expires = DateTime.Now.AddMilliseconds(1);
            Response.Redirect(Request.Url.ToString()); 
        }
    } 
}