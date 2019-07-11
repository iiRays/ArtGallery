﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ArtistAccount.aspx.cs" Inherits="ArtGallery.Pages.ArtistAccount" %>

<%@ Import Namespace="ArtGallery.Classes" %>
<%@ Import Namespace="ArtGallery.Util" %> 

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Art Gallery :: Artist Account</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script src="JavaScript/CustomerAccount.js"></script>
	<link href="CSS/CustomerAccount.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed&display=swap" rel="stylesheet"/>
</head>
<body>
	<form runat="server">
		<div class='header'>
			<a href='Home.aspx' class='title'>ART-X</a>
			<a href='AllGallery.aspx' class='link'>WORKS</a>
			<a href='ArtistProfile.aspx?username=session' class='link'>ACCOUNT</a>
            
            <%
                List<Order_Artwork> oaList = (List<Order_Artwork>)Net.GetSession("oaList");
                int noOfItems = 0;
                if (oaList != null)
                {
                    noOfItems = oaList.Count;
                }
                else
                {
                    noOfItems = 0;
                }
            %>

            <a href='Cart.aspx' class='link'>CART <sup><%= noOfItems %></sup></a>
		</div>

		<div class='card'>
			<asp:Label ID="lblUsername" runat="server" CssClass="label handle"></asp:Label>
			<div id='main'>
				<!--<img src='https://pbs.twimg.com/profile_images/1055263632861343745/vIqzOHXj.jpg'>-->
				<asp:Label ID="lblName" runat="server" CssClass="label name"></asp:Label>
			</div>
            <!--<asp:Label ID="lblLocation" runat="server" CssClass="label location">NEW YORK CITY, USA</asp:Label>-->
			<asp:Label ID="lblBio" runat="server" CssClass="label bio"></asp:Label>
			<!--<div id='tags'>
				<a class='tag'>UI</a>
				<a class='tag'>UX</a>
				<a class='tag'>DESIGN</a>
				<a class='tag'>WEB</a>
				<a class='tag'>MOBILE</a>
			</div>-->
			<!--<div id='topstats'>
				<div>
                    <asp:Label ID="lblNumberArtpiecesPosted" runat="server" CssClass="label number">23</asp:Label>
                    <asp:Label ID="lblStatArtpiecesPosted" runat="server" CssClass="label stat">ARTPIECES<br />POSTED</asp:Label>
				</div>
				<div>
                    <asp:Label ID="lblNumberFollowers" runat="server" CssClass="label number">1.5k</asp:Label>
                    <asp:Label ID="lblStatFollowers" runat="server" CssClass="label stat">FOLLOWERS</asp:Label>
				</div>
			</div>
			<div id='bottomstats'>
				<div>
                    <asp:Label ID="lblNumberArtpiecesLiked" runat="server" CssClass="label number">184</asp:Label>
                    <asp:Label ID="lblStatArtpiecesLiked" runat="server" CssClass="label stat">ARTPIECES<br />LIKED</asp:Label>
				</div>
				<div>
                    <asp:Label ID="lblNumberSales" runat="server" CssClass="label number">312</asp:Label>
                    <asp:Label ID="lblStatSales" runat="server" CssClass="label stat">SALES</asp:Label>
				</div>
				<div>
                    <asp:Label ID="lblNumberFollowing" runat="server" CssClass="label number">74</asp:Label>
                    <asp:Label ID="lblStatFollowing" runat="server" CssClass="label stat">FOLLOWING</asp:Label>
				</div>
			</div>-->
			<a href='ArtistProfile.aspx?username=session' class='back'>BACK TO PROFILE</a>
		</div>

		<div class='purple'>
			<div class='container'>
				<div style='display: flex; flex-direction: row;'>
					<div id='left'>
						<asp:TextBox ID="username" Placeholder="username" runat="server"></asp:TextBox>
						<img src='https://image.flaticon.com/icons/svg/3/3897.svg'>
						<asp:TextBox ID="displayName" Placeholder="display name" runat="server"></asp:TextBox>
						<img src='https://image.flaticon.com/icons/svg/3/3897.svg'>
						<a class='text'>ARTIST<br>
							ACCOUNT</a>
					</div>
					<div id='center'>
						<asp:Button ID="btnEdit" runat="server" Text="UPDATE DETAILS" OnClick="btnEdit_Click" />
					</div>
					<div id='right'>
						<a href='Logout.aspx' class='text'>LOGOUT</a>
						<asp:TextBox ID="password" TextMode="Password" Placeholder="new password" runat="server"></asp:TextBox>
						<img src='https://image.flaticon.com/icons/svg/3/3897.svg'>
						<asp:TextBox ID="email" Placeholder="email" runat="server"></asp:TextBox>
						<img src='https://image.flaticon.com/icons/svg/3/3897.svg'>
						<asp:TextBox ID="skills" Placeholder="skills" runat="server"></asp:TextBox>
						<img src='https://image.flaticon.com/icons/svg/3/3897.svg'>
						<asp:TextBox ID="bio" Placeholder="bio" runat="server"></asp:TextBox>
						<img src='https://image.flaticon.com/icons/svg/3/3897.svg'>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>

</html>

