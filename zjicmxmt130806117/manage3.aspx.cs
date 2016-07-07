using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        this.SqlDataSource1.InsertParameters.Clear();
        SqlDataSource1.InsertParameters.Add("topic_id", this.TextBox1.Text);
        SqlDataSource1.InsertParameters.Add("topic_name", this.TextBox2.Text);
        SqlDataSource1.Insert();
        Response.Write("<script language=javascript>alert('话题添加成功');</script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}