using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace 文档管理系统2._0
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public List<string> namelist1 = new List<string>();
        public List<string> namelist2 = new List<string>();
        public List<string> namelist3 = new List<string>();
        public int temp;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string s = @"C:\Users\11203\source\repos\文档管理系统2.0\文档管理系统2.0\计算机\";
            if (TextBox1.Text != "")
            {
                sousuo(s, namelist1, namelist2);
                zhuanhuan(namelist2, namelist3);
            }


            void sousuo(string str, List<string> list, List<string> list1)
            {

                DirectoryInfo d = new DirectoryInfo(str);

                FileInfo[] filedir = d.GetFiles("*" + TextBox1.Text + "*" + "." + "*", SearchOption.AllDirectories);
                foreach (FileInfo f in filedir)
                {
                    list.Add(f.Name);
                }
                foreach (FileInfo f in filedir)
                {
                    list1.Add(f.FullName);
                }
            }
            void zhuanhuan(List<string> list, List<string> list1)
            {
                string tmpRootDir = Server.MapPath(System.Web.HttpContext.Current.Request.ApplicationPath);//获取程序根目录
                for (int i = 0; i < list.Count; i++)
                {
                    list1.Add(list[i].Replace(tmpRootDir, "")); //转换成相对路径
                    //imagesurl2 = imagesurl2.Replace(@"\", @"/");
                }


            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string s = @"C:\Users\11203\source\repos\文档管理系统2.0\文档管理系统2.0\计算机\";
            if (TextBox1.Text != null)
            {
                sousuo(s, namelist1,namelist2);
                zhuanhuan(namelist2, namelist3);
            }


            void sousuo(string str, List<string> list, List<string> list1)
            {

                DirectoryInfo d = new DirectoryInfo(str);

                FileInfo[] filedir = d.GetFiles("*." + TextBox1.Text , SearchOption.AllDirectories);
                foreach (FileInfo f in filedir)
                {
                    list.Add(f.Name);
                }
                foreach(FileInfo f in filedir)
                {
                    list1.Add(f.FullName);
                }
            }
            void zhuanhuan(List<string> list, List<string> list1)
            {
                string tmpRootDir = Server.MapPath(System.Web.HttpContext.Current.Request.ApplicationPath);//获取程序根目录
                for (int i = 0; i < list.Count; i++)
                {
                    list1.Add(list[i].Replace(tmpRootDir, "")); //转换成相对路径
                    //imagesurl2 = imagesurl2.Replace(@"\", @"/");
                }


            }
        }
    }
}