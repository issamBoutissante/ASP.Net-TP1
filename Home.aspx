<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Tp_1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
        h1{
            text-decoration:underline;
        }
        form{
            width:450px;
            text-align:end;
        }
        .date{
            width:50px;
        }
        .star{
            color:red;
            padding-bottom:5px;
        }
        #Valider{
            margin-right:100px;
            padding:10px;
        }
    </style>
<body>
    <h1>Pour s'inscrire ; remplir le formulaire suivant</h1>
    <form id="form1" runat="server">
        <label>Nom</label>    
        <asp:TextBox ID="Nom" runat="server"></asp:TextBox>
        <label class="star">*</label>
        <br />
        <br />

        <label>Prenom</label>    
        <asp:TextBox ID="Prenom" runat="server"></asp:TextBox>
        <label class="star">*</label>
        <br />
        <br />

        <label>CIN</label>    
        <asp:TextBox ID="CIN" runat="server"></asp:TextBox>
        <label class="star">*</label>
        <br />
        <br />

        <label>Date de Naissance</label>    
        <asp:TextBox ID="Jour" CssClass="date"  TextMode="Number" runat="server" ></asp:TextBox>
        <label class="star">*</label>
        <asp:TextBox ID="Mois" CssClass="date" TextMode="Number" runat="server" ></asp:TextBox>
        <label class="star">*</label>
        <asp:TextBox ID="Anne" CssClass="date" TextMode="Number" runat="server" ></asp:TextBox>
        <label class="star">*</label>
        <br />
        <br />

        <label>Password</label>    
        <asp:TextBox ID="Password" runat="server"></asp:TextBox>
        <label class="star">*</label>
        <br />
        <br />

        <label>ConPassword</label>    
        <asp:TextBox ID="ConPassword" runat="server"></asp:TextBox>
        <label class="star">*</label>
        <br />
        <br />
        <br />
        <asp:Button ID="Valider" runat="server" Text="Valider" OnClick="Valider_Click"></asp:Button><br />
        <asp:Label ID="Message" runat="server"></asp:Label>
    </form>
</body>
</html>
