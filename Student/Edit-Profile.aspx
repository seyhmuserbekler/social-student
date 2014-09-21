<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Default.Master" CodeBehind="Edit-Profile.aspx.cs" Inherits="eYillik.Student.Edit_Profile" %>


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

    <div id="Div2" class="row-fluid social-box">
        <div id="user-edit" class="row-fluid social-box">
            <div class="body">
                <a href="#back" class="btn btn-warning" id="back-profile-button">
                    <i class="icon-circle-arrow-left"></i>Geri
        </a>
                <div class="span12">
                    <div class="row-fluid">
                        <div>
                            <form class="form-horizontal span6">
                                <div class="heading">
                                    <h4 class="form-heading">Bilgilerini Güncelle</h4>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="username">Kullanıcı Adı</label>
                                    <div class="controls">
                                        <input type="text" id="username" value="myUsername">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Avatar</label>
                                    <div class="controls">

                                        <div class="fileupload fileupload-new" data-provides="fileupload">
                                            <div class="fileupload-new thumbnail" style="width: 50px; height: 50px;">
                                                <img src="../../assets/img/avatar-55.png" alt="Selected image" />
                                            </div>
                                            <div class="fileupload-preview fileupload-exists thumbnail" style="width: 50px; height: 50px;"></div>
                                            <span class="btn btn-file">
                                                <span class="fileupload-new">Resim Seçin</span>
                                                <span class="fileupload-exists">Değiştir</span>
                                                <input type="file" />
                                            </span>
                                            <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Sil</a>
                                        </div>

                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="firstname">First Name</label>
                                    <div class="controls">
                                        <input type="text" id="firstname" value="Julio">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="lastname">Last Name</label>
                                    <div class="controls">
                                        <input type="text" id="lastname" value="Márquez">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="email">Email</label>
                                    <div class="controls">
                                        <input type="text" id="email" value="email@example.com">
                                    </div>
                                </div>

                               <%-- <div class="control-group">
                                    <label class="control-label" for="language">Language</label>
                                    <div class="controls" style="width: 220px;">

                                        <select id="language" class="chzn-select">
                                            <option>English</option>
                                            <option selected="selected">Español</option>
                                            <option>Portugais</option>
                                            <option>Français</option>
                                            <option>Türk</option>
                                        </select>

                                    </div>
                                </div>--%>


                                <div class="control-group">
                                    <div class="controls">
                                        <button type="submit" class="btn btn-primary">Save</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div>
                            <form class="form-horizontal span6">
                                <div class="heading">
                                    <h4 class="form-heading">Change Password</h4>
                                </div>

                              

                                <div class="control-group">
                                    <label class="control-label" for="currentpassword">mevut şifre</label>
                                    <div class="controls">
                                        <input type="password" id="currentpassword">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="newpassword">yeni </label>
                                    <div class="controls">
                                        <input type="password" id="newpassword" placeholder="Min. 8 karakter">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="confirmpassword">Confirm Password</label>
                                    <div class="controls">
                                        <input type="password" id="confirmpassword" placeholder="Min. 8 karakter">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <div class="controls">
                                        <button type="submit" class="btn btn-primary">Şifreyi değiştir</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="footer text-center">
               
   
            </div>
        </div>
    </div>
</asp:Content>