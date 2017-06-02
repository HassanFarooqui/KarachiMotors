<%@ Page Title="" Language="C#" MasterPageFile="~/MainForm.Master" AutoEventWireup="true" CodeBehind="Sale.aspx.cs" Inherits="KarachiMotorSystem.Sale" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPH" runat="server">
    <div id="ContentPage" >

        <table class="auto-style1">
            <tr>
                <td colspan="6">
                    <asp:Label ID="LblSale" runat="server" style="font-weight: 700; font-size: x-large" Text="Sale Form"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 127px">
                    <asp:Label ID="LblCNIC" runat="server" Text="CNIC :"></asp:Label>
                </td>
                <td style="width: 217px; text-align: left">
                    <asp:TextBox ID="TbxCNIC" runat="server" Height="25px" Width="186px" AutoPostBack="True" OnTextChanged="CNICTextChangeEvent"></asp:TextBox>
                </td>
                <td style="width: 157px">
                    <asp:Label ID="LblStockID" runat="server" Text="StockID :"></asp:Label>
                </td>
                <td style="text-align: left; width: 246px">
                    <asp:TextBox ID="TbxStockID" runat="server" Height="25px" Width="186px"></asp:TextBox>
                </td>
                <td style="width: 144px">
                    <asp:Label ID="LblSaleID" runat="server" Text="Sale ID :"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TbxSaleID" runat="server" Height="25px" Width="186px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 127px">
                    <asp:Label ID="LblCustomer" runat="server" Text="CustomerID :"></asp:Label>
                </td>
                <td style="width: 217px; text-align: left">
                    <asp:TextBox ID="TbxCustomerID" runat="server" Height="25px" Width="186px"></asp:TextBox>
                </td>
                <td style="width: 157px">
                    <asp:Label ID="LblRegNo" runat="server" Text="Reg # :"></asp:Label>
                </td>
                <td style="text-align: left; width: 246px">
                    <asp:TextBox ID="TbxRegNo" runat="server" Height="25px" Width="186px" AutoPostBack="True" OnTextChanged="RegistrationTextchangeEvent"></asp:TextBox>
                </td>
                <td style="width: 144px">
                    <asp:Label ID="LblSalePerson" runat="server" Text="Sale Person :"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TbxSalePerson" runat="server" Height="25px" Width="186px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 127px">
                    <asp:Label ID="LblCustomerName" runat="server" Text="Customer Name :"></asp:Label>
                </td>
                <td style="width: 217px; text-align: left">
                    <asp:TextBox ID="TbxCustomerName" runat="server" Height="25px" style="margin-left: 0px" Width="186px"></asp:TextBox>
                </td>
                <td style="width: 157px">
                    <asp:Label ID="LblMake" runat="server" Text="Make :"></asp:Label>
                </td>
                <td style="text-align: left; width: 246px">
                    <asp:TextBox ID="TbxMake" runat="server" Height="25px" Width="186px"></asp:TextBox>
                </td>
                <td style="width: 144px">
                    <asp:Label ID="LblTrade" runat="server" Text="Trade :"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="34px" Width="192px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Cash</asp:ListItem>
                        <asp:ListItem>Credit</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 127px">
                    <asp:Label ID="LblCellNo" runat="server" Text="Cell # :"></asp:Label>
                </td>
                <td style="width: 217px; text-align: left">
                    <asp:TextBox ID="TbxCellNo" runat="server" Height="25px" Width="186px"></asp:TextBox>
                </td>
                <td style="width: 157px">
                    <asp:Label ID="LblFrameNo" runat="server" Text="Frame # :"></asp:Label>
                </td>
                <td style="text-align: left; width: 246px">
                    <asp:TextBox ID="TbxFrameNo" runat="server" Height="25px" Width="186px"></asp:TextBox>
                </td>
                <td style="width: 144px">
                    <asp:Label ID="LblDate" runat="server" Text="Date :"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TbxDate" runat="server" Height="25px" Width="186px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 127px">
                    <asp:Label ID="LblEmail" runat="server" Text="Email :"></asp:Label>
                </td>
                <td style="width: 217px; text-align: left">
                    <asp:TextBox ID="TbxEmail" runat="server" Height="25px" Width="186px"></asp:TextBox>
                </td>
                <td style="width: 157px">
                    <asp:Label ID="LblEngineNo" runat="server" Text="Engine # :"></asp:Label>
                </td>
                <td style="text-align: left; width: 246px">
                    <asp:TextBox ID="TbxEngineNo" runat="server" Height="25px" Width="186px"></asp:TextBox>
                </td>
                <td style="width: 144px" rowspan="3">
                    <asp:Label ID="LblOtherInfo" runat="server" Text="Other Information :"></asp:Label>
                </td>
                <td rowspan="3" style="text-align: left">
                    <asp:TextBox ID="TbxDate0" runat="server" Height="100px" Width="186px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 127px">
                    <asp:Label ID="LblHomeAddress" runat="server" Text="Home Address :"></asp:Label>
                </td>
                <td style="width: 217px; text-align: left">
                    <asp:TextBox ID="TbxHomeAddress" runat="server" Height="25px" Width="186px"></asp:TextBox>
                </td>
                <td style="width: 157px">
                    <asp:Label ID="LblVariant" runat="server" Text="Variant :"></asp:Label>
                </td>
                <td style="text-align: left; width: 246px">
                    <asp:TextBox ID="TbxVariant" runat="server" Height="25px" Width="186px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 127px">
                    <asp:Label ID="LblDriverNo" runat="server" style="text-align: right" Text="Driver # :"></asp:Label>
                </td>
                <td style="width: 217px; text-align: left">
                    <asp:TextBox ID="TbxDriverNo" runat="server" Height="25px" style="text-align: left" Width="186px"></asp:TextBox>
                </td>
                <td style="width: 157px">
                    <asp:Label ID="LblAmount" runat="server" Text="Amount :"></asp:Label>
                </td>
                <td style="text-align: left; width: 246px">
                    <asp:TextBox ID="TbxAmount" runat="server" Height="25px" Width="186px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 127px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 157px">&nbsp;</td>
                <td style="text-align: left; width: 246px">&nbsp;</td>
                <td style="text-align: left; width: 144px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 127px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 157px">&nbsp;</td>
                <td style="text-align: left; width: 246px">&nbsp;</td>
                <td style="text-align: left; width: 144px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

        </table>

    </div>
</asp:Content>
