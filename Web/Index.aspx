﻿<%@ Page Title="" Language="C#" MasterPageFile="~/web.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-slide" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#main-slide" data-slide-to="0" class="active"></li>
            <li data-target="#main-slide" data-slide-to="1"></li>
            <li data-target="#main-slide" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active">
                <img class="img-responsive" src="images/slider/bg1.jpg" alt="slider">
                <div class="slider-content">
                    <div class="col-md-12 text-center">
                        <h2>名师视频解析 <span class="logo"></span></h2>
                        <h3>让你稳稳拿到软考证书.</h3>
                        <p><a href="about.html" class="slider btn">点击观看</a> </p>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="img-responsive" src="images/slider/bg2.jpg" alt="slider">
                <div class="slider-content">
                    <div class="col-md-12 text-center">
                        <h2><strong>最棒的</strong>智能题库</h2>
                        <h3>经典习题在线练</h3>
                        <p><a href="portfolio.html" class="slider btn">开始练习</a> </p>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="img-responsive" src="images/slider/bg3.jpg" alt="slider">
                <div class="slider-content">
                    <div class="col-md-12 text-center">
                        <h2><strong>涨姿势</strong> 交朋友</h2>
                        <h3>兴趣小组，你不会的，这里都能找到答案！</h3>
                        <p><a href="portfolio.html" class="slider btn">点击加入</a> </p>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#main-slide" data-slide="prev"><span><i class="fa fa-angle-left"></i></span></a><a class="right carousel-control" href="#main-slide" data-slide="next"><span><i class="fa fa-angle-right"></i></span></a>
    </div>
    <section id="feature" style="padding: 72px 0;">
        <div class="container">
            <div class="center">
                <h2>练习中心</h2>
                <hr>
                <p class="lead">针对性专项练习，软考考什么？怎么考？一刷便知！<a href="services.html">点击练习 →</a></p>
            </div>
            <div class="row">
                <div class="features">
                    <div class="col-md-4 col-sm-6">
                        <div class="feature-wrap">
                            <i class="fa fa-laptop"></i>
                            <h2>练习题</h2>
                            <h3>要练,就要练最有用的！</h3>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="feature-wrap">
                            <i class="fa fa-code"></i>
                            <h2>错题集</h2>
                            <h3>错题重做，每次都有新感觉.</h3>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="feature-wrap">
                            <i class="fa fa-bullhorn"></i>
                            <h2>收藏夹</h2>
                            <h3>经典好题，方便下次查看</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="recent-works" style="padding: 72px 0;">
        <div class="container">
            <div class="center">
                <h2>精品课程</h2>
                <hr>
                <p class="lead">在线课程,到中国知名的网络学习互动平台,,名师在线一对一指导. <a href="portfolio.html" class="readmore">点击观看→</a></p>

            </div>

             <asp:ListView ID="ListView1" runat="server">
        <LayoutTemplate>
            <div class="row">
            <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                </div>
        </LayoutTemplate>
        <ItemTemplate>
                
     <div class="col-xs-12 col-sm-4 col-md-4">
        <div class="recent-work-wrap">  <img class="img-responsive" alt=""  runat="server" src='<%#Eval("Images")%>'>
 
          <div class="overlay">
            <div class="recent-work-inner">
              <h3><a href="#"><%#Eval("VideoName")%></a> </h3>
              <p><%#Eval("VideoBrief")%></p>
             <a href='VideoDetail.aspx?id=<%#Eval("VideoID") %>' target="_blank"><i class="fa fa-search"></i> View</a> </div>
          </div>
        </div>
      </div>
      </ItemTemplate>
    </asp:ListView>
        </div>
</section>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="js/owl.carousel.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
</asp:Content>
