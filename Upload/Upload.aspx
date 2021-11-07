<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="Upload.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1778px;
            height: 218px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="UPLOAD de Arquivos"></asp:Label>
            <br />
            <asp:FileUpload ID="fuArquivo" runat="server" AllowMultiple="True" />           
            <br />
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Nome do Arquivo"></asp:Label>
                <asp:TextBox ID="txtNome" runat="server" Width="1575px"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="Label3" runat="server" Text="Tamanho do Arquivo"></asp:Label>
                <asp:TextBox ID="txtTamanho" runat="server" Width="1544px"></asp:TextBox>
                <br />
            <asp:Button ID="btnEnviar" runat="server" Text="Enviar Arquivo" Width="389px" OnClick="btnEnviar_Click" />
                <asp:Button ID="btnEnviarMarq" runat="server" OnClick="btnEnviarMarq_Click" Text="Enviar Múltiplos Arquivos" />
            </div>
        </div>

        <br />

    </form>
</body>
</html>
