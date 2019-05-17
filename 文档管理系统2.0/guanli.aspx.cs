using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace 文档管理系统2._0
{
    public partial class guanli : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Application.Get("shenqing")!= null)
            {
                Label1.Text += Application.Get("shenqing");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(local);Initial Catalog=用户信息;Integrated Security=True");
            conn.Open();
            SqlCommand cdd = new SqlCommand("Update People set quanxian=1 where Name='"+TextBox1.Text +"'", conn);
            cdd.ExecuteNonQuery();//执行增删改查
            conn.Close();//关闭
            conn.Dispose();//回收内存
            Application.RemoveAll();

        }
    }
}