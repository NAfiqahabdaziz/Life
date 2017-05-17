<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Life.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label">Username:</asp:Label>
<asp:TextBox ID="txtLoginEmail" runat="server" Width="192px"></asp:TextBox>
    <br />
<asp:Label ID="Label2" runat="server" Text="Label">Password:</asp:Label>
<asp:TextBox ID="txtLoginPassword" runat="server" Width="194px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Width="62px" />

    <br />
<asp:Literal ID="Literal1" runat="server"></asp:Literal>
    
    <h2>Register</h2>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Label">Username:</asp:Label>
  <asp:TextBox ID="TextBox1" runat="server" Width="182px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Label"> Password:</asp:Label>
  <asp:TextBox ID="TextBox2" runat="server" Width="181px"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="Register" Width="77px" OnClick="Button1_Click" />
    <br />
    <br />
    <asp:Literal ID="Literal2" runat="server">Result:</asp:Literal>


</asp:Content>
