using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Alavrpution
{
    public partial class centers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["userName"] != null)
            {
                
            }
            //根据username获取到userid
            string username = Request.Cookies["userName"].Value;
            BLL.UserBLL b = new BLL.UserBLL();
            DataTable da = b.SelectUserName1(username);
            Moder.User user = new Moder.User();
            foreach (DataRow dr in da.Rows)
            {
                user.Id = Convert.ToInt32(dr[0].ToString());
            }

            //根据uerid获取信息

            BindCollection(user.Id);

            BLL.MOderBLL m = new BLL.MOderBLL();
            DataSet ma = m.AuthorNameSet(user.Id);
            DataTable dt = ma.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                string username1 = dr[0].ToString();
                this.username.InnerText = username1;
            }
            BLL.MOderBLL m1 = new BLL.MOderBLL();
            DataSet ma1 = m.AuthorImgSet(user.Id);
            DataTable dt1 = ma1.Tables[0];
            foreach (DataRow dr1 in dt1.Rows)
            {
                string img = dr1[0].ToString();
                this.userimg.Src =img;
            }
            BLL.UserDateilsBLL userdateils = new BLL.UserDateilsBLL();
            DataSet ds = userdateils.SelectUserDateilsByuserid(user.Id);

            DataTable dtable = ds.Tables[0];
            int row1 = dtable.Rows.Count;
            foreach (DataRow dr in dtable.Rows)
            {
                for (int i = 0; i < dtable.Columns.Count; i++)
                {
                   
                    if (i == 2)
                    {
                        this.Label1.InnerText = dr[i].ToString();
                        this.mian.Value =  dr[i].ToString();

                    }
                    if (i == 3)
                    {
                        this.useremil.Value = dr[i].ToString();
                    }
                    if (i == 4)
                    {
                        this.qq1.Value = dr[i].ToString();
                    }
                    if (i == 5)
                    {
                        this.city.Value = dr[i].ToString();
                    }
                    if (i == 6)
                    {
                        this.Img1.Src = dr[i].ToString();
                    }
                    if (i == 7)
                    {
                        this.iphone1.Value = dr[i].ToString();
                    }
                    if (i == 8)
                    {
                        this.jianjie.InnerText = dr[i].ToString();
                    }
                }
            }
            


        }
        protected void zhuxiao_Click(object sender, EventArgs e)
        {
            Response.Cookies["userName"].Expires = DateTime.Now.AddMilliseconds(1);
            Response.Redirect("index.aspx");
            //DBUtility.ShowMessagae em = new DBUtility.ShowMessagae();
            ////em.Show("请检查用户名和密码是否正确！！");
            //em.RedirectPage("index.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = Request.Cookies["userName"].Value;
            BLL.UserBLL b = new BLL.UserBLL();
            DataTable da = b.SelectUserName1(username);
            Moder.User user = new Moder.User();
            foreach (DataRow dr in da.Rows)
            {
                user.Id = Convert.ToInt32(dr[0].ToString());
            }
            BindCollection(user.Id);

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string username = Request.Cookies["userName"].Value;
            BLL.UserBLL b = new BLL.UserBLL();
            DataTable da = b.SelectUserName1(username);
            Moder.User user = new Moder.User();
            foreach (DataRow dr in da.Rows)
            {
                user.Id = Convert.ToInt32(dr[0].ToString());
            }
            
            BindStudent(user.Id);

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            string username = Request.Cookies["userName"].Value;
            BLL.UserBLL b = new BLL.UserBLL();
            DataTable da = b.SelectUserName1(username);
            Moder.User user = new Moder.User();
            foreach (DataRow dr in da.Rows)
            {
                user.Id = Convert.ToInt32(dr[0].ToString());
            }

            //string mian = this.mian.Value;
            string userenmil = this.useremil.Value;
            string qq = this.qq1.Value;
              string city=  this.city.Value;
              //string img=  this.Img1.Src ;
             string iphone=   this.iphone1.Value;
              string jianjie =  this.jianjie.InnerText;
              BLL.UserBLL bl = new BLL.UserBLL();
              bl.updateUser(user.Id, city, iphone, jianjie, userenmil, qq);




        }
        private void BindStudent(int userId)
        {
            BLL.CollectionBLL c = new BLL.CollectionBLL();
            DataSet dd = c.SelectCollectionModer(userId);

            this.Modertuiji.DataSource = dd;
            this.Modertuiji.DataBind();
        }
        private void BindCollection(int Updateid)
        {
            BLL.CollectionBLL c = new BLL.CollectionBLL();
            DataSet dd = c.SelectCollectionById(Updateid);

            this.Modertuiji.DataSource = dd;
            this.Modertuiji.DataBind();
        }
    }
}