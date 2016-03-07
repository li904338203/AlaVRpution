<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Alavrpution.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>阿拉VR</title>
		<link rel="stylesheet" href="css/bootstrap.css"/>
		<link rel="stylesheet" href="css/style.css"/>
		<link rel ="stylesheet" href="css/style_common.css" />
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script  language="javascript">
            <%--var a ="<% =getjs()%>";
            console.log(a);--%>




        </script>
    
         





</head>
	<body>
      <form id="form1" runat="server">
		<div id="lgag" class="navbar navbar-default navbar-fixed-top"  runat="server">
			<div class="container">
				<div class="navbar-header">
					<a href="#" class="navbar-brand logo "><img src="img/阿拉VRlogo.png" alt="阿拉VR"></a>
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<!--<li><img src="img/发布up.png" style="width: 75px; height: 45px;padding: 16.0px 0 5px 0;"><span class="xs-hidden"></li>-->
						<li class="hidden-xs"style="left:-20px;"><%--<button data-toggle="modal"  data-target="#moderup"  class="upmoder"><font color="#EEEEEE" style=""> &nbsp; &nbsp; 发布</font></button> --%><input type="button" data-toggle="modal"  data-target="#moderup" class="upmoder" value=" &nbsp;&nbsp;发 布"></li>
						<li><a data-toggle="modal"  data-target="#Signup"  href="#" ><font style="font-weight:bold;font-style: inherit;">注册</font></a></li>
						<li><a data-toggle="modal"  data-target="#Login" href="#"><font style="font-weight:bold;font-style:inherit;">登陆</font></a></li>		
					</ul>	
				</div>
			</div>
		</div>

          <div id="lg" class="navbar navbar-default navbar-fixed-top" style="display:none" runat="server">
			<div class="container">
				<div class="navbar-header">
					<a href="index.html" class="navbar-brand logo "><img src="img/阿拉VRlogo.png" alt="阿拉VR"></a>
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse"> 
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<!--<li><img src="img/发布up.png" style="width: 75px; height: 45px;padding: 16.0px 0 5px 0;"><span class="xs-hidden"></li>-->
						<li class="hidden-xs"style="left:-20px;"><input type="button" data-toggle="modal"  data-target="#moderup" class="upmoder" value=" &nbsp;&nbsp;发 布"> </li>
						<li class="dropdown"><a href="#" class="li dropdown-toggle" data-toggle="dropdown"><img src="img/用户头像1.png"  style="height:25px"/> &nbsp;<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span>
							<ul class="dropdown-menu" role="menu">
			                    <li><a href="centers.html">个人中心</a></li>
			                    <li><a href="#">上传作品</a></li>
			                    <li><a href="#">回到首页</a></li>
                                 <%--<li><a><input type="button" name="Button" value="注 销"style="c" runat="server" ></a></li>--%>
                                <li><a><asp:Button ID="zhuxiao" runat="server"  Style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px; background-color:transparent;border:0" Text="注 销" OnClick="zhuxiao_Click" /></a></li>
                                 
			                </ul>
						
						</li>
					</ul>	
					
				</div>
			</div>
        </div>





		<div id="myCarousel" class="carousel slide">
			<ol class="carousel-indicators lunbo">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active" style="background:#333333">
					<img src="img/广告图片1.png" alt="第一张">
				</div>
				<div class="item" style="background:#333333;">
					<img src="img/广告图片1.png" alt="第二张">
				</div>
				<div class="item" style="background:#333333;">
					<img src="img/广告图片1.png" alt="第三张">
				</div>
<!-- 		<div style="background:#eee;">
			<img src="img/slide.png" alt="第三张">
		</div> -->
			</div>
				<a href="#myCarousel" data-slide="prev" class="carousel-control left">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a href="#myCarousel" data-slide="next" class="carousel-control right">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>
		</div>
		<div id="case" style="background-color:#DCDCDC;">
			<div class="container">
				<div class="htdiv1" style="height: 40px;"></div>
				<div class="demo_line_02">
					<span>编辑推荐</span>
				</div>
				        
