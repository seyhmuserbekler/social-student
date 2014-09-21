<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Default.Master" CodeBehind="Help.aspx.cs" Inherits="eYillik.Help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid">
        <div class="social-box">
            <div class="header">
                <h4>Sıkça Sorulan Sorular</h4>
            </div>
            <div class="body">
                <div class="accordion" id="accordion">
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Soru 1: Anı yazısı nasıl yazılır?
                      </a>
                        </div>

                        <div id="collapseOne" class="accordion-body collapse" style="height: 0px;">
                            <div class="accordion-inner">
                               Kullanıcılar sisteme giriş yaptıktan sonra ilk olarak profili açılır sol tarafta tüm sınıfın listesi görülecek istediği kişinin ismine tıkladığında o kişinin profiline gidilelecek, anı yazısını yazabilir
                     
                            </div>
                        </div>
                    </div>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Soru 2: profilimi nerden güncelleyebilirim?
                      </a>
                        </div>
                        <div id="collapseTwo" class="accordion-body collapse">
                            <div class="accordion-inner">
                                Kullanıcı sisteme giriş yaptıktan sonra sağ üst tarafta profil düzenle kısmından istediği bilgilerini düzenleyebilir.
                     
                            </div>
                        </div>
                    </div>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Soru 3: profilimi kimler görebilecek?
                      </a>
                        </div>
                        <div id="collapseThree" class="accordion-body collapse">
                            <div class="accordion-inner">
                                Profilini sisteme giriş yapan herkes görebilir
                            </div>
                        </div>
                    </div>
                    
                        
                </div>
            </div>
        </div>
    </div>
</asp:Content>
