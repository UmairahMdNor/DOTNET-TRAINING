<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToNumberJavascipt.aspx.cs" Inherits="JqueryJavascript.AddToNumberJavascipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function Message() {
            var Integer1 = document.getElementById("Integer1").value;
            var Integer2 = document.getElementById("Integer2").value;
            var Total = Number(Integer1) + Number(Integer2);
            alert(Total);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input type="text" id="Integer1" />
    <input type="text" id="Integer2" />

        <input type="button" onclick="Message()" value="Add Integer" />
    </div>
    </form>
</body>
</html>
