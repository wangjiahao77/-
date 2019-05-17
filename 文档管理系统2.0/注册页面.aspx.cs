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
    public partial class 注册页面 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Regex reg = new Regex(@"[\u4e00-\u9fa5]");
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Response.Write("<script>alert('账号或密码为空')</script>");
            }
            else if (reg.IsMatch(TextBox1.Text))
            {
                Response.Write("<script>alert('用户名不能带汉字')</script>");
            }
             else if (TextBox6.Text.Trim().ToUpper() != Session["CheckCode"].ToString().ToUpper())
                {
                Response.Write("<script>alert('验证码错误')</script>");
            }
           else
            {
                SqlConnection conn = new SqlConnection("Data Source=(local);Initial Catalog=用户信息;Integrated Security=True");
                conn.Open();
    
                SqlCommand cmd = new SqlCommand("select * from People where Name='" + TextBox1.Text + "'", conn);
                SqlDataReader read = cmd.ExecuteReader();
                read.Read();
                
                if (read.HasRows)
                {
                    Response.Write("<script>alert('注册失败，此用户名已被使用')</script>");

                }
                else if (TextBox5.Text != TextBox2.Text)
                {
                    Response.Write("<script>alert('密码不一致')</script>");
                }
                else{
                    string uname = this.TextBox1.Text;
                    Response.Cookies["username"].Value = uname;
                    read.Close();
                   
                    SqlCommand cdd= new SqlCommand("insert into People(Name,Password) values ('" + TextBox1.Text + "','" + TextBox2.Text + "')", conn);
                    cdd.ExecuteNonQuery();//执行增删改查
                    conn.Close();//关闭
                    conn.Dispose();//回收内存
                    Response.Write("<script>alert('注册成功')</script>");
                    Response.Redirect("初始页面.aspx");


                }
            }

        }

        
    }
}