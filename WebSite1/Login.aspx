<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
        <article class="form-title">
            üye girişi</article>
        <form class="form-horizontal form-signin" action="" method="post">
        <% if (false)
           { // TODO%>
        <div class="alert alert-error">
            <center>
                <strong><#%=error%></strong>
            </center>
        </div>
        <% } %>
        <div class="control-group">
            <label class="control-label" for="inputEmail">
                Email</label>
            <div class="controls">
                <input type="text" id="inputEmail" name="email" placeholder="Email">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="inputPassword">
                Parola</label>
            <div class="controls">
                <input type="password" id="inputPassword" name="passwd" placeholder="Parola">
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <button type="submit" class="btn btn-inverse">
                    Giriş</button>
            </div>
        </div>
        </form>
    </div>
</asp:Content>
