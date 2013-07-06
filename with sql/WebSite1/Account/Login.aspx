<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <script language="javascript" type="text/javascript">
// <![CDATA[

        // function inputEmail_onclick() {

        // }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
        <article class="form-title">
            üye girişi</article>
        <form class="form-horizontal form-signin" action="" method="post" runat="server">
   <%--     <% if (Session["error"] != null)
           { %>--%>
        <div class="alert alert-error">
            <center>
                <strong>
                   <asp:Label ID="hata" runat="server" Text=""></asp:Label></strong>
            </center>
        </div>
   <%--     <% } %>--%>
        <div class="control-group">
            <label class="control-label" for="inputEmail">
                Kullanıcı Adı</label>
            <div class="controls">
                <%--<input type="text" id="inputEmail" name="email" placeholder="Email" onclick="return inputEmail_onclick()" />--%>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="inputPassword">
                Parola</label>
            <div class="controls">
                <%--<input type="password" id="inputPassword" name="passwd" placeholder="Parola" />--%>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <%--<button type="submit" class="btn btn-inverse">
                    Giriş</button>--%>
                <asp:Button ID="btnGiris" runat="server" OnClick="btnGiris_Click" Text="Giriş" />
            </div>
        </div>
        </form>
    </div>
</asp:Content>
