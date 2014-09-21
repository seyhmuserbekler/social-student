<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="eYillik.Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Social Yearly / Login</title>
    <link rel="stylesheet" href="css/pinboard_474139f4.css" type="text/css" media="all" />
    <!--[if (gt IE 6)&(lt IE 9)]><link rel="stylesheet" href="css/ie7-and-up_7d47f66b.css" type="text/css" media="all" /><![endif]-->
    <script type="text/javascript">        var _sf_startpt = (new Date()).getTime()</script>
    <script type="text/javascript">        if (!window.console) { window.console = { log: function () { } } };</script>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="js/bundle_pin_4b76d125.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
    <h1 id="login_logo">
        <a href='<%= Page.ResolveUrl("~")%>Login/Default.aspx'></a>
    </h1>
    <form id="Form1" class="Form FancyForm AuthForm" method="POST" runat="server" accept-charset="utf-8">
        <asp:Login ID="Login1" runat="server" FailureText="Giriş başarısız. Lütfen tekrar deneyiniz."
            Font-Bold="True" ForeColor="#CC0000"
            DestinationPageUrl="~/Student/Profile.aspx">
            <LayoutTemplate>
                <ul>
                    <li>
                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                        <label>
                            Kullanıcı Adı</label>
                        <span class="fff"></span><span class="helper red">
                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                ErrorMessage="Kullanıcı Adı alanının doldurulması zorunludur." ToolTip="Kullanıcı Adı alanının doldurulması zorunludur."
                                ValidationGroup="ctl02">*</asp:RequiredFieldValidator>
                        </span></li>
                    <li>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                        <label>
                            Şifre</label>
                        <span class="fff"></span><span class="helper red">
                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                ErrorMessage="Şifre alanının doldurulması zorunludur." ToolTip="Şifre alanının doldurulması zorunludur."
                                ValidationGroup="ctl02">*</asp:RequiredFieldValidator>
                        </span></li>
                    <li style="font-size: small; font-weight: bold; background-position: center">
                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                        <asp:Label ID="Label1" runat="server" />
                    </li>
                </ul>
                <div class="non_inputs">
                    <strong>
                        <asp:Button ID="Button1" runat="server" CommandName="Login"
                            Text="Giriş Yap" ValidationGroup="ctl02"
                            Height="30px" /></strong>
                </div>
            </LayoutTemplate>
        </asp:Login>
    </form>
    <!-- .Form.FancyForm.AuthForm -->
    <script type="text/javascript">
        $(document).ready(function () {
            Login.setup();
            FancyForm.setup();
        });
    </script>
    <div id="SearchAutocompleteHolder">
    </div>
</body>
</html>
