<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <div class="panel panel-default">
  <div class="panel-heading">Efetuar Login</div>
  <div class="panel-body" style="background-color:black">

<p>
    Usuário</p>
<p>
    <asp:TextBox CssClass="form-control" ID="txtUsuario" runat="server" style="width:250px; margin-left:70px; text-align:center"></asp:TextBox>
</p>
<p>
    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Login Incorreto" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
</p>

<p>
    Senha</p>
<p>
    <asp:TextBox CssClass="form-control" ID="txtSenha" runat="server" OnTextChanged="txtSenha_TextChanged" TextMode="Password" style="width:250px; margin-left:70px; text-align:center"></asp:TextBox>
</p>
<p>
    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="txtSenha" ErrorMessage="Senha Incorreta" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
</p>

<p>
    <asp:Button CssClass="btn btn-primary" ID="btnLogar" runat="server" Text="Logar" OnClick="btnLogar_Click" />
</p>
      </div>
      </div>
      
</asp:Content>

