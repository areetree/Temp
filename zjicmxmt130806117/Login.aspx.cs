using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_register(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

    protected void Button_login(object sender, EventArgs e)
    {
        SqlConnection sqlCon = new SqlConnection();                                                                                               //创建 SqlConnection 对象，并设置连接字符串
        sqlCon.ConnectionString = "Data Source=.\\SQLEXPRESS;Database=Date;Uid=sa;Pwd=good6565";
        sqlCon.Open();                                                                                                                            //打开连接
        SqlCommand sqlCom = new SqlCommand();                                                                                                     //创建 SqlCommand 对象
        sqlCom.Connection = sqlCon; 


        sqlCom.CommandText = "select * from Table_user where user_name= + '" + TextBox1.Text + "' and user_psw= '" + TextBox2.Text + "'";         //根据 where条件查询信息

        SqlDataReader sqlDr = sqlCom.ExecuteReader();                                                                                             //执行SQL，结果返回到 SqlDataReader 对象


        if (sqlDr.HasRows)                                                                                                                        //判断是否有返回结果
        {
            sqlDr.Read();
            if (CheckBox1.Checked && Convert.ToInt32(sqlDr.GetValue(0)) == 1)                                                                     //CheckBox控件已勾选 并且 admin特定id=1
            {
                Session["UserName"] = TextBox1.Text.Trim();                                                                                       //Session["UserName"]保存TextBox控件字段
                Response.Write("<script language=javascript>alert('管理员登陆成功'); window.location.href='Manage.aspx';</script>");              //弹窗提示
            }
            else if (CheckBox1.Checked && Convert.ToInt32(sqlDr.GetValue(0)) != 1)                                                                 //CheckBox控件已勾选 并且 admin特定id！=1
            {
                Session["UserName"] = "";                                                                                                          //Session["UserName"]为空
                Response.Write("<script language=javascript>alert('场景不符');</script>");                                                         //弹窗提示
            }
            else if (!CheckBox1.Checked && Convert.ToInt32(sqlDr.GetValue(0)) != 1)                                                                //CheckBox控件未勾选 并且 admin特定id！=1
            {
                Session["UserName"] = TextBox1.Text.Trim();                                                                                         //Session["UserName"]保存TextBox控件字段
                Response.Write("<script language=javascript>alert('会员登陆成功'); window.location.href='Home.aspx';</script>");                    //弹窗提示
            }
            else if (!CheckBox1.Checked && Convert.ToInt32(sqlDr.GetValue(0)) == 1)                                                                  //CheckBox控件未勾选 并且 admin特定id=1
            {
                Session["UserName"] = "";                                                                                                            //Session["UserName"]为空
                Response.Write("<script language=javascript>alert('场景不符');</script>");                                                           //弹窗提示
            }
        }

             else
             {
            Session["UserName"] = "";                                                                                                                 //Session["UserName"]为空
            Response.Write("<script language=javascript>alert('登陆失败');</script>");                                                                //弹窗提示
        }



        sqlDr.Close();                                                                                                                                 //关闭 SqlDataReader 对象
        sqlCon.Close();                                                                                                                                 //关闭 SqlConnection 对象

    }

}