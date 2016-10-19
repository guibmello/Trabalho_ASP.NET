<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Area Administrativa.aspx.cs" Inherits="Area_Administrativa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
  
  <div class="panel panel-default">
  <div class="panel-heading">Área Adminsitrativa</div>
  <div class="panel-body" style="background-color:white; color:black">
    <p>
        Bem-Vindo
        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
    </p>
    <p>
        Selecione a tabela a ser apresentada.
    </p>
    <p style="color:black">
        <asp:DropDownList CssClass="btn btn-primary dropdown-toggle" ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>Produtos</asp:ListItem>
        <asp:ListItem>Clientes</asp:ListItem>
        <asp:ListItem>Tipos</asp:ListItem>
        <asp:ListItem>Vendas</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:GridView ID="dgvClientes" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Visible="False" Width="420px" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle HorizontalAlign="Center" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
            <asp:BoundField DataField="DATANASCIMENTO" HeaderText="DATANASCIMENTO" SortExpression="DATANASCIMENTO" />
            <asp:BoundField DataField="CELULAR" HeaderText="CELULAR" SortExpression="CELULAR" />
            <asp:CommandField ShowEditButton="True" AccessibleHeaderText="Editar" ButtonType="Image" CancelImageUrl="~/img/cancel.png" EditImageUrl="~/img/edit.png" UpdateImageUrl="~/img/ok-appproval-acceptance.png" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:CommandField>
            <asp:CommandField ShowDeleteButton="True" AccessibleHeaderText="Deletar" ButtonType="Image" DeleteImageUrl="~/img/delete.png" DeleteText="" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LOJAConnectionString3 %>" SelectCommand="SELECT * FROM [Cliente]" DeleteCommand="DELETE FROM [Cliente] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Cliente] ([NOME], [DATANASCIMENTO], [CELULAR]) VALUES (@NOME, @DATANASCIMENTO, @CELULAR)" UpdateCommand="UPDATE [Cliente] SET [NOME] = @NOME, [DATANASCIMENTO] = @DATANASCIMENTO, [CELULAR] = @CELULAR WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NOME" Type="String" />
            <asp:Parameter DbType="Date" Name="DATANASCIMENTO" />
            <asp:Parameter Name="CELULAR" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NOME" Type="String" />
            <asp:Parameter DbType="Date" Name="DATANASCIMENTO" />
            <asp:Parameter Name="CELULAR" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="dgvProdutos" runat="server" AutoGenerateColumns="False" DataKeyNames="CODIGO" DataSourceID="SqlDataSource2" Width="540px" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="CODIGO" HeaderText="CODIGO" InsertVisible="False" ReadOnly="True" SortExpression="CODIGO" />
            <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
            <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
            <asp:BoundField DataField="DESCRICAO" HeaderText="DESCRICAO" SortExpression="DESCRICAO" />
            <asp:BoundField DataField="PRECO" HeaderText="PRECO" SortExpression="PRECO" />
            <asp:BoundField DataField="QTDE" HeaderText="QTDE" SortExpression="QTDE" />
            <asp:CommandField ShowEditButton="True" ButtonType="Image" CancelImageUrl="~/img/cancel.png" EditImageUrl="~/img/edit.png" UpdateImageUrl="~/img/ok-appproval-acceptance.png" />
            <asp:CommandField ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="~/img/delete.png" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LOJAConnectionString3 %>" SelectCommand="SELECT * FROM [Produtos]" DeleteCommand="DELETE FROM [Produtos] WHERE [CODIGO] = @CODIGO" InsertCommand="INSERT INTO [Produtos] ([TIPO], [MARCA], [DESCRICAO], [PRECO], [QTDE]) VALUES (@TIPO, @MARCA, @DESCRICAO, @PRECO, @QTDE)" UpdateCommand="UPDATE [Produtos] SET [TIPO] = @TIPO, [MARCA] = @MARCA, [DESCRICAO] = @DESCRICAO, [PRECO] = @PRECO, [QTDE] = @QTDE WHERE [CODIGO] = @CODIGO">
        <DeleteParameters>
            <asp:Parameter Name="CODIGO" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TIPO" Type="String" />
            <asp:Parameter Name="MARCA" Type="String" />
            <asp:Parameter Name="DESCRICAO" Type="String" />
            <asp:Parameter Name="PRECO" Type="Decimal" />
            <asp:Parameter Name="QTDE" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TIPO" Type="String" />
            <asp:Parameter Name="MARCA" Type="String" />
            <asp:Parameter Name="DESCRICAO" Type="String" />
            <asp:Parameter Name="PRECO" Type="Decimal" />
            <asp:Parameter Name="QTDE" Type="Int32" />
            <asp:Parameter Name="CODIGO" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="dgvTipos" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" Visible="False" Width="373px" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="DESCRICAO" HeaderText="DESCRICAO" SortExpression="DESCRICAO" />
            <asp:CommandField ShowEditButton="True" ButtonType="Image" CancelImageUrl="~/img/cancel.png" EditImageUrl="~/img/edit.png" UpdateImageUrl="~/img/ok-appproval-acceptance.png" />
            <asp:CommandField ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="~/img/delete.png" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:LOJAConnectionString3 %>" SelectCommand="SELECT * FROM [Tipo]" DeleteCommand="DELETE FROM [Tipo] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Tipo] ([DESCRICAO]) VALUES (@DESCRICAO)" UpdateCommand="UPDATE [Tipo] SET [DESCRICAO] = @DESCRICAO WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DESCRICAO" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DESCRICAO" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="dgvVendas" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource4" Visible="False" Width="554px" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
            <asp:BoundField DataField="DATA" HeaderText="DATA" SortExpression="DATA" />
            <asp:BoundField DataField="PRODUTO" HeaderText="PRODUTO" SortExpression="PRODUTO" />
            <asp:BoundField DataField="QTDE" HeaderText="QTDE" SortExpression="QTDE" />
            <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" />
            <asp:CommandField ShowEditButton="True" ButtonType="Image" CancelImageUrl="~/img/cancel.png" EditImageUrl="~/img/edit.png" UpdateImageUrl="~/img/ok-appproval-acceptance.png" />
            <asp:CommandField ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="~/img/delete.png" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:LOJAConnectionString3 %>" SelectCommand="SELECT * FROM [Vendas]" DeleteCommand="DELETE FROM [Vendas] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Vendas] ([ID], [CLIENTE], [DATA], [PRODUTO], [QTDE], [TOTAL]) VALUES (@ID, @CLIENTE, @DATA, @PRODUTO, @QTDE, @TOTAL)" UpdateCommand="UPDATE [Vendas] SET [CLIENTE] = @CLIENTE, [DATA] = @DATA, [PRODUTO] = @PRODUTO, [QTDE] = @QTDE, [TOTAL] = @TOTAL WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="CLIENTE" Type="String" />
            <asp:Parameter DbType="Date" Name="DATA" />
            <asp:Parameter Name="PRODUTO" Type="String" />
            <asp:Parameter Name="QTDE" Type="Decimal" />
            <asp:Parameter Name="TOTAL" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CLIENTE" Type="String" />
            <asp:Parameter DbType="Date" Name="DATA" />
            <asp:Parameter Name="PRODUTO" Type="String" />
            <asp:Parameter Name="QTDE" Type="Decimal" />
            <asp:Parameter Name="TOTAL" Type="Decimal" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
      </div>
      </div>
</asp:Content>

