<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin(Products).aspx.cs" Inherits="Life.Admin_Products_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    
   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="form1">
     <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" DefaultMode="Edit"  CellPadding="4" ForeColor="#333333" AllowPaging="True">
         <EditItemTemplate>
             ProductId:
             <asp:Label ID="ProductIdLabel1" runat="server" Text='<%# Eval("ProductId") %>' />
             <br />
             ProductName:
             <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
             <br />
             Description:
             <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
             <br />
             Price:
             <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
             <br />
             <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
             <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
         </EditItemTemplate>
         <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
         <InsertItemTemplate>
             ProductId:
             <asp:TextBox ID="ProductIdTextBox" runat="server" Text='<%# Bind("ProductId") %>' />
             <br />
             ProductName:
             <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
             <br />
             Description:
             <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
             <br />
             Price:
             <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
             <br />
             <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
             &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
         </InsertItemTemplate>
         <ItemTemplate>
             ProductId:
             <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
             <br />
             ProductName:
             <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
             <br />
             Description:
             <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
             <br />
             Price:
             <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
             <br />
         </ItemTemplate>
         <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
         <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
     </asp:FormView>
        </div>


    <div class="GridView1">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ProductId" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1525598_1525598_co5027_assign %>" 
        SelectCommand="SELECT [ProductId], [ProductName], [Description], [Price] FROM [Product]" ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [Product] WHERE [ProductId] = @original_ProductId AND
         [ProductName] = @original_ProductName AND [Description] = @original_Description AND [Price] = @original_Price" InsertCommand="INSERT INTO [Product]
         ([ProductId], [ProductName], [Description], [Price]) VALUES (@ProductId, @ProductName, @Description, @Price)" OldValuesParameterFormatString="original_{0}"
         UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [Description] = @Description, [Price] = @Price WHERE [ProductId] = @original_ProductId AND [ProductName] = @original_ProductName AND [Description] = @original_Description AND [Price] = @original_Price">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductId" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductId" Type="Int32" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="original_ProductId" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
        </UpdateParameters>
     </asp:SqlDataSource>
</asp:Content>
