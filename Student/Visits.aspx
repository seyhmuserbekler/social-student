<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Default.Master" CodeBehind="Visits.aspx.cs" Inherits="eYillik.Student.Visits" %>

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

                                    <dt>Anı Yaz</dt>
                                    <dd>
                                        <asp:TextBox ID="txtYorum" Width="97%" TextMode="MultiLine" runat="server" />
                                        <br />
                                        <asp:Button ID="btnYorum" Text="Gönder" OnClick="btnYorum_Click" runat="server" />
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
</asp:Content>
