<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Default.Master" CodeBehind="Profile.aspx.cs" Inherits="eYillik.Student.Profile" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid">
        <div class="span12">
            <!-- BEGIN BREADCRUMBS -->
            <ul class="breadcrumb">
                <li>
                    <i class="icon-home"></i>Profil
                </li>

            </ul>
            <!-- END BREADCRUMBS -->
        </div>
    </div>

    <div id="user-profile" class="social-box">
        <div class="body">
            <div class="row-fluid">
                <div class="span2">
                    <div class="row-fluid">
                        <asp:Image ImageUrl="../../assets/img/pages/user-profiles/avatar.png" Width="158px" Height="158px" ID="imgAvatar" runat="server" class="img-polaroid avatar span12" runat="server" />
                    </div>
                    <p>
                    </p>
                    <!-- BEGIN SOCIAL ICONS -->
                    <p id="social-icons" class="text-center">
                        <asp:HyperLink ID="hypFacebook" Target="_blank" runat="server"><i class="icon-facebook-sign icon-2x"></i></asp:HyperLink>
                        <asp:HyperLink ID="hypTwitter" Target="_blank" runat="server"><i class="icon-twitter-sign icon-2x"></i></asp:HyperLink>
                        <asp:HyperLink ID="hypLinkedin" Target="_blank" runat="server"><i class="icon-linkedin-sign icon-2x"></i></asp:HyperLink>
                        <asp:HyperLink ID="hypPlus" Target="_blank" runat="server"><i class="icon-google-plus-sign icon-2x"></i></asp:HyperLink>
                    </p>
                    <!-- END SOCIAL ICONS -->

                </div>
                <div class="span10">
                    <div class="row-fluid">
                        <!-- BEGIN USER STATUS -->
                        <div id="user-status" class="span10 text-left">
                            <h3>
                                <asp:Label ID="spKullaniciAdi" runat="server" /></h3>
                            <h5>Yazılım Mühendisliği - 2014 Mezunu</h5>
                        </div>
                        <!-- END USER STATUS -->
                        <div class="span2">
                            <a href="#edit" class="btn btn-block btn-primary" id="edit-profile-button">Profil Düzenle</a>
                        </div>
                    </div>
                    <!-- BEGIN USER PANORAMIC -->
                    <p id="panoramic" class="row-fluid hidden-phone">
                        <img src="../../assets/img/pages/user-profiles/panoramic.jpg" class="img-rounded span12" height="260" />
                    </p>
                    <!-- END USER PANORAMIC -->
                </div>
            </div>


            <div class="row-fluid">
                <div class="span2">
                </div>

                <div class="span10">


                    <!-- BEGIN TABS SELECTIONS -->
                    <div class="row-fluid">
                        <ul id="profileTab" class="nav nav-tabs">
                            <li class="active">
                                <a href="#info" data-toggle="tab">Bilgilerim</a>
                            </li>
                        </ul>
                    </div>
                    <!-- END TABS SELECTIONS -->
                    <div class="row-fluid">
                        <!-- BEGIN TABS SECTIONS -->
                        <div id="profileTabContent" class="tab-content span9">
                            <div class="tab-pane fade in active" id="info">
                                <dl class="dl-horizontal">
                                    <dt>Kişisel</dt>
                                    <dd>
                                        <asp:Label ID="lblKisisel" runat="server" /></dd>

                                    <dd class="divider"></dd>

                                    <dt>Yeniden Başlasam</dt>
                                    <dd>
                                        <asp:Label ID="lblYeniden" runat="server" /></dd>

                                    <dd class="divider"></dd>

                                    <dt>Yenilere Tavsiyem</dt>
                                    <dd>
                                        <asp:Label ID="lblTavsiye" runat="server" /></dd>

                                    <dd class="divider"></dd>

                                    <dt>Dostlarım</dt>
                                    <dd>
                                        <asp:Label ID="lblDostlar" runat="server" /></dd>

                                    <dd class="divider"></dd>

                                    <dt>Yaşadığı yer</dt>
                                    <dd>
                                        <div id="places-lived" style="height: 150px;"></div>
                                        <br />
                                    </dd>

                                    <dt>Anılar</dt>
                                    <dd>
                                        <asp:Repeater ID="rptAni" runat="server">
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" Text='<%# Eval("RememberContent") %>' runat="server" />
                                            </ItemTemplate>
                                            <SeparatorTemplate><br /><br /></SeparatorTemplate>
                                        </asp:Repeater>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <!-- END TABS SECTIONS -->
                        <div class="span3" id="user-links">


                            <h4>Diğer Hesaplar</h4>
                            <ul class="unstyled">
                                <li>
                                    <asp:HyperLink ID="hypGithub" Target="_blank" runat="server"><i class="icon-github-sign"></i> Github</asp:HyperLink></li>
                                <li>
                                    <asp:HyperLink ID="hypPinterest" Target="_blank" runat="server"><i class="icon-pinterest-sign"></i> Pinterest</asp:HyperLink></li>
                            </ul>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <div id="user-edit" class="row-fluid social-box hide">
        <div class="body">
            <a href="#back" class="btn btn-warning" id="back-profile-button">
                <i class="icon-circle-arrow-left"></i>Geri
            </a>
            <div class="span12">
                <div class="row-fluid">
                    <div>
                        <div class="form-horizontal span6">
                            <div class="heading">
                                <h4 class="form-heading">Bilgilerini Güncelle</h4>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="username">Kullanıcı Adı</label>
                                <div class="controls">
                                    <asp:TextBox ID="username" runat="server" ReadOnly="true" />
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="firstname">Adı </label>
                                <div class="controls">
                                    <asp:TextBox ID="firstname" runat="server" ReadOnly="true" />
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="lastname">Soyadı </label>
                                <div class="controls">
                                    <asp:TextBox ID="lastname" runat="server" ReadOnly="true" />
                                </div>
                            </div>

                            <div class="control-group">
                                <div class="controls">
                                    <asp:Button Text="Kaydet" class="btn btn-primary" runat="server" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>

                        <div class="form-horizontal span6">
                            <div class="heading">
                                <h4 class="form-heading">Şifreni Değiştir </h4>
                            </div>

                            <p></p>

                            <asp:ChangePassword ID="ChangePassword1" runat="server">
                                <ChangePasswordTemplate>
                                    <table cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
                                        <tr>
                                            <td>
                                                <table cellpadding="0">
                                                    <tr class="control-group">
                                                        <td align="right" valign="middle" class="controls">
                                                            <asp:Label ID="CurrentPasswordLabel" class="control-label" for="currentpassword" runat="server" AssociatedControlID="CurrentPassword">Parola: </asp:Label>
                                                        <br /><br />
                                                        </td>
                                                        <td class="controls">
                                                            <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword" ErrorMessage="Parola gerekli." ToolTip="Parola gerekli." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                                         <br /><br />
                                                        </td>
                                                    </tr>
                                                    <tr class="control-group">
                                                        <td align="right" valign="middle" class="controls">
                                                            <asp:Label ID="NewPasswordLabel" class="control-label" for="newpassword" runat="server" AssociatedControlID="NewPassword">Yeni Parola: </asp:Label>
                                                        <br /><br />
                                                        </td>
                                                        <td class="controls">
                                                            <asp:TextBox ID="NewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword" ErrorMessage="Yeni parola gerekli." ToolTip="Yeni parola gerekli." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                                        <br /><br />
                                                        </td>
                                                    </tr>
                                                    <tr class="control-group">
                                                        <td align="right" valign="middle" class="controls">
                                                            <asp:Label ID="ConfirmNewPasswordLabel" class="control-label" for="confirmpassword" runat="server" AssociatedControlID="ConfirmNewPassword">Tekrar Yeni Parola: </asp:Label>
                                                        <br /><br />
                                                        </td>
                                                        <td class="controls">
                                                            <asp:TextBox ID="ConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword" ErrorMessage="Tekrar yeni parola gerekli." ToolTip="Tekrar yeni parola gerekli." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                                        <br /><br />
                                                        </td>
                                                    </tr>
                                                    <tr class="control-group">
                                                        <td align="center" colspan="2">
                                                            <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="Yeni Parola ve Tekrar Yeni Parola eşleşmelidir." ValidationGroup="ChangePassword1"></asp:CompareValidator>
                                                        </td>
                                                    </tr>
                                                    <tr class="control-group">
                                                        <td align="center" colspan="2" style="color: Red;">
                                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                        </td>
                                                    </tr>
                                                    <tr class="control-group">
                                                        <td align="right" valign="middle" class="controls">
                                                            
                                                        </td>
                                                        <td class="controls">
                                                            <asp:Button ID="ChangePasswordPushButton" class="btn btn-primary" runat="server" CommandName="ChangePassword" Text="Şifre Değiştir" ValidationGroup="ChangePassword1" />&nbsp;&nbsp;
                                                            <asp:Button ID="CancelPushButton" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </ChangePasswordTemplate>
                            </asp:ChangePassword>


                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="footer text-center">
        </div>

    </div>

</asp:Content>
