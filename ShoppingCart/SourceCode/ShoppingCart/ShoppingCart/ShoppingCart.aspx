<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="ShoppingCart.ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/ShoppingCart.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="outer">
            <div class="header">
                <div id="logo_text">
                    <center><h1>Shopping Cart</h1></center>
                </div>
                <div id="menubar">
                    <ul id="menu">
                        <li><a href="Home.aspx">Home</a> </li>
                        <li><a href="ShoppingCart.aspx">Shopping cart</a></li>
                    </ul>
                </div>

                <div class="list">
                    <div id="EmptyCart" runat="server">
                        Cart Empty !
                    </div>
                </div>
                <div id="CartItem" runat="server">
                <table class="cartlist" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Image</th>
                            <th>Product</th>
                            <th>Price (RM)</th>
                            <th>Quantity</th>
                            <th>Total (RM)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="cartlistcartimg" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                    <img src='<%#Eval("ProductImage") %>' /></td>
                                    <td><span><%#Eval("ProductName") %></span></div></td>
                                    <td><%#Eval("ProductPrice") %></div></td>
                                    <td><%#Eval("Quantity")%></td>
                                    <td><%#Eval("totals")%></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>

                </table>
                      <div class="cart">
                    <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" OnClick="btnCheckOut_Click" />
                </div>
                </div>
              
            </div>
        </div>

    </form>
</body>
</html>
