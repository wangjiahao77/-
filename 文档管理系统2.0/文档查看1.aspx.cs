using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 文档管理系统2._0
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TreeNode node = new TreeNode("计算机");
                TreeNode hardware = new TreeNode("硬件");
                TreeNode software = new TreeNode("软件");
                TreeNode cpu = new TreeNode("CPU");
                TreeNode harddisk = new TreeNode("硬件");
                TreeNode office = new TreeNode("办公软件office");
                TreeNode ps = new TreeNode("PhotoShop");
                TreeView1.Nodes.Add(node);
                node.ChildNodes.Add(hardware);
                node.ChildNodes.Add(software);
                TreeView1.Nodes.Add(cpu);
                cpu.ChildNodes.Add(harddisk);
                TreeView1.Nodes.Add(office);
                office.ChildNodes.Add(ps);



            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                //指定上传文件在服务器上的保存路径
                string savePath = Server.MapPath("~/upload/");
                //检查服务器上是否存在这个物理路径，如果不存在则创建
                if (!System.IO.Directory.Exists(savePath))
                {
                    //需要注意的是，需要对这个物理路径有足够的权限，否则会报错
                    //另外，这个路径应该是在网站之下，而将网站部署在C盘却把文件保存在D盘
                    System.IO.Directory.CreateDirectory(savePath);
                }
                savePath = savePath + "\\" + FileUpload1.FileName;
                FileUpload1.SaveAs(savePath);//保存文件
                //不过需要注意的是，在客户端访问却需要指定的是URL地址，而不是服务器上的物理地址
                literal.Text = string.Format("<a href='upload/{0}'>upload{0}</a>", FileUpload1.FileName);



            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            literal.Text = "";
        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            Label1.Text = this.TreeView1.SelectedNode.Value;
        }
    }
}