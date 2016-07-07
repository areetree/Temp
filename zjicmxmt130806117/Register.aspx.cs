using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    SqlConnection sqlCon = new SqlConnection("Data Source=.\\SQLEXPRESS;Database=Date;Uid=sa;Pwd=good6565");
    static DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
     }

    protected void Button_submit(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (boy.Checked)
            {
                Session["Sex"] = "男";
            }
            else {
                Session["Sex"] = "女";
            }
            Session["UserName"] = UserName.Text.Trim();
            Session["UserPsw"] = UserPsw.Text.Trim();
            Session["UserMail"] = UserMail.Text.Trim();
            Session["UserPhone"] = UserPhone.Text.Trim();


            string username = UserName.Text.Trim();
            string password = UserPsw.Text.Trim();
            string usernch = UserG.Text.Trim();
            string mail = UserMail.Text.Trim();
            string phone = UserPhone.Text.Trim();

            sqlCon.Open();
            SqlCommand sqlCom = new SqlCommand();
            sqlCom.Connection = sqlCon;
            sqlCom.CommandText = "insert into Table_user(user_name,user_psw,user_nch,user_mail,user_phone,user_sex)" + " values('" + username + "','" + password + "','"+ usernch + "','" +mail + "','" + phone + "','" + Session["Sex"].ToString() + "')";
            int sqlDr = sqlCom.ExecuteNonQuery();
            if (sqlDr != 0)
            {
                Response.Write("<script language=javascript>alert('注册成功'); window.location.href='Login.aspx';</script>");
            }
            else
            {
                Response.Write("<script language=javascript>alert('注册失败'); window.location.href='Register.aspx';</script>");
            }
            sqlCon.Close();
        }
    }

    protected void Button_reset(object sender, EventArgs e)
    {
        UserG.Text = "";
        UserName.Text = "";
        UserPsw.Text = "";
        ReUserPsw.Text = "";
        UserMail.Text = "";
        UserPhone.Text = "";
    }

    protected void UserG_TextChanged(object sender, EventArgs e)
    {

    }

    protected void UserName_TextChanged(object sender, EventArgs e)
    {

    }

    protected void UserPsw_TextChanged(object sender, EventArgs e)
    {

    }

    protected void ReUserPsw_TextChanged(object sender, EventArgs e)
    {

    }

    protected void UserMail_TextChanged(object sender, EventArgs e)
    {

    }

    protected void UserPhone_TextChanged(object sender, EventArgs e)
    {

    }

    protected void boy_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void gril_CheckedChanged(object sender, EventArgs e)
    {

    }
}