<%--                <asp:Repeater ID="Modertuiji" runat="server">

                     <ItemTemplate>
                         <div class="row">
                        <div class="col-md-4 col-sm-6 col-xs-12" >
							<div class="thumbnail">
							<div class="vss1">
							<img class="carousel-inner view-first" src="<%#Eval("ModerPath") %>" alt="">
							</div>
								<div class="caption">
									<table border="0" cellspacing="" cellpadding="">
										<tr>
											<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;"><%#Eval("Follow") %></td>
											<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;"><%#Eval("dianzan") %></td>
											<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 13%;"> &nbsp; <%#Eval("CommentNums") %></td>
										</tr>
									</table>
								</div>
								<div class="userhead">
									<table>
										<tr>
											<td rowspan="2" style="width: 25%;"><img src="img/用户头像1.png" /></td>
											<td><p style="font-size: 15px;font-style: normal;"><%#Eval("ModerName") %></p></td>
											<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										</tr>
										<tr>
											<td><p style="color: #999999;">by Adam mish</p></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
                        </div>
                        </ItemTemplate>
                </asp:Repeater>--%>
                <div class="row">
                  <asp:Repeater ID="Modertuiji" runat="server">
                     <ItemTemplate>  
                        <div class="col-md-4 col-sm-6 col-xs-12" >
							<div class="thumbnail">
							<div class="vss1">
							<img class="carousel-inner view-first" src="<%#Eval("ModerPath") %>" alt="">
							</div>
								<div class="caption">
									<table border="0" cellspacing="" cellpadding="">
										<tr>
											<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;"><%#Eval("Follow") %></td>
											<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;"><%#Eval("dianzan") %></td>
											<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 13%;"> &nbsp; <%#Eval("CommentNums") %></td>
										</tr>
									</table>
								</div>
								<div class="userhead">
									<table>
										<tr>
											<td rowspan="2" style="width: 25%;"><img src="<%#Eval("Images") %>" /></td>
											<td><p style="font-size: 15px;font-style: normal;"><%#Eval("ModerName") %></p></td>
											<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										</tr>
										<tr>
											<td><p style="color: #999999;"> by <%#Eval("UserName") %></p></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
                      </ItemTemplate>
                </asp:Repeater>
              </div>

					<div  class="btnstyle"><button class="moreBtn"><font color="#EEEEEE">加载更多</font></button></div>
					<div style="height: 50px;"></div>
					<div class="demo_line_02">
					<span>最新作品</span>
					</div>
              
					<div class="row">
						<div class="col-md-4 col-sm-6 col-xs-12" >
							<div class="thumbnail">
							<div class="vss1">
							<img class="carousel-inner view-first" src="img/作品封面图1.png" alt="">
							</div>
								<div class="caption">
									<table border="0" cellspacing="" cellpadding="">
										<tr>
											<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;">112</td>
											<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;">58</td>
											<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 13%;"> &nbsp; 12</td>
										</tr>
									</table>
								</div>
								<div class="userhead">
									<table>
										<tr>
											<td rowspan="2" style="width: 25%;"><img src="img/用户头像1.png" /></td>
											<td><p style="font-size: 15px;font-style: normal;">The Dark KingHt...</p></td>
											<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										</tr>
										<tr>
											<td><p style="color: #999999;">by Adam mish</p></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-6 col-xs-12" >
							<div class="thumbnail">
							<div class="vss1">
							<img class="carousel-inner view-first" src="img/作品封面图1.png" alt="">
							</div>
								<div class="caption">
									<table border="0" cellspacing="" cellpadding="">
										<tr>
											<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;">112</td>
											<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;">58</td>
											<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 13%;"> &nbsp; 12</td>
										</tr>
									</table>
								</div>
								<div class="userhead">
									<table>
										<tr>
											<td rowspan="2" style="width: 25%;"><img src="img/用户头像1.png" /></td>
											<td><p style="font-size: 15px;font-style: normal;">The Dark KingHt...</p></td>
											<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										</tr>
										<tr>
											<td><p style="color: #999999;">by Adam mish</p></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-6 col-xs-12" >
							<div class="thumbnail">
							<div class="vss1">
							<img class="carousel-inner view-first" src="img/作品封面图1.png" alt="">
							</div>
								<div class="caption">
									<table border="0" cellspacing="" cellpadding="">
										<tr>
											<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;">112</td>
											<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;">58</td>
											<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 13%;"> &nbsp; 12</td>
										</tr>
									</table>
								</div>
								<div class="userhead">
									<table>
										<tr>
											<td rowspan="2" style="width: 25%;"><img src="img/用户头像1.png" /></td>
											<td><p style="font-size: 15px;font-style: normal;">The Dark KingHt...</p></td>
											<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										</tr>
										<tr>
											<td><p style="color: #999999;">by Adam mish</p></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-6 col-xs-12" >
							<div class="thumbnail">
							<div class="vss1">
							<img class="carousel-inner view-first" src="img/作品封面图1.png" alt="">
							</div>
								<div class="caption">
									<table border="0" cellspacing="" cellpadding="">
										<tr>
											<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;">112</td>
											<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;">58</td>
											<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 13%;"> &nbsp; 12</td>
										</tr>
									</table>
								</div>
								<div class="userhead">
									<table>
										<tr>
											<td rowspan="2" style="width: 25%;"><img src="img/用户头像1.png" /></td>
											<td><p style="font-size: 15px;font-style: normal;">The Dark KingHt...</p></td>
											<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										</tr>
										<tr>
											<td><p style="color: #999999;">by Adam mish</p></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-6 col-xs-12" >
							<div class="thumbnail">
							<div class="vss1">
							<img class="carousel-inner view-first" src="img/作品封面图1.png" alt="">
							</div>
								<div class="caption">
									<table border="0" cellspacing="" cellpadding="">
										<tr>
											<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;">112</td>
											<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;">58</td>
											<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 13%;"> &nbsp; 12</td>
										</tr>
									</table>
								</div>
								<div class="userhead">
									<table>
										<tr>
											<td rowspan="2" style="width: 25%;"><img src="img/用户头像1.png" /></td>
											<td><p style="font-size: 15px;font-style: normal;">The Dark KingHt...</p></td>
											<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										</tr>
										<tr>
											<td><p style="color: #999999;">by Adam mish</p></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-6 col-xs-12 " >
							<div class="thumbnail">
							<div class="vss1">
							<img class="carousel-inner view-first" src="img/作品封面图1.png" alt="">
							</div>
								<div class="caption">
									<table border="0" cellspacing="" cellpadding="">
										<tr>
											<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;">112</td>
											<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;">58</td>
											<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 13%;"> &nbsp; 12</td>
										</tr>
									</table>
								</div>
								<div class="userhead">
									<table>
										<tr>
											<td rowspan="2" style="width: 25%;"><img src="img/用户头像1.png" /></td>
											<td><p style="font-size: 15px;font-style: normal;">The Dark KingHt...</p></td>
											<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										</tr>
										<tr>
											<td><p style="color: #999999;">by Adam mish</p></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-6 col-xs-12" >
							<div class="thumbnail">
							<div class="vss1">
							<img class="carousel-inner view-first" src="img/作品封面图1.png" alt="">
							</div>
								<div class="caption">
									<table border="0" cellspacing="" cellpadding="">
										<tr>
											<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;">112</td>
											<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;">58</td>
											<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 13%;"> &nbsp; 12</td>
										</tr>
									</table>
								</div>
								<div class="userhead">
									<table>
										<tr>
											<td rowspan="2" style="width: 25%;"><img src="img/用户头像1.png" /></td>
											<td><p style="font-size: 15px;font-style: normal;">The Dark KingHt...</p></td>
											<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										</tr>
										<tr>
											<td><p style="color: #999999;">by Adam mish</p></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-6 col-xs-12" >
							<div class="thumbnail">
							<div class="vss1">
							<img class="carousel-inner view-first" src="img/作品封面图1.png" alt="">
							</div>
								<div class="caption">
									<table border="0" cellspacing="" cellpadding="">
										<tr>
											<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;">112</td>
											<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;">58</td>
											<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 13%;"> &nbsp; 12</td>
										</tr>
									</table>
								</div>
								<div class="userhead">
									<table>
										<tr>
											<td rowspan="2" style="width: 25%;"><img src="img/用户头像1.png" /></td>
											<td><p style="font-size: 15px;font-style: normal;">The Dark KingHt...</p></td>
											<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										</tr>
										<tr>
											<td><p style="color: #999999;">by Adam mish</p></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
				<div  class="btnstyle"><button class="moreBtn"><font color="#EEEEEE"">加载更多</font></button></div>
				<div style="height: 40px;"></div>
				<div class="demo_line_02"></div>
			</div>
		</div>

    	<div class="bottom">
					Copyright © 2016 阿拉VR alavr.com <span class="hidden-xs">|</span> <span class="hidden-lg"><br /></span>沪ICP备16000103号
		</div>
		
		<!--登陆-->
	<div class="modal fade" id="Login" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel" aria-hidden="true">
	   <div class="modal-dialog" style="width: 380px;">
	      <div class="modal-content">
	         <div class="modal-header" style="background-color: #101010;">
	            <button style="color: #FFFFFF; font-size: 21px;" type="button" class="close" 
	               data-dismiss="modal" aria-hidden="true">
	                  &times;
	            </button>
	            <h4 class="modal-title" id="myModalLabel" style="color: #FFFFFF;">
	               登 陆
	            </h4>
	         </div>
	         <div class="modal-body"  style="height: 450px;">
	           <!--<font style="color: #777777;">邮箱</font>--> 
	            <label for="name" style="color: #555555;">邮箱</label>
	    		<input id ="username" name="usernaem1" type="text" class="form-control" placeholder="请输入邮箱" runat="server">
	    			
	    		<label for="name" style="color: #555555; padding: 20px 0 0 0;">密码</label>
	    		<input id="password" name="password1" type="password"  class="form-control" placeholder="请输入密码" runat="server">
	    		<a href="#" style="color: #555555; float: right; padding: 20px 0 0 0;">忘记密码</a>
                 <%--<div style="color:red"> 密码错误，请确认账号密码无误再试</div>--%>
	    		<%--<button id="login1" type="button" class="btn btn-primary" style="background-color: #333333; margin: 60px 70px 80px 70px; width: 200px;height: 50px;" onclick="login()" runat="server">
	               登 &nbsp; 陆
	            </button>--%>
                 <asp:Button ID="Login1" runat="server" class="btn btn-primary" Style="background-color: #333333; margin: 60px 70px 80px 70px; width: 200px; height: 50px;" Text="登   陆" OnClick="Login1_Click" />
                 
	            <p align=center>没有账号？<a data-toggle="modal"  data-target="#Signup" href="#" style="font-size: 18px; color: #000000; ">去注册</a></p>
	         </div>
	         
	      </div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>
		
	<!--注册-->
	<div class="modal fade" id="Signup" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel" aria-hidden="true">
	   <div class="modal-dialog" style="width: 380px;">   
	      <div class="modal-content">
	         <div class="modal-header" style="background-color: #101010;">
	            <button style="color: #FFFFFF; font-size: 21px;" type="button" class="close" 
	               data-dismiss="modal" aria-hidden="true">
	                  &times;
	            </button>
	            <h4 class="modal-title" id="myModalLabel" style="color: #FFFFFF;">
	              注 册
	            </h4>
	         </div>
	         <div class="modal-body"  style="height: 450px;">
	           <!--<font style="color: #777777;">邮箱</font>-->
	            <label for="name" style="color: #555555;">邮箱</label>
	    		<input id="emil" name="emil1"  type="text" class="form-control" placeholder="请输入邮箱" runat="server">
	    		<label for="name" style="color: #555555; padding: 20px 0 0 0;">昵称</label>
	    		<input id="uname" name="uname1" type="text"  class="form-control" placeholder="请输入您的昵称" runat="server">	
	    		<label for="name" style="color: #555555; padding: 20px 0 0 0;">密码</label>
	    		<input id="pword" name="pword1" type="password"  class="form-control" placeholder="请输入密码" runat="server">
	    
	    	<%--	<button type="button" class="btn btn-primary" style="background-color: #333333; margin: 60px 70px 80px 70px; width: 200px;height: 50px;">
	             注 &nbsp; 册
	            </button>--%>
                  <asp:Button ID="Button1" runat="server" class="btn btn-primary" Style="background-color: #333333; margin: 60px 70px 80px 70px; width: 200px; height: 50px;" Text="注  册" OnClick="Register_Click" />
	         </div>
	         
	      </div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>
	<!--上传文件-->
	<div class="modal fade" id="moderup" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel" aria-hidden="true">
	   <div class="modal-dialog" style="width: 380px;">
	      <div class="modal-content">
	         <div class="modal-header" style="background-color: #101010;">
	            <button style="color: #FFFFFF; font-size: 21px;" type="button" class="close" 
	               data-dismiss="modal" aria-hidden="true">
	                  &times;
	            </button>
	            <h4 class="modal-title" id="myModalLabel" style="color: #FFFFFF;">
	             上传模型文件
	            </h4>
	         </div>
	         <div class="modal-body"  style="height: 450px;">
	           <!--<font style="color: #777777;">邮箱</font>-->
	            <label for="name" style="color: #555555;">支持的格式：.obj  .3mx</label>
	 			<hr style="height:1px;border:none;border-top:1px solid #C0C0C0;" />  
	 			<label for="name" style="color: #555555;">上传说明</label>
	 			<font><br>将模型、材质、贴图数据打包压缩成RAR文件，将RAR文件上传。</font>
	 			<a href="#"><br><br>查看图文说明</a>
	    
	    		
	            <!--<div class="form-group" style="padding: 20px 0 0 0;">
			      <label class="sr-only" for="inputfile" >文件输入</label>
			      <input type="file" id="inputfile">
	  			</div>-->
	           <%--<button data-toggle="modal"  data-target="#moderup1"  type="file" class="btn btn-primary" style="background-color: #333333; margin: 60px 70px 80px 70px; width: 200px;height: 50px;">
	         选择模型文件
	            </button--%>>
                 <%--<input data-toggle="modal"  data-target="#moderup1" type="type" name="name" value=" 选择模型文件" class="btn btn-primary" style="background-color: #333333; margin: 60px 70px 80px 70px; width: 200px;height: 50px;"/>--%>
                 <asp:FileUpload ID="FileUpload1"  data-toggle="modal"  data-target="#moderup1"  runat="server" class="btn btn-primary" style="background-color: #333333; margin: 60px 70px 80px 70px; width: 200px;height: 50px;" />
	         </div>
	         
	      </div><!-- /.modal-content -->
		</div><!-- /.modal -->
        
	</div>
	
	
	<div class="modal fade" id="moderup1" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel" aria-hidden="true">
	   <div class="modal-dialog" style="width: 380px;">
	      <div class="modal-content">
	         <div class="modal-header" style="background-color: #101010;">
	            <button style="color: #FFFFFF; font-size: 21px;" type="button" class="close" 
	               data-dismiss="modal" aria-hidden="true">
	                  &times;
	            </button>
	            <h4 class="modal-title" id="myModalLabel" style="color: #FFFFFF;">
	             上传模型文件
	            </h4>
	         </div>
	         <div class="modal-body"  style="height: 450px;">
	           <!--<font style="color: #777777;">邮箱</font>-->
	            <label for="name" style="color: #555555;">上传进度</label>
	          	<div class="progress">
				   <div class="progress-bar" role="progressbar" aria-valuenow="60" 
				      aria-valuemin="0" aria-valuemax="100" style="width: 80%; color: #000000;">
				      <span class="sr-only">40% 完成</span>
				   </div>
				</div>
	 			    <label for="name" style="color: #555555;">作品名称</label>
	 			    <input type="text" class="form-control" placeholder="请输入作品名称">
	 			    <label for="name" style="color: #555555;"><br><br>作品说明</label>
	 		 	    <input type="text" class="form-control" placeholder="请输入作品说明" style="height: 80px;" rows="3">
	            
	    	 	
	            
	           <button type="button" class="btn btn-primary" style="background-color: #333333; margin: 60px 70px 80px 70px; width: 200px;height: 50px;">
	         提交
	           </button>
	         </div>
	         
	      </div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>	
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script type="text/javascript">
		    //轮播自动播放
		    $('#myCarousel').carousel({
		        //自动4秒播放
		        interval: 4000,
		    });

		    // //设置垂直居中
		    // $('.carousel-control').css('line-height', $('.carousel-inner img').height() + 'px');
		    // $(window).resize(function () {
		    // 	var $height = $('.carousel-inner img').eq(0).height() || 
		    // 				  $('.carousel-inner img').eq(1).height() || 
		    // 				  $('.carousel-inner img').eq(2).height();
		    // 	$('.carousel-control').css('line-height', $height + 'px');
		    // });

		    //设置文字垂直居中，谷歌浏览器加载图片的顺序问题，导致高度无法获取
		    $(window).load(function () {
		        $('.text').eq(0).css('margin-top', ($('.auto').eq(0).height() - $('.text').eq(0).height()) / 2 + 'px');
		    });


		    $(window).resize(function () {
		        $('.text').eq(0).css('margin-top', ($('.auto').eq(0).height() - $('.text').eq(0).height()) / 2 + 'px');
		    });

		    $(window).load(function () {
		        $('.text').eq(1).css('margin-top', ($('.auto').eq(1).height() - $('.text').eq(1).height()) / 2 + 'px');
		    });

		    $(window).resize(function () {
		        $('.text').eq(1).css('margin-top', ($('.auto').eq(1).height() - $('.text').eq(1).height()) / 2 + 'px');
		    });
		</script>
       </form>
	</body>
</html>
