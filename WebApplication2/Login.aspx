
<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<style>
    /* CSS styles */
    #login-container {
        margin-top: 50px;
        text-align: center;
    }

    .panel-heading h1 {
        text-align: center;
        color: #333;
    }

    .panel-body {
        margin-bottom: 10px;
        display: inline-block;
        text-align: left;
    }

    .form-group {
        margin-bottom: 15px;
        text-align: left; 
    }

    .form-control {
        width: 300%;
        height: 34px;
        padding: 6px 12px;
        font-size: 14px;
        line-height: 1.42857143;
        color: #555;
        background-color: #fff;
        background-image: none;
        border: 1px solid #ccc;
        border-radius: 4px;
        -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;

    }

    .btn-primary {
        color: #fff;
        background-color: #337ab7;
        border-color: #2e6da4;
        margin-top: 10px; 
    }

    .btn-primary:hover {
        color: #fff;
        background-color: #286090;
        border-color: #204d74;
    }

    .text-success,
    .text-danger {
        display: block;
        margin-top: 10px;
    }
</style>
<div id="login-container">
    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-1g-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <h1>LOGIN</h1>
                        </header>
                        <div class="panel-body">
                            <asp:Label ID="lblSuccessMessage" runat="server" CssClass="text-success" Visible="false" ForeColor="Red"></asp:Label>
                            <asp:Label ID="lblErrorMessage" runat="server" CssClass="text-danger" Visible="false" ForeColor="Red"></asp:Label>
                            
                            <div class="col-md-4 col-md-offset-4">
                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="Username"><b>Username</b></asp:Label>
                                    <asp:TextBox runat="server" required="required" Enabled="true" ID="Username" CssClass="form-control input-sm" placeholder="Username"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="Password"><b>Password</b></asp:Label>
                                    <asp:Textbox runat="server" required="required" Enabled="true" ID="Password" TextMode="Password" CssClass="form-control input-sm" placeholder="Password"></asp:Textbox>
                                </div>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <asp:Button Text="LOGIN" ID="btnlogin" CssClass="btn btn-primary" Width="200" runat="server" OnClick="Btnlogin_Click"></asp:Button>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <div class="form-group">
                                    <a href="Register.aspx">Sign up</a>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </section>
</div>
<script type="text/javascript">
    window.onload = function () {
        hideMessages();
    };

    function hideMessages() {
        var successMessage = document.getElementById('<%= lblSuccessMessage.ClientID %>');
        var errorMessage = document.getElementById('<%= lblErrorMessage.ClientID %>');

        setTimeout(function () {
            if (successMessage) {
                successMessage.style.display = 'none';
            }

            if (errorMessage) {
                errorMessage.style.display = 'none';
            }
        }, 3000);
    }
</script>
</asp:Content>