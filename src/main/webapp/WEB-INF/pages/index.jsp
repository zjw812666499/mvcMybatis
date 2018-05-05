<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>
<title>PersonProject</title>

<!-- 新 Bootstrap 核心 CSS 文件 -->
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
<!-- 可选的Bootstrap主题文件（一般不使用）
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script> -->
 
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
 
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Jquery的验证文件 -->
 <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
 <!-- Jquery的验证反馈信息文件 -->
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
<script  src="${basePath}/js/login.js"></script>
<script  src="${basePath}/js/reg.js"></script>
<style>
	.error{
		color : red;
	}
</style>
</head>

<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <nav class="navbar navbar-default" role="navigation">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="loginUI.do">首页</a>
                    </div>

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active">
                                <a href="#">个人主页</a>
                            </li>
                            <li>
                                <a href="#">经历</a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">技能
                                    <strong class="caret"></strong>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="#">Java开发</a>
                                    </li>
                                    <li>
                                        <a href="web.html">Web前端</a>
                                    </li>
                                    <li>
                                        <a href="#">Lua</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <form class="navbar-form navbar-left" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" id="input"/>
                            </div>
                            <button type="submit" class="btn btn-default" onclick="searchfunction()">搜索</button>
                        </form>
                       <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a id="login"  data-toggle="modal" data-target="#loginModal">登录</a>
                            </li>
                            <li>
                                <a id="reg" data-toggle="modal" data-target="#regModal">注册</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
         <!-- 模态框（Modal） -->
        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h4 class="modal-title" id="myModalLabel">
                          <strong>用户登录</strong>
                        </h4>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <div class="row clearfix">
                                <div class="col-md-12 column">
                                    <form class="cmxform" role="form" id="loginFrom">
                                        <div class="form-group">
                                             <label for="exampleInputEmail1">用户名</label><input type="text" class="form-control" id="username" name ="username" style="width:500px"/>
                                        </div>
                                        <div class="form-group">
                                             <label for="exampleInputPassword1">密码</label><input type="password" class="form-control" id="userPwd" name="userPwd" style="width:500px"/>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                        </button>
                        <button type="submit" class="btn btn-default" id="tologinid" >
                          登录
                        </button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div>
        <!-- 模态框（Modal） -->
        <div class="modal fade" id="regModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h4 class="modal-title" id="myModalLabel">
                          <strong>注册账户</strong>
                        </h4>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <div class="row clearfix">
                                <div class="col-md-12 column">
                                    <form class="cmxform" role="form" id="regFrom">
                                        <div class="form-group">
                                             <label for="exampleInputEmail1">用户名</label><input type="text" class="form-control" id="regusername" name ="regusername" style="width:500px"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">邮箱</label><input type="email" class="form-control" id="regemail" name ="regemail" style="width:500px"/>
                                       </div>
                                        <div class="form-group">
                                             <label for="exampleInputPassword1">密码</label><input type="password" class="form-control" id="reguserPwd1" name="regserPwd1" style="width:500px"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword2">确认密码</label><input type="password" class="form-control" id="reguserPwd2" name="reguserPwd2" style="width:500px"/>
                                       </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                        </button>
                        <button type="submit" class="btn btn-default" id="toreg" >
                          注册
                        </button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div>
        
        <div class="jumbotron">
                <div id="myCarousel" class="carousel slide">
                        <!-- 轮播（Carousel）指标 -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>   
                        <!-- 轮播（Carousel）项目 -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="${basePath}/image/1.jpg" alt="First slide" style="width:100%;height:450px;margin:0 auto;">
                                <div class="carousel-caption">Java开发</div>
                            </div>
                            <div class="item">
                                <img src="${basePath}/image/2.jpg" alt="Second slide" style="width:100%;height:450px;margin:0 auto;">
                                <div class="carousel-caption">Web前端</div>
                            </div>
                            <div class="item">
                                <img src="${basePath}/image/3.jpg" alt="Third slide" style="width:100%;height:450px;margin:0 auto;">
                                <div class="carousel-caption">Lua</div>
                            </div>
                        </div>
                        <!-- 轮播（Carousel）导航 -->
                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">上一个</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">下一个</span>
                        </a>
                    </div> 
        </div>
        <div class="row clearfix">
            <div class="col-md-4 column">
                <h2>
                    Java
                </h2>
                <p>
                        Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、
                        指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，
                        极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程
                </p>
                <p>
                    <a class="btn" href="#">了解更多 »</a>
                </p>
            </div>
            <div class="col-md-4 column">
                <h2>
                        Web前端
                </h2>
                <p>
                        本书《Web前端设计与开发-HTML+CSS+JavaScript+HTML 5+jQuery》 [1]  深入介绍了Web前端设计相关的各种技术，
                        内容涵盖HTML基本标签、表格与框架、CSS页面布局、JavaScript基本语法、JavaScript对象、BOM和DOM编程、HTML5、
                        jQuery框架以及自定义插件。
                </p>
                <p>
                    <a class="btn" href="#">了解更多 »</a>
                </p>
            </div>
            <div class="col-md-4 column">
                <h2>
                    Lua
                </h2>
                <p>
                        Lua [1]  是一个小巧的脚本语言。是巴西里约热内卢天主教大学（Pontifical Catholic University of Rio de Janeiro）
                        里的一个研究小组，由Roberto Ierusalimschy、Waldemar Celes 和 Luiz Henrique de Figueiredo所组成并于1993年开发。 
                        其设计目的是为了嵌入应用程序中，从而为应用程序提供灵活的扩展和定制功能。Lua由标准C编写而成，几乎在所有操作系统和平台
                        上都可以编译，运行.
                </p>
                <p>
                    <a class="btn" href="#">了解更多 »</a>
                </p>
            </div>
        </div>
    </div>
</body>
</html>