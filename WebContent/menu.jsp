<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>文件上传</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <!-- <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> -->
  </head>
  
  <body>
  <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  <!-- <div class="jumbotron text-center" style="margin-bottom:0">
  <h4>我的第一个 Bootstrap 页面</h4>
  <p>重置浏览器窗口大小查看效果！</p> 
  </div> -->
 
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      	<li><a href="${pageContext.request.contextPath}/menu.jsp">菜单</a></li>
        <li><a href="${pageContext.request.contextPath}/upload.jsp">文件上传</a></li>
        <li><a href="${pageContext.request.contextPath}/download.jsp">文件下载</a></li>
      </ul>
    </div>
  </div>
</nav>
 
<div class="container">
  <div class="row">
    <!-- <div class="col-sm-4">
      
      <h3>链接</h3>
      <p>描述文本。</p>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#">链接 1</a></li>
        <li><a href="#">链接 2</a></li>
        <li><a href="#">链接 3</a></li>
      </ul>
      <hr class="hidden-sm hidden-md hidden-lg">
    </div> -->
    <!-- <div class="col-sm-8">
      <h2>标题</h2>
      <h5>副标题</h5>
      <div class="fakeimg">图像</div>
      <p>一些文本..</p>
      <p>菜鸟教程，学的不仅是技术，更是梦想！！！菜鸟教程，学的不仅是技术，更是梦想！！！菜鸟教程，学的不仅是技术，更是梦想！！！</p>
      <br>
      <h2>标题</h2>
      <h5>副标题</h5>
      <div class="fakeimg">图像</div>
      <p>一些文本..</p>
      <p>菜鸟教程，学的不仅是技术，更是梦想！！！菜鸟教程，学的不仅是技术，更是梦想！！！菜鸟教程，学的不仅是技术，更是梦想！！！</p>
    </div> -->
  </div>
</div>
 
<!-- <div class="jumbotron text-center" style="margin-bottom:0">
  <p>底部内容</p>
</div> -->
  </body>
</html>