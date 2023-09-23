<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataUploading.aspx.cs" Inherits="AddProduct.DataUploading" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #CCCCFF;
            width: 580px;
        }
        .auto-style2 {
            height: 32px;
            background-color: #CCCCFF;
            width: 580px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         
                <h4>by-Amit(32982)</h4>

                <table border="2">
                    <h2> Following the Information </h2>
                <tr>
                 <td class="auto-style1">  Enter Your Name :  <asp:TextBox ID="txtname" runat="server" required></asp:TextBox></td>
                </tr>
                <tr>
                 <td class="auto-style2">  Enter Your Mobile No  :  <asp:TextBox ID="txtphone" runat="server" required></asp:TextBox></td>
                </tr>
                <tr>
                 <td class="auto-style1">  Enter Your Email :  <asp:TextBox ID="txtemail" runat="server" required></asp:TextBox></td>
                </tr>
                 <tr>
               <td class="auto-style1">    Enter Your last Education :  <asp:TextBox ID="txtdegree" runat="server" required></asp:TextBox></td>
                </tr>
                 <tr>
               <td class="auto-style1">    Upload your photo :  <asp:FileUpload ID="FileUpload1" runat="server" required Width="197px" /></td>
                </tr>
                 <tr>
                <td class="auto-style1">   Enter Area of Intrested  :   <asp:TextBox ID="txtintrest" runat="server" required></asp:TextBox> </td>
                </tr>
                 <tr>
                <td class="auto-style1">   Enter Experience  :   <asp:TextBox ID="txtexp" runat="server" required></asp:TextBox> </td>
                </tr>

               <tr>
                <td colspan="2" class="auto-style1"> 
                    <br />
                    <asp:Button ID="btnsave" runat="server" Text="Upload" OnClick="btnsave_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnclear" runat="server" Text="Reset" />
                </td>
                </tr>
            </table>

            <hr />

                <h2>-------------------------------------------------------------------------DATALIST----------------------------------------------------------------------</h2>


            <asp:DataList ID="DataList1" runat="server"  RepeatColumns="3" BackColor="LightGoldenrodYellow" BorderColor="Maroon" BorderWidth="2px" CellPadding="20" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" GridLines="Both" HorizontalAlign="Center" RepeatDirection="Horizontal">

                <AlternatingItemStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />

                <ItemTemplate>

                    <table border="1" padding="30px">
                        <tr>
                            <td>
                                <img src="/img/<%#Eval("sphoto") %>" width="300px" height="300px" />
                                <p> Name : <%#Eval("sname") %></p>
                                <h4> Education :<%#Eval("sdgree")%></h4>

                                <a href="ViewData.aspx?code=<%#Eval("sid")%>">Know More</a>

                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            </asp:DataList>
        </div>
    </form>
</body>
</html>
