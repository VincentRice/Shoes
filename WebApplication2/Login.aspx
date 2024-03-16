<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication2.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
    /* CSS styles */
    #main-content {
        margin-top: 50px;
    }

    .panel-heading h1 {
        text-align: center;
        color: #333;
    }

    .panel-body {
        margin-bottom: 10px;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-control {
        width: 100%;
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
    }

    .btn-primary:hover {
        color: #fff;
        background-color: #286090;
        border-color: #204d74;
    }
</style>

     <section id ="main-content">
         <section class ="wrapper">
             <div class="row">
                 <div class="col-1g-12">
                     <section class="panel">
                         <header class="panel-heading">
                             <div class="col-md-4 col-md-offset-4">
                                 <h1>LOGIN</h1>

                             </div>
                         </header>
                                <div class="panel-body"></div>
                                <div class="row"></div>
                                <div class="col-md-4 col-md-offset-4"></div>
                                <div class="form-group"></div>
                                <asp:Label runat="server" AssociatedControlID="txtempname"><b>Username</b></asp:Label> 
                                <asp:Textbox runat="server" required="required" Enabled="true" name="Username" ID="txtempname" class="form-control input-sm" placeholder="Name"></asp:Textbox> 
                                
                                
                                <div class="panel-body"></div>
                                <div class="row"></div>
                                <div class="col-md-4 col-md-offset-4"></div>
                                <div class="form-group"></div>
                                <asp:Label runat="server" AssociatedControlID="txtempname"><b>Email</b></asp:Label> 
                                <asp:Textbox runat="server" required="required" Enabled="true" name="Email" ID="Textbox3" class="form-control input-sm" placeholder="Email"></asp:Textbox>


                                <div class="panel-body"></div>
                                <div class="row"></div>
                                <div class="col-md-4 col-md-offset-4"></div>
                                <div class="form-group"></div>
                                <asp:Label runat="server" AssociatedControlID="txtempname"><b>Password</b></asp:Label> 
                                <asp:Textbox runat="server" required="required" Enabled="true" input type="Password" ID="Textbox1" class="form-control input-sm" placeholder="Password"></asp:Textbox>

                     </section>

                 </div>
             </div>

         </section>
     </section>

        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <br />
                <asp:Button Text="LOGIN" ID="btnlogin" CssClass="btn btn-primary" Width="200" runat="server"></asp:Button>
            </div>
        </div>
</asp:Content>
