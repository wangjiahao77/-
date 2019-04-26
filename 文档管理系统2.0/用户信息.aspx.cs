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

            }
        }
    }
}