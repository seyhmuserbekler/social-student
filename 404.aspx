<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Default.Master" CodeBehind="404.aspx.cs" Inherits="eYillik._404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid">
        <!-- BEGIN ERROR 404 CONTENT -->
        <div class="error-404">
            <i class="icon-warning-sign icon-4x error-icon"></i>
            <h1>Page Not Found</h1>
            <span class="text-error"><small><strong>Error 404</strong></small></span>
            <p>Sorry, but the page you were trying to view does not exist.</p>
        </div>
        <!-- END ERROR 404 CONTENT -->
    </div>
</asp:Content>
