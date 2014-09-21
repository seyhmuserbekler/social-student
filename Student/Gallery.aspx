<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Default.Master" CodeBehind="Gallery.aspx.cs" Inherits="eYillik.Student.Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid">
        <div class="span12">
            <!-- BEGIN BREADCRUMBS -->
            <ul class="breadcrumb">
                <li>
                    <i class="icon-home"></i>Yazılım Mühendisliği - 2014 Mezunları
                </li>

            </ul>
            <!-- END BREADCRUMBS -->
        </div>
    </div>

    <div class="row-fluid">
        <div class="span12">
            <div class="social-box">
                <div class="header">
                    <h4>Resim Galerisi</h4>
                </div>
                <!-- BEGIN GALLERY -->
                <div class="body gallery">
                    <!-- BEGIN GALLERY FORM -->
                    <div class="row-fluid">
                        <div class="row-fluid">
                            <div class="form-inline span6">
                                <asp:DropDownList ID="drpSirala" class="span6" runat="server" OnSelectedIndexChanged="drpSirala_SelectedIndexChanged">
                                    <asp:ListItem Text="A-Z" />
                                    <asp:ListItem Text="Z-A" />
                                </asp:DropDownList>
                                <asp:DropDownList ID="drpAlbum" class="span6" runat="server">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <!-- END GALLERY FORM -->
                    <hr>
                    <!-- BEGIN FIRST IMAGE ROW -->
                    <div class="row-fluid">
                        <ul class="thumbnails">
                            <asp:Repeater ID="rptGaleri" runat="server">
                                <ItemTemplate>
                                    <li class="span3">
                                        <asp:HyperLink class="thumbnail cboxElement" Target="_blank" NavigateUrl='<%# Eval("PicturePath").ToString().Replace("../../","") %>' runat="server">
                                            <div class="zoom">
                                                <asp:Image ImageUrl='<%# Eval("PicturePath").ToString().Replace("../../","") %>' Width="250px" Height="200px" runat="server" />
                                            </div>
                                        </asp:HyperLink>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <!-- END FIRST IMAGE ROW -->
                  
                    <!-- BEGIN GALLERY PAGINATION
                    <div class="pagination pagination-centered">
                        <ul>
                            <li class="disabled"><a href="#">«</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">»</a></li>
                        </ul>
                    </div>
                   END GALLERY PAGINATION -->
                    <!-- END GALLERY -->
                </div>

            </div>
        </div>
    </div>

</asp:Content>
