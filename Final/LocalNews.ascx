<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LocalNews.ascx.cs" Inherits="Final.LocalNews" %>
<asp:XmlDataSource ID="XmlDataSource1" runat="server" 
    XPath="rss/channel/item[position()<6]" 
    DataFile="http://www.kxly.com/news/spokane-news/-/101214/-/format/rss_2.0/view/asFeed/-/tytau2/-/index.xml">
</asp:XmlDataSource>
<asp:DataList ID="FeedList" runat="server" DataSourceID="XmlDataSource1">
    <ItemTemplate>
        <div class="newsBody">
            <div class="newsTitle">
                <a href='<%# XPath("link") %>  ' target="_blank">
                    <%# XPath("title")%></a></div>
            <div class="newsDescript">
                <%# XPath("description")%>
            </div>
            <div class="newsImage">
                <a href='<%# XPath("enclosure/@url") %>' target="_blank">
                
                    <img class="imgClass" src='<%# XPath("enclosure/@url") %>' alt='<%# XPath("title")%>' />
                </a>
            </div>
            <div class="newsDate">
                <i>Published
                    <%# XPath("pubDate")%></i>
            </div>
            <div class="newsMore">
                [<a href='<%# XPath("link") %>' target="_blank">more...</a>]
            </div>
      </div>
    </ItemTemplate>

</asp:DataList>
