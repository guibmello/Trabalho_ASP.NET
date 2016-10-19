using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtSenha_TextChanged(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (txtUsuario.Text != "") { 
            args.IsValid = (this.txtUsuario.Text == "admin");
        }
    }

    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (txtSenha.Text != "")
        {
            args.IsValid = (this.txtSenha.Text == "123");
        }
    }

    protected void btnLogar_Click(object sender, EventArgs e)
    {
        Session["usuario"] = txtUsuario.Text.ToString();
        if (this.IsValid)
        {
            Response.Redirect("Area Administrativa.aspx");
        }
    }
}