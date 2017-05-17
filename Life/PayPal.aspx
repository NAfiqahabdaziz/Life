<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PayPal.aspx.cs" Inherits="Life.PayPal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h2>Purchase past exam questions</h2>
        
        <asp:Label ID="lblQuantity" runat="server" Text="Quantity at $10 each" AssociatedControlID="ddlExamQuantity"></asp:Label>


    <asp:DropDownList ID="ddlExamQuantity" runat="server">

        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
    </asp:DropDownList>



    <p>Postage and packaging charges of $3.95 will be applied to your order</p>

    <asp:Button ID="btnPurchaseExamQuestions" runat="server" Text="Buy Now" OnClick="btnPurchaseExamQuestions_Click1" />


</asp:Content>
