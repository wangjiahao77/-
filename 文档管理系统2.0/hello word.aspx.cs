using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace 文档管理系统2._0
{
    public partial class hello_word : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("注册页面.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Regex reg = new Regex(@"[\u4e00-\u9fa5]");
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Response.Write("<script>alert('账号或密码为空')</script>");
            }
            else if (reg.IsMatch(TextBox1.Text))
            {
                Response.Write("<script>alert('用户名不能为汉字')</script>");
            }
            else if(TextBox3.Text.Trim().ToUpper()!= Session["CheckCode"].ToString().ToUpper())
            {
                Response.Write("<script>alert('验证码错误')</script>");
            }
            else
            {
                SqlConnection conn = new SqlConnection("Data Source=(local);Initial Catalog=用户信息;Integrated Security=True");
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from People where Name='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", conn);
                SqlDataReader read = cmd.ExecuteReader();
                read.Read();
                
                if (read.HasRows)
                {
                    Response.Write("<script>alert('登陆成功')</script>");
                    string uname = this.TextBox1.Text;
                    Response.Cookies["username"].Value = uname;
                    if (uname == "wangjiahao")
                    {
                        Response.Redirect("guanli.aspx");
                    }
                    else
                    {
                        Response.Redirect("初始页面.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('密码错误或账号不存在')</script>");
                }
            }
        }
    }
}