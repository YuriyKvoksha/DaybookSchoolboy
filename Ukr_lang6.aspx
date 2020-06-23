<%@ Page Title="Ukr_lang6" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ukr_lang6.aspx.cs" Inherits="DaybookSchoolboy.Ukr_lang6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <a runat="server"  href="/Daybook">назад</a>
   <center>
       <img alt="" src="file:///D:/ПРОЕКТЫ%20ПРОГРМ/2020/2020/DaybookSchoolboy/DaybookSchoolboy/Models/ukrlang.png" style="width: 964px; height: 256px" /></center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="ПІП" HeaderText="ПІП" SortExpression="ПІП" />
            <asp:BoundField DataField="column1" HeaderText="Тема 1" SortExpression="column1" />
            <asp:BoundField DataField="column2" HeaderText="Тема 2" SortExpression="column2" />
            <asp:BoundField DataField="column3" HeaderText="Тема 3" SortExpression="column3" />
            <asp:BoundField DataField="column4" HeaderText="К.р.1" SortExpression="column4" />
            <asp:BoundField DataField="column5" HeaderText="Тема 4" SortExpression="column5" />
            <asp:BoundField DataField="column6" HeaderText="Тема 5" SortExpression="column6" />
            <asp:BoundField DataField="column7" HeaderText="Тема 6" SortExpression="column7" />
            <asp:BoundField DataField="column8" HeaderText="К.р.2" SortExpression="column8" />
            <asp:BoundField DataField="column9" HeaderText="Д/з" SortExpression="column9" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ПІП], [Т.1] AS column1, [Т.2] AS column2, [Т.3] AS column3, [К.Р.1] AS column4, [Т.4] AS column5, [Т.5] AS column6, [Т.6] AS column7, [К.Р.2] AS column8, [Д/З] AS column9 FROM [Ukr_lang] WHERE ([Клас] = @Клас) ORDER BY [ПІП]">
        <SelectParameters>
            <asp:Parameter DefaultValue="6" Name="Клас" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>
