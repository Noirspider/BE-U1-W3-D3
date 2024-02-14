<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BE_U1_W3_D3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:TextBox ID="Nome" runat="server" ErrorMessage="Nome obbligatorio"></asp:TextBox>
        <asp:RequiredFieldValidator ID="NomeValidator" runat="server" ControlToValidate="Nome" ErrorMessage="Nome obbligatorio" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="Cognome" runat="server" ErrorMessage="Cognome obbligatorio"></asp:TextBox>
        <asp:RequiredFieldValidator ID="CognomeValidator" runat="server" ControlToValidate="Cognome" ErrorMessage="Cognome obbligatorio" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:DropDownList ID="SalaDropDownList" runat="server">
            <asp:ListItem Text="SALA NORD" Value="1"></asp:ListItem>
            <asp:ListItem Text="SALA SUD" Value="2"></asp:ListItem>
            <asp:ListItem Text="SALA EST" Value="3"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:DropDownList ID="TipoBigliettoDropDownList" runat="server">
            <asp:ListItem Text="Intero" Value="Intero"></asp:ListItem>
            <asp:ListItem Text="Ridotto" Value="Ridotto"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="SubmitButton" runat="server" Text="Acquista" OnClick="SubmitButton_Click"/>
    </main>

</asp:Content>
