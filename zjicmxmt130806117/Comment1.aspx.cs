using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Comment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        this.SqlDataSource1.InsertParameters.Clear();
        SqlDataSource1.InsertParameters.Add("topic_name", this.TextBox1.Text);
        SqlDataSource1.InsertParameters.Add("comment", this.TextBox2.Text);
        SqlDataSource1.InsertParameters.Add("user_name", Session["UserName"].ToString());

        SqlDataSource1.Insert();
        Response.Write("<script language=javascript>alert('评论添加成功');</script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}