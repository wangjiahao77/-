using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;
using System.Data.SqlClient;


namespace 文档管理系统2._0
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        
        

        public List<string> namelist1 = new List<string>();
        public List<string> namelist2 = new List<string>();
        public List<string> namelist3 = new List<string>();
        public List<string> namelist4 = new List<string>();
        public List<string> namelist5 = new List<string>();
        public List<string> namelist6 = new List<string>();
        public List<string> namelist7 = new List<string>();
        public int item = 1;
        public string[] ok = new string[10];

        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                TreeNode node = new TreeNode("计算机");
                TreeNode hardware = new TreeNode("硬件");
                TreeNode software = new TreeNode("软件");
                TreeView1.Nodes.Add(node);
                node.ChildNodes.Add(hardware);
                node.ChildNodes.Add(software);
                string yingjian1 = @"C:\Users\11203\source\repos\文档管理系统2.0\文档管理系统2.0\计算机\硬件";
                string ruanjian1 = @"C:\Users\11203\source\repos\文档管理系统2.0\文档管理系统2.0\计算机\软件";
                yingjian(yingjian1, namelist6);
                ruanjian(ruanjian1, namelist7);
                void yingjian(string dir, List<string> list)
                {

                    DirectoryInfo d = new DirectoryInfo(dir);
                    FileInfo[] files = d.GetFiles();//文件
                    DirectoryInfo[] directs = d.GetDirectories();//文件夹
                    foreach (DirectoryInfo f in directs)
                    {
                        list.Add(f.Name);//添加文件名到列表中  
                    }
                }
                void ruanjian(string dir, List<string> list)
                {

                    DirectoryInfo d = new DirectoryInfo(dir);
                    FileInfo[] files = d.GetFiles();//文件
                    DirectoryInfo[] directs = d.GetDirectories();//文件夹
                    foreach (DirectoryInfo f in directs)
                    {
                        list.Add(f.Name);//添加文件名到列表中  
                    }
                }
                foreach (string i in namelist6)
                {
                    TreeNode k = new TreeNode(i);

                    hardware.ChildNodes.Add(k);
                }
                foreach (string i in namelist7)
                {
                    TreeNode k = new TreeNode(i);

                    software.ChildNodes.Add(k);
                }
            }
        
            }


        

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {

                if (TextBox2.Text!="")
                {
                    string savePath = Server.MapPath("~/计算机/" + TextBox2.Text + "/");

                    if (!System.IO.Directory.Exists(savePath))
                    {

                        System.IO.Directory.CreateDirectory(savePath);
                    }
                    savePath = savePath + "\\" + FileUpload1.FileName;
                    FileUpload1.SaveAs(savePath);

                    literal.Text = string.Format("<a href='计算机/" + TextBox2.Text + "/{0}'>计算机/" + TextBox2.Text + "/{0}</a>", FileUpload1.FileName);
                }
                else
                {
                    Response.Write("<script>alert('未指定上传至哪里')</script>");
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            literal.Text = "";
        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            item = 0;
            string msg = @"C:\Users\11203\source\repos\文档管理系统2.0\文档管理系统2.0\计算机\";
            string osg = this.TreeView1.SelectedNode.Value.ToString();
            string ksg = "";

            if(this.TreeView1.SelectedNode.Value == "计算机")
            {
                ksg = msg;
            }
            else if (this.TreeView1.SelectedNode.Value == "硬件" || this.TreeView1.SelectedNode.Value == "软件")

            {
                ksg = msg +osg;
            }
            else
            {
                ksg = msg+this.TreeView1.SelectedNode.Parent.Value.ToString()+@"\" + osg;
            }



                Directorname(ksg, namelist1);
                Directorsize(ksg, namelist2);
                Directortime(ksg, namelist3);
                Directorfullname(ksg, namelist4);
               urlconvertor(namelist4, namelist5);
            void Directorfullname(string dir, List<string> list)
            {
                DirectoryInfo d = new DirectoryInfo(dir);
                FileInfo[] files = d.GetFiles();//文件
                DirectoryInfo[] directs = d.GetDirectories();//文件夹
                foreach (FileInfo f in files)
                {
                    list.Add(f.FullName);//添加文件名到列表中  
                }
                //获取子文件夹内的文件列表，递归遍历  
                foreach (DirectoryInfo dd in directs)
                {
                    Directorname(dd.FullName, list);
                }
            }
             void urlconvertor(List<string>list, List<string> list1)
            {
                string tmpRootDir = Server.MapPath(System.Web.HttpContext.Current.Request.ApplicationPath);//获取程序根目录
                for(int i=0;i<list.Count;i++){
                    list1.Add(list[i].Replace(tmpRootDir, "")); //转换成相对路径
                    //imagesurl2 = imagesurl2.Replace(@"\", @"/");
                } 
            }
            void Directorname(string dir, List<string> list)
            {
                DirectoryInfo d = new DirectoryInfo(dir);
                FileInfo[] files = d.GetFiles();//文件
                DirectoryInfo[] directs = d.GetDirectories();//文件夹
                foreach (FileInfo f in files)
                {
                    list.Add(f.Name);//添加文件名到列表中  
                }
                //获取子文件夹内的文件列表，递归遍历  
                foreach (DirectoryInfo dd in directs)
                {
                    Directorname(dd.FullName, list);
                }
             }
            void Directortime(string dir, List<string> list)
            {
                DirectoryInfo d = new DirectoryInfo(dir);
                FileInfo[] files = d.GetFiles();//文件
                DirectoryInfo[] directs = d.GetDirectories();//文件夹
                foreach (FileInfo f in files)
                {
                    list.Add(f.LastWriteTime.ToString());//添加文件名到列表中  
                }
                //获取子文件夹内的文件列表，递归遍历  
                foreach (DirectoryInfo dd in directs)
                {
                    Directortime(dd.FullName, list);
                }

            }
            void Directorsize(string dir, List<string> list)
            {
                DirectoryInfo d = new DirectoryInfo(dir);
                FileInfo[] files = d.GetFiles();//文件
                DirectoryInfo[] directs = d.GetDirectories();//文件夹
                foreach (FileInfo f in files)
                {
                    list.Add((f.Length/1024.0).ToString()+"kb");//添加文件名到列表中  
                }
                //获取子文件夹内的文件列表，递归遍历  
                foreach (DirectoryInfo dd in directs)
                {
                    Directorsize(dd.FullName, list);
                }
            }


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(local);Initial Catalog=用户信息;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from People where Name='" + Request.Cookies["username"].Value + "' and quanxian=1", conn);
            SqlDataReader read = cmd.ExecuteReader();
            read.Read();
            if (read.HasRows)
            {
                string dizhi = @"C:\Users\11203\source\repos\文档管理系统2.0\文档管理系统2.0\计算机\软件\";
                string dizhi1 = dizhi + TextBox1.Text;
                if (Directory.Exists(dizhi1))
                {
                    Response.Write("<script>alert('文件已存在')</script>");
                }
                else
                {
                    Directory.CreateDirectory(dizhi1);
                    Response.Redirect("文档查看.aspx");
                }
             
            }
            else
            {
                Response.Write("<script>alert('权限不够')</script>");
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(local);Initial Catalog=用户信息;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from People where Name='" + Request.Cookies["username"].Value + "' and quanxian=1", conn);
            SqlDataReader read = cmd.ExecuteReader();
            read.Read();
            if (read.HasRows)
            {
                string dizhi = @"C:\Users\11203\source\repos\文档管理系统2.0\文档管理系统2.0\计算机\软件\";
                string dizhi1 = dizhi + TextBox1.Text;
                if (Directory.Exists(dizhi1))
                {
                    Response.Write("<script>alert('文件已存在')</script>");
                }
                else
                {
                    Directory.CreateDirectory(dizhi1);
                    Response.Redirect("文档查看.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('权限不够')</script>");
            }

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(local);Initial Catalog=用户信息;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from People where Name='" + Request.Cookies["username"].Value + "' and quanxian=1", conn);
            SqlDataReader read = cmd.ExecuteReader();
            read.Read();
            if (read.HasRows)
            {
                string path = @"C:\Users\11203\source\repos\文档管理系统2.0\文档管理系统2.0\计算机\硬件\";
                string path1 = path + TextBox3.Text;
                if (Directory.Exists(path1))
                {
                    Directory.Delete(path1);
                    
                }
                else
                {
                    path1 = @"C:\Users\11203\source\repos\文档管理系统2.0\文档管理系统2.0\计算机\软件\" + TextBox3.Text;
                    if (Directory.Exists(path1))
                    {
                        Directory.Delete(path1);
                    }
                }



            }
            else
            {
                Response.Write("<script>alert('权限不够')</script>");
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(local);Initial Catalog=用户信息;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from People where Name='" + Request.Cookies["username"].Value + "' and quanxian=1", conn);
            SqlDataReader read = cmd.ExecuteReader();
            read.Read();
            if (read.HasRows)
            {
                FileInfo fi = new FileInfo(TextBox4.Text);
                string i = fi.FullName;
                if (File.Exists(i))
                {
                    File.Delete(i);
                }
                else
                {
                    Response.Write("<script>alert('文件不存在')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('权限不够')</script>");
            }
         }
    }
}
        
  

    
