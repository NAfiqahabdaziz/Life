<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Life.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
       <div id="map">
             <script>
      function initMap() {
          var uluru = { lat: 4.8857309, lng: 114.93166919999999 }
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 18,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCxacc4CHGAsIpzmpYk5AtCKXJ-Bd7Fnkc&callback=initMap">
</script>
  
           </div>
          
    <div id="contact_form">

    <h5>Contact Us:</h5>
        &nbsp;<asp:Label ID="Label5" runat="server" Text="Label">Username:</asp:Label>
         &nbsp;<asp:TextBox ID="TextBox5" runat="server" Width="186px" placeholder="Username is required"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Fill up the Name*"></asp:RequiredFieldValidator>
    <br />
    <br />
     &nbsp;<asp:Label ID="Label2" runat="server" Text="Label">Email:</asp:Label>

     &nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="217px" placeholder="Email is required"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Email is required*" ></asp:RequiredFieldValidator>
    <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Invalid Email Format*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
    <br />
     &nbsp;<asp:Label ID="Label3" runat="server" Text="Label">Subject:</asp:Label>

     &nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="203px" placeholder="Subject is required"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Subject need to be fill*"></asp:RequiredFieldValidator>
    <br />
    <br />


     &nbsp;<asp:Label ID="Label4" runat="server" Text="Label">Message:</asp:Label>
    <br />



    &nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="146px" TextMode="MultiLine" Width="253px" placeholder="Message is required"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Message cannot be empty*"></asp:RequiredFieldValidator>

    <br />
    <br />

     &nbsp;<asp:Button ID="Button1" runat="server" Text="Send" Width="88px" OnClick="Button1_Click" />

<br />



    &nbsp; <asp:Literal ID="Literal1" runat="server">Result:</asp:Literal>
    </div>

    <div id="ended">
  <h3>Kindly contact us if any inquiry:</h3>
                    <p>Roof Top, Plaza Abdul Razak Jalan Laksamana Abdul Razak Km 2 Jalan Tutong,</p>
                        <p> Bandar Seri Begawan BA 1712, Negara Brunei Darussalam</p>
                                    <p>Tel: +673 223 8816/18</p>
                                    <p> Email: enquiries@laksamanacollege.edu.bn</p>
    </div>
</asp:Content>
