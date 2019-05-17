using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace 文档管理系统2._0
{
    public partial class 登陆页面 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text == "" || TextBox4.Text == "")
            {
                MessageBox.Show("账户或密码为空");
            }
            else
            {
                SqlConnection conn = new SqlConnection("Data Source=(local);Initial Catalog=用户信息;Integrated Security=True");
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from People where Name='" + TextBox3.Text + "' and Password='" + TextBox4.Text+"'" ,  conn);
                
              SqlDataReader read = cmd.ExecuteReader();
                read.Read();
                MessageBox.Show("正在登陆");
                if (read.HasRows)
                {
                    MessageBox.Show("登陆成功");
                    string uname = this.TextBox3.Text;
                    Response.Cookies["username"].Value = uname;
                    Response.Redirect("初始页面.aspx");
                }
                else
                {
                    MessageBox.Show("密码错误或者账户不存在");
                }
            }
        }
    }
}