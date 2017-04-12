<%@ Page Title="" Language="C#" MasterPageFile="~/MainForm.Master" AutoEventWireup="true" CodeBehind="StockMaster.aspx.cs" Inherits="KarachiMotorSystem.StockMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPH" runat="server">

    <div id="ContentPage">
        <strong>Welcome to Stock master Page
    </strong>
    <div>
		<table class="auto-style1">
            <tr>
                <td style="width: 88px; height: 26px; text-align: right;">
                    <asp:Label ID="LblstockID" runat="server" Text="Stock ID:"></asp:Label>
                </td>
                <td style="width: 209px; height: 26px; text-align: left;">
                    <asp:TextBox ID="TextBox1" runat="server" Width="167px"></asp:TextBox>
                </td>
                <td style="width: 156px; text-align: right; height: 26px;">
                    <asp:Label ID="LblEngineType" runat="server" Text="Engine Type:"></asp:Label>
                </td>
                <td style="width: 209px; height: 26px; text-align: left;">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="153px" style="margin-left: 0px">
                        <asp:ListItem>4 Cylinder</asp:ListItem>
                        <asp:ListItem>6 Cylinder</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="height: 26px"></td>
                <td style="height: 26px"></td>
            </tr>
            <tr>
                <td style="width: 88px; text-align: right;">
                    <asp:Label ID="LblRegNo" runat="server" Text="Reg No:"></asp:Label>
                </td>
                <td style="width: 209px; text-align: left;">
                    <asp:TextBox ID="TbxRegNo" runat="server" Width="167px"></asp:TextBox>
                </td>
                <td style="width: 156px; text-align: right;">
                    <asp:Label ID="LblTransmissionType" runat="server" Text="Transmission Type:"></asp:Label>
                </td>
                <td style="width: 209px; text-align: left;">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" style="margin-left: 0px" Width="155px">
                        <asp:ListItem>Automatic</asp:ListItem>
                        <asp:ListItem>Manual</asp:ListItem>
                        <asp:ListItem>Steermatic</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 88px; text-align: right;">
                    <asp:Label ID="LblMake" runat="server" Text="Make:"></asp:Label>
                </td>
                <td style="width: 209px; text-align: left;">
                    <asp:TextBox ID="TbxMake" runat="server" Width="167px"></asp:TextBox>
                </td>
                <td style="width: 156px; text-align: right;">
                    <asp:Label ID="LblPowerwWindows" runat="server" Text="Power Windows:"></asp:Label>
                </td>
                <td style="width: 209px; text-align: left;">
                    <asp:DropDownList ID="DropDownList9" runat="server" Height="20px" style="margin-left: 0px" Width="155px">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 88px; text-align: right;">
                    <asp:Label ID="LblFrameNo" runat="server" Text="Frame No:"></asp:Label>
                </td>
                <td style="width: 209px; text-align: left;">
                    <asp:TextBox ID="TbxFrameNo" runat="server" Width="167px"></asp:TextBox>
                </td>
                <td style="width: 156px; text-align: right;">
                    <asp:Label ID="LblstockID11" runat="server" Text="Power Lock:"></asp:Label>
                </td>
                <td style="width: 209px; text-align: left;">
                    <asp:DropDownList ID="DropDownList10" runat="server" Height="20px" style="margin-left: 0px" Width="155px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 88px; text-align: right;">
                    <asp:Label ID="LblEngineNo" runat="server" Text="Engine No:"></asp:Label>
                </td>
                <td style="width: 209px; text-align: left;">
                    <asp:TextBox ID="TbxEngineNo" runat="server" Width="167px"></asp:TextBox>
                </td>
                <td style="width: 156px; text-align: right;">
                    <asp:Label ID="LblstockID12" runat="server" Text="Cruise Controll:"></asp:Label>
                </td>
                <td style="width: 209px; text-align: left;">
                    <asp:DropDownList ID="DropDownList11" runat="server" Height="20px" style="margin-left: 0px" Width="155px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 88px; text-align: right;">
                    <asp:Label ID="LblVariant" runat="server" Text="Variant:"></asp:Label>
                </td>
                <td style="width: 209px; text-align: left;">
                    <asp:TextBox ID="TbxVariant" runat="server" Width="167px"></asp:TextBox>
                </td>
                <td style="width: 156px; text-align: right;">
                    <asp:Label ID="LblstockID13" runat="server" Text="Air Condition:"></asp:Label>
                </td>
                <td style="width: 209px; text-align: left;">
                    <asp:DropDownList ID="DropDownList12" runat="server" Height="20px" style="margin-left: 0px" Width="155px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 88px; text-align: right;">
                    <asp:Label ID="LblModelYear" runat="server" Text="Model Year:"></asp:Label>
                </td>
                <td style="width: 209px; text-align: left;">
                    <asp:TextBox ID="TbxModelYear" runat="server" Width="167px"></asp:TextBox>
                </td>
                <td style="width: 156px; text-align: right;">
                    <asp:Label ID="LblstockID14" runat="server" Text="Radio:"></asp:Label>
                </td>
                <td style="width: 209px; text-align: left;">
                    <asp:DropDownList ID="DropDownList13" runat="server" Height="20px" style="margin-left: 0px" Width="155px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 88px; text-align: right;">
                    <asp:Label ID="LblstockID6" runat="server" Text="Color:"></asp:Label>
                </td>
                <td style="width: 209px; text-align: left;">
                    <asp:TextBox ID="TbxColor" runat="server" Width="167px"></asp:TextBox>
                </td>
                <td style="width: 156px; text-align: right;">
                    <asp:Label ID="LblstockID15" runat="server" Text="Player:"></asp:Label>
                </td>
                <td style="width: 209px; text-align: left;">
                    <asp:DropDownList ID="DropDownList14" runat="server" Height="20px" style="margin-left: 0px" Width="155px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 88px; text-align: right;">
                    <asp:Label ID="LblstockID7" runat="server" Text="Stock ID:"></asp:Label>
                </td>
                <td id="TbxStockID" style="width: 209px; text-align: left;">
                    <asp:TextBox ID="TextBox9" runat="server" Width="167px"></asp:TextBox>
                </td>
                <td style="width: 156px; text-align: right;">
                    <asp:Label ID="LblstockID16" runat="server" Text="Stock ID:"></asp:Label>
                </td>
                <td style="width: 209px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
		
	</div>

    </div>
</asp:Content>
