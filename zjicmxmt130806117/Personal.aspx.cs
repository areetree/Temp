using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlTypes;
using System.Data.Common;
using System.Data;

public partial class Personal : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection sqlCon = new SqlConnection("Data Source=.\\SQLEXPRESS;Database=Date;Uid=sa;Pwd=good6565");     //创建 SqlConnection 对象，并设置连接字符串
        sqlCon.Open();                                                                                               //打开连接
        SqlCommand sqlCom = new SqlCommand();                                                                        //创建 SqlCommand 对象
        sqlCom.Connection = sqlCon;
        sqlCom.CommandText = "Select * From Table_user Where user_psw=+'" + Session["UserName"].ToString() + "'";    //根据 传递进来的 Session["UserName"]用户名查询信息

        SqlDataReader sqlDr = sqlCom.ExecuteReader();                                                                //执行SQL，结果返回到 SqlDataReader 对象
        if (sqlDr.Read())
        {
            Label1.Text = sqlDr.GetString(3);                                                                        //读取用户各字段信息
            Label2.Text = sqlDr.GetString(1);
            Label3.Text = sqlDr.GetString(4);
            Label4.Text = sqlDr.GetString(5);
            Label5.Text = sqlDr.GetString(6);
            sqlDr.Close();                                                                                           //关闭 SqlDataReader 对象
            sqlCon.Close();                                                                                          //关闭 SqlConnection 对象
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sqlCon = new SqlConnection();
        sqlCon.ConnectionString = "Data Source=.\\SQLEXPRESS;Database=Date;Uid=sa;Pwd=good6565";
        sqlCon.Open();
        SqlCommand sqlCom = new SqlCommand();
        sqlCom.Connection = sqlCon;
        sqlCom.CommandText = "update Table_user set user_psw='" + newpsw.Text.ToString() + "' where user_name=  '" + Session["UserName"].ToString() + "'";
        int sqlDa = sqlCom.ExecuteNonQuery();
        if (sqlDa != 0)
        {
            Response.Write("<script language=javascript>alert('修改成功'); </script>");
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void TextBox_TextChanged(object sender, EventArgs e)
    {

    }
}