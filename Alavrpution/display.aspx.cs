using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Alavrpution
{
    public partial class display : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["userName"] != null)
            {
                //从cookie中获取到Username
                string str = Request.Cookies["userName"].Value;
                //

                this.lgag.Style.Add("display", "none");
                this.lg.Style.Add("display", "block");
                string moderid =   Request.QueryString["ModerId"];
                int Intmoderid = Convert.ToInt32(moderid);
                if (!IsPostBack) { 

                    bindcomment(Intmoderid);
                   }
                BLL.MOderBLL a = new BLL.MOderBLL();
                DataSet da = a.ModerSelectById(Intmoderid);
               
         
            DataTable dt = da.Tables[0];
            int row = dt.Rows.Count;
    
            //this.ModerImg.Src =dt.Rows[5].ToString();
            foreach (DataRow dr in dt.Rows)
            {
                for (int i = 0; i < dt.Columns.Count; i++)
                {
                    if (i==1)
	                {
                        this.name.InnerText = dr[i].ToString();
	                }
                    if (i==8)
                    {
                        this.shoucang.InnerText = dr[i].ToString();
                    }
                    if (i==4)
                    {
                        this.dianji.InnerText = dr[i].ToString();
                    }
                    if (i==10)
                    {
                        this.pinglunnums.InnerText = "评论： " + dr[i].ToString();
                    }
                    if (i==12)
                    {
                        this.moderimg.Src = dr[i].ToString();
                        this.imgModer.Src = dr[i].ToString();
                    }
                    if (i==11)
                    {
                        this.moderName.InnerText = dr[i].ToString();
                    }
                }
            }
            BLL.UserDateilsBLL userdateils = new BLL.UserDateilsBLL();
             DataSet ds =  userdateils.SelectUserDateils(Intmoderid);

             DataTable dtable = ds.Tables[0];
             int row1 = dtable.Rows.Count;
             foreach (DataRow dr in dtable.Rows)
             {
                 for (int i = 0; i < dtable.Columns.Count; i++)
                 {
                     if (i==1)
                     {
                         this.erweima1.Src = "  http://qr.liantu.com/api.php?text=http://localhost:5565/display.aspx?ModerId=" + dr[i].ToString();
                     }
                     if (i==2)
                     {
                         this.usernaem1.InnerText = dr[i].ToString();
                         this.mian.InnerText = "alavr.com/" + dr[i].ToString();
                        
                     }
                     if (i==3)
                     {
                         this.useremil.InnerText = dr[i].ToString();
                     }
                     if (i==4)
                     {
                         this.qq.InnerText = dr[i].ToString();
                     }
                     if (i==5)
                     {
                         this.city.InnerText = dr[i].ToString();
                     }
                     if (i==6)
                     {
                         this.UserImg.Src = dr[i].ToString();
                     }
                     if (i==7)
                     {
                         this.iphone.InnerText = dr[i].ToString();
                     }
                     if (i==8)
                     {
                         this.jianjie.InnerText = dr[i].ToString();
                     }
                 }
             }

               
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
                    cokie.Value = moder.UserName;
                    cokie.Expires = DateTime.MaxValue;
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

            if (moder.UserEmil == "" || moder.UserName == "" || moder.PassWord == "")
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
                            //创建cookie
                            HttpCookie cokie = new HttpCookie("userName");
                            cokie.Value = moder.UserName;
                            cokie.Expires = DateTime.MaxValue;
                            Response.Cookies.Add(cokie);

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
        public void bindcomment(int moderid) {
            BLL.CommentBLL a = new BLL.CommentBLL();
            DataSet da =  a.SelectComment(moderid);
            this.Commet.DataSource = da;
            this.Commet.DataBind();
        
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            BLL.UserBLL b = new BLL.UserBLL();
            Moder.Comment com = new Moder.Comment();
            string Username = Request.Cookies["userName"].Value;
            DataTable dt = b.SelectUserName1(Username);
            foreach (DataRow dr in dt.Rows){
               com.CommentUser=Convert.ToInt32( dr[0].ToString());
            }

            com.CommentContent = this.comneirong.InnerText.ToString();
            com.CommentTime = DateTime.Now;
            com.ModerId = Convert.ToInt32(Request.QueryString["ModerId"]);

            BLL.CommentBLL c = new BLL.CommentBLL();
            if (com.CommentContent==""||com.CommentContent==null)
            {
                  DBUtility.ShowMessagae em = new DBUtility.ShowMessagae();
                em.ShowLocation("请输入你的意见后点击提交！！");
            }else
            { 
            bool boo = c.InserComment(com);
            if (boo==true)
            {
                DBUtility.ShowMessagae em = new DBUtility.ShowMessagae();
                em.ShowLocation("添加成功！！");
            }
            else
            {
                DBUtility.ShowMessagae em = new DBUtility.ShowMessagae();
                em.ShowLocation("服务器繁忙，请稍后重试！！");
            }
          }
        }
    }
}