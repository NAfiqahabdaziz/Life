<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Life.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      
    
      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" Width="671px">
          <Columns>
              <asp:TemplateField HeaderText="ImagePath" SortExpression="ImagePath">
                <ItemTemplate>
         <img src="images<%#Eval("ImagePath").ToString() %>" width="400" height="350"/>
                </ItemTemplate>
            </asp:TemplateField>
              <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
              <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
              <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
              <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />

              
              <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="ViewProducts.aspx?ProductId={0}" Text="Views" />
            <asp:HyperLinkField />
            
          </Columns>
     
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1525598_1525598_co5027_assign %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
</asp:Content>
