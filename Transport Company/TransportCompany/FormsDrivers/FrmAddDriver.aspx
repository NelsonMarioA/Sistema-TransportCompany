<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmAddDriver.aspx.cs" Inherits="TransportCompany.FormsDrivers.FrmAddDriver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Full name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="from-control" Width="849px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Identification"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtIdentification" runat="server" CssClass="from-control" Width="857px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Telephone"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTelephone" runat="server" CssClass="from-control" Width="854px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Home Address"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="from-control" Width="854px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnCreate" runat="server" Text="Create" OnClick="BtnCreateOnClick" Width="920px" />

                        <br />

                        <br />

                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
