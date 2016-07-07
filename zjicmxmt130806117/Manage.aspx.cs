using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frame : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Write("<script language=javascript>alert('请先登陆'); window.location.href='Login.aspx';</script>");
            // Response.Redirect("Login.aspx");
        }
        //验证是否有管理员权限，能否登录
        }
    }