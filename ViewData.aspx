<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewData.aspx.cs" Inherits="AddProduct.ViewData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                     <table border="1">
                <tr>
                  
                    <td>
                        <img src="/img/<%#Eval("sphoto") %>" height="500px" width="500px" />
                        <h3>  NAME  :  <%#Eval("sname") %></h3>
                        <h2> QUALIFICATION  : <%#Eval("sdgree") %></h2>
                        <h4> AREA OF INTRESTED  : <%#Eval("sintrest") %></h4>
                        <p> CONTECT NO   : <%#Eval("sphone") %></p>
                        <P> EMAIL ID : <%#Eval("smail") %></P>
                        <h3> EXPEREINCE (Year)  :  <%#Eval("sexp") %></h3>

                    </td>
                </tr>
            </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
