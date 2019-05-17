using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace 文档管理系统2._0
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(local);Initial Catalog=用户信息;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from People where Name='" + Request.Cookies["username"].Value+"' and quanxian=1", conn);
            SqlDataReader read = cmd.ExecuteReader();
            read.Read();
            if (read.HasRows)
            {
                Label3.Text = "管理员";
            }
            else
            {
                Label3.Text = "普通用户";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                MessageBox.Show("请输入用户名");
            }
            else if (TextBox2.Text == "")
            {
                MessageBox.Show("请输入密码");
            }
            else if (TextBox3.Text == "")
            {
                MessageBox.Show("请确认密码");
            }
            else 
            {
                SqlConnection conn = new SqlConnection("Data Source=(local);Initial Catalog=用户信息;Integrated Security=True");
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from People where Name='" + TextBox1.Text + "'and Password='"+TextBox2.Text+"'", conn);
                SqlDataReader read = cmd.ExecuteReader();
                read.Read();
                if (read.HasRows&&TextBox2.Text==TextBox3.Text)
                {
                    MessageBox.Show("与原密码一致");
                }
                else
                {
                    read.Close();
                    SqlCommand coo= new SqlCommand("update People set Password='"+TextBox3.Text+ "'where Name='" + TextBox1.Text + "'",conn);
                    coo.ExecuteNonQuery();//执行增删改查
                    conn.Close();//关闭
                    conn.Dispose();//回收内存
                    MessageBox.Show("修改成功");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Label3.Text == "管理员")
            {
                Response.Write("<script>alert('您已经是管理员了')</script>");
            }
            else
            {

                Application.Add("shenqing", Request.Cookies["username"].Value);

             

                Response.Write("<script>alert('已发送申请')</script>");
            }
        }
        }
    }
