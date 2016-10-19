<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Produtos.aspx.cs" Inherits="Produtos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="panel panel-default">
  <div class="panel-heading">Produtos</div>
  <div class="panel-body" style="background-color:black">
    <asp:GridView ID="GridView1" runat="server" Height="164px" Width="787px" AutoGenerateColumns="False" DataKeyNames="CODIGO" DataSourceID="SqlDataSource1" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowCustomPaging="True" HorizontalAlign="Center" AllowSorting="True" >
        <AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
    <Columns>
        <asp:BoundField DataField="CODIGO" HeaderText="CODIGO" InsertVisible="False" ReadOnly="True" SortExpression="CODIGO" >
        </asp:BoundField>
        <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" >
        </asp:BoundField>
        <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" >
        </asp:BoundField>
        <asp:BoundField DataField="DESCRICAO" HeaderText="DESCRICAO" SortExpression="DESCRICAO" >
        </asp:BoundField>
        <asp:BoundField DataField="PRECO" HeaderText="PRECO" SortExpression="PRECO" >
        </asp:BoundField>
        <asp:BoundField DataField="QTDE" HeaderText="QTDE" SortExpression="QTDE" >
        </asp:BoundField>
    </Columns>
        <EditRowStyle HorizontalAlign="Center" />
        <EmptyDataRowStyle HorizontalAlign="Center" />
    <HeaderStyle HorizontalAlign="Center" />
        <RowStyle HorizontalAlign="Center" />
    <SelectedRowStyle HorizontalAlign="Center" />
    <SortedAscendingCellStyle HorizontalAlign="Center" />
    <SortedAscendingHeaderStyle HorizontalAlign="Center" />
    <SortedDescendingCellStyle HorizontalAlign="Center" />
    <SortedDescendingHeaderStyle HorizontalAlign="Center" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LOJAConnectionString3 %>" SelectCommand="SELECT * FROM [Produtos]" DeleteCommand="DELETE FROM [Produtos] WHERE [CODIGO] = @CODIGO" InsertCommand="INSERT INTO [Produtos] ([TIPO], [MARCA], [DESCRICAO], [PRECO], [QTDE]) VALUES (@TIPO, @MARCA, @DESCRICAO, @PRECO, @QTDE)" UpdateCommand="UPDATE [Produtos] SET [TIPO] = @TIPO, [MARCA] = @MARCA, [DESCRICAO] = @DESCRICAO, [PRECO] = @PRECO, [QTDE] = @QTDE WHERE [CODIGO] = @CODIGO">
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
      </div></div>
</asp:Content>

