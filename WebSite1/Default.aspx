<%@ Page Title="Anasayfa" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Radio1_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <article class="article-title"> Başlık</article>
    <article class="article-body">
    <form class="questions">
    <% for (int i = 0; i < 7; i++)
       { %>
     
        <div class="ques"><b><%= i%> - </b>Bir şeyi basitçe açıklayamıyorsan yeterince iyi anlamamışsın demektir.</div>
        <div class="choices">
        <% for (int j = 0; j < 7; j++)
           { %>
            <div class="choice">
          <input id="Radio1" type="radio" onclick="return Radio1_onclick()" />Tamamı denenmiş ve fotoğraflanmış olan yemek tariflerinin bulunduğu Nefis Yemek <br />
         </div>
        <% } %></div>
       
    <% } %>
    </form>
    </article>
</asp:Content>
