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
        SqlDataSource1.InsertParameters.Add("user_nch",this.TextBox1.Text);
        SqlDataSource1.InsertParameters.Add("user_name", this.TextBox2.Text);
        SqlDataSource1.InsertParameters.Add("user_psw", this.TextBox3.Text);
        SqlDataSource1.InsertParameters.Add("user_mail", this.TextBox4.Text);
        SqlDataSource1.InsertParameters.Add("user_phone", this.TextBox5.Text);
        if (DropDownList1.SelectedValue == "男")
            SqlDataSource1.InsertParameters.Add("user_sex", "男");
        else
            SqlDataSource1.InsertParameters.Add("user_sex", "女");

        SqlDataSource1.Insert();
        Response.Write("<script language=javascript>alert('会员添加成功');</script>");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}