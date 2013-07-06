<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
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
    <form id="form1" runat="server">
    <% for (int i = 0; i < 7; i++)
       { %>
     
        <div class="ques"><b><%= i%> 
            <asp:Label ID="Label1" runat="server" Text="Label"
             DataSourceID="SqlDataSource2" DataTextField="question" DataValueField="question"></asp:Label>
          <%--  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [question],[id] FROM [surveyQuestions] WHERE [id]="+<%= i%>+""></asp:SqlDataSource>
            --%>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [surveyQuestions]"></asp:SqlDataSource>
            </b></div>
        <div class="choices">
        <% for (int j = 0; j < 7; j++)
           { %>
        <% } %>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="answer" 
                DataValueField="answer" 
                onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
            </asp:RadioButtonList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [answer] FROM [surveyAnswers]"></asp:SqlDataSource>
    </div>
       
    <% } %>
    </form>
    </article>
</asp:Content>
