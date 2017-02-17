﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="KarachiMotorSystem.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>  
        
    </title>
    <link href="loginStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
   
        <div id="container">
            <img src="Media/Men.jpg" id="imgl" />
            <div id="tbx">
                <asp:TextBox runat="server" id="TbxName"  Height=" 40px" Width="300px" PlaceHolder="User Name" BorderWidth="2px" BorderColor="Red" />
            </div>
             <div id="tbx">
                <asp:TextBox runat="server" id="TbxPass"  Height= "40px" Width="300px" PlaceHolder="Password" />
            </div>
            <div id="divOfbutton">
                <asp:Button Text="SignUp" runat="server" ID="btnSubmit"  Height="35px" Width="150px" Font-Bold="True"/>
                <asp:Button Text="LogIn" runat="server" ID="BtnLogIn" Height="35px" Width="150px" Font-Bold="True"/>
            </div>
            <a href="#"> <asp:Label Text="Forget Password" runat="server" />  </a>
        </div>
    </form>
</body>
</html>
