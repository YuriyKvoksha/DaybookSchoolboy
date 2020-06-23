<%@ Page Title="Math5" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Math5.aspx.cs" Inherits="DaybookSchoolboy.Math5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <a runat="server"  href="/Daybook">назад</a>
    <center>
        <img alt="" src="file:///D:/ПРОЕКТЫ%20ПРОГРМ/2020/2020/DaybookSchoolboy/DaybookSchoolboy/Models/math.png" style="width: 761px; height: 256px" /></center>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="ПІП" HeaderText="ПІП" SortExpression="ПІП" />
            <asp:BoundField DataField="column1" HeaderText="column1" SortExpression="column1" />
            <asp:BoundField DataField="column2" HeaderText="column2" SortExpression="column2" />
            <asp:BoundField DataField="column3" HeaderText="column3" SortExpression="column3" />
            <asp:BoundField DataField="column4" HeaderText="column4" SortExpression="column4" />
            <asp:BoundField DataField="column5" HeaderText="column5" SortExpression="column5" />
            <asp:BoundField DataField="column6" HeaderText="column6" SortExpression="column6" />
            <asp:BoundField DataField="column7" HeaderText="column7" SortExpression="column7" />
            <asp:BoundField DataField="column8" HeaderText="column8" SortExpression="column8" />
            <asp:BoundField DataField="column9" HeaderText="column9" SortExpression="column9" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ПІП], [Т.1] AS column1, [Т.2] AS column2, [Т.3] AS column3, [К.Р.1] AS column4, [Т.4] AS column5, [Т.5] AS column6, [Т.6] AS column7, [К.Р.2] AS column8, [Д/З] AS column9 FROM [Math] WHERE ([Клас] = @Клас)">
            <SelectParameters>
                <asp:Parameter DefaultValue="5" Name="Клас" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>

