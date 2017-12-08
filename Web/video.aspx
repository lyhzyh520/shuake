<%@ Page Title="" Language="C#" MasterPageFile="~/web.Master" AutoEventWireup="true" CodeBehind="video.aspx.cs" Inherits="Web.video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <%--<asp:ListView ID="VideoTopListView" runat="server">
        <LayoutTemplate>
            <div class="container" id="itemPlaceholderContainer" runat="server">
            <div class="row"  runat="server">
                <div class="col-xs-12 col-sm-4 col-md-4"  runat="server">
                    <div class="recent-work-wrap" id="itemPlaceholder" runat="server">
                       </div>
                </div>
            </div>
                </div>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="recent-work-wrap"  runat="server">
                <asp:HyperLink ID="HyperLink1" Visible='<%#System.IO.File.Exists(Server.MapPath(Eval("Images").ToString())) %>' runat="server" ImageUrl='<%#Eval("Images")%>' ImageWidth="250" ImageHeight="150"></asp:HyperLink>
                       </div>
        </ItemTemplate>
    </asp:ListView>--%>
    
</asp:Content>
