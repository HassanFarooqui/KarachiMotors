<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="KarachiMotorSystem.LoginPage" %>

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
            <div id="txt">
                <asp:TextBox runat="server" id="TbxName"/>
            </div>
             <div id="Div1">
                <asp:TextBox runat="server" id="TbxPass"/>
            </div>
        </div>
 
    </form>
</body>
</html>
