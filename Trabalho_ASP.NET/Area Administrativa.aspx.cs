using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Area_Administrativa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsuario.Text = Session["usuario"].ToString();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Clientes")
        {
            dgvClientes.Visible = true;
            dgvProdutos.Visible = false;
            dgvTipos.Visible = false;
            dgvVendas.Visible = false;
        }

        if (DropDownList1.SelectedItem.Text == "Produtos")
        {
            dgvClientes.Visible = false;
            dgvProdutos.Visible = true;
            dgvTipos.Visible = false;
            dgvVendas.Visible = false;
        }

        if (DropDownList1.SelectedItem.Text == "Tipos")
        {
            dgvClientes.Visible = false;
            dgvProdutos.Visible = false;
            dgvTipos.Visible = true;
            dgvVendas.Visible = false;
        }

        if (DropDownList1.SelectedItem.Text == "Vendas")
        {
            dgvClientes.Visible = false;
            dgvProdutos.Visible = false;
            dgvTipos.Visible = false;
            dgvVendas.Visible = true;
        }
    }
}