<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Final.Default" %>
<%@ Register src="LocalNews.ascx" TagName="LocalNews" TagPrefix="uc1" %>
<%@ Register src="NationalNews.ascx" TagName="NationalNews" TagPrefix="uc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="Head1">
    <title>Rss Feed by Krys</title>
    <link href="css/myStyles.css" rel="stylesheet" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="scripts/myScript.js" type="text/javascript" charset="utf-8"></script>
    <script src="scripts/jquery.zweatherfeed.min.js " type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <p>SCC Sasquatch News</p>
        </header>
        <div id="date"><asp:Label ID="CurrentTime" runat="server" CssClass="time"></asp:Label></div>
        <div id="top">

<asp:Menu ID="Menu" runat="server" 
                    StaticMenuItemStyle-VerticalPadding="10px"
                    StaticMenuItemStyle-HorizontalPadding="10px"
                    RenderingMode="List" Orientation="Horizontal"
                    CssClass="navMenu">
                    <statichoverstyle backcolor="darkblue" forecolor="gold" />
    <Items>
        <asp:MenuItem Text="Home" NavigateUrl="Default.aspx"></asp:MenuItem>
        <asp:MenuItem Text="SCC"></asp:MenuItem>
        <asp:MenuItem Text="Canvas"></asp:MenuItem>
        <asp:MenuItem Text="Bookstore" NavigateUrl="Bookstore.aspx"></asp:MenuItem>
        <asp:MenuItem Text="Events"></asp:MenuItem>
        <asp:MenuItem Text="Information"></asp:MenuItem>
        <asp:MenuItem Text="Chat"></asp:MenuItem>
        <asp:MenuItem Text="Directory"></asp:MenuItem>
        <asp:MenuItem Text="Programs"></asp:MenuItem>
    </Items>
</asp:Menu>
         
        </div>
<div id="banner">
    <p>Commencement Ceremony June 21st at Spokane Arena!!!</p>
</div>
    <div id="leftColumn">

        <div class="article" id="map">
                <div class="ArtCaption"><a id="amap">Our Campus</a></div>
                <div id="artMap"></div>
                <div id="art">
                    <img id="Campus" src="Images/map.jpg" alt="Spokane, Washington" width="540"/></div>
                   
            </div>
            <div class="article" id="region1">
                <div class="ArtCaption"><a id="aregion1">Campus News</a></div>
                <div class="ArtData">
                    <uc1:LocalNews ID="LocalNews2" runat="server" />
                </div>
                
            </div>

            <div class="article" id="nation1">
                <div class="ArtCaption"><a id="national1">Campus Events</a></div>
                <div class="ArtData">
                    <uc2:NationalNews ID="NationalNews2" runat="server" />
                </div>
            </div>
        </div>
    <div id="rightColumn">

            <div class="article" id="weather">
                <div class="ArtCaption"><a id="aweather">Weather</a></div>
                <div id="artWeather"></div>
                <div id="artSpokane">
                    </div>
                   
            </div>

            <div class="article" id="region">
                <div class="ArtCaption"><a id="aregion">Regional News</a></div>
                <div class="ArtData">
                    <uc1:LocalNews ID="LocalNews1" runat="server" />
                </div>
                <div class="moreNewsButton">
                    <p>
                        <a href="http://www.kxly.com/news/-/101270/-/1320rlb/-/index.html" target="_blank">More Regional News ...</a></p>
                </div>
            </div>

            <div class="article" id="nation">
                <div class="ArtCaption"><a id="national">National News</a></div>
                <div class="ArtData">
                    <uc2:NationalNews ID="NationalNews1" runat="server" />
                </div>
                <div class="moreNewsButton">
                    <p>
                        <a href="http://www.kxly.com/news/national-news" 
	target="_blank" class="more">More National News...</a></p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

