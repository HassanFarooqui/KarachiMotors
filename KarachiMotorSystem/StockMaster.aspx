<%@ Page Title="" Language="C#" MasterPageFile="~/MainForm.Master" AutoEventWireup="true" CodeBehind="StockMaster.aspx.cs" Inherits="KarachiMotorSystem.StockMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPH" runat="server">

    <div id="ContentPage">
        Welcome to Stock master Page
    <div>
		<asp:DataGrid ID="DataGrid1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="37px" Width="478px">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataGrid>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KarachiMotorsConnectionString %>" SelectCommand="SELECT * FROM [UserAccountDetails]"></asp:SqlDataSource>
		
	</div>

    </div>
</asp:Content>
