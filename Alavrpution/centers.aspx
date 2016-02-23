<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="centers.aspx.cs" Inherits="Alavrpution.centers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <title>个人中心</title>
		<link rel="stylesheet" href="css/style.css">
		<link rel ="stylesheet" href="css/style_common.css" />
		<link href="css/bootstrap.css" rel="stylesheet">
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
</head>
	<body>
		<nav class="navbar navbar-default navbar-fixed-top">
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
						<li class="hidden-xs"style="left:-20px;"><button class="upmoder"><font color="#EEEEEE" style=""> &nbsp; &nbsp; 发布</font></button> </li>
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="img/用户头像1.png"  style=""/> &nbsp;<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span>
							<ul class="dropdown-menu" role="menu">
			                    <li><a href="#">个人中心</a></li>
			                    <li><a href="#">设置</a></li>
			                     <li role="presentation" class="divider"></li>
			                    <li><a href="#">注销</a></li>
			                </ul>
						
						</li>
					</ul>	
					
				</div>
			</div>
		</nav>

			
			<div class="carousel-inner">
				<div class=" item active headertwo" style="background:#333333">
					<img class="headerimg" style="height:250px;"  src="img/广告图片1.png" alt="第一张">
						<table  style="width: 50px; text-align: center;">
							<tr>
								<td rowspan="2" style="width: 20px;"><img style="width: 85px;" src="img/用户头像1.png"></td>
								<td><p style="font-size: 21px;font-style: normal;color: #FFFFFF; width: 100px;"><!--&nbsp; &nbsp;--> lwp539</p></td>
								
							</tr>
							<tr>
								<td><button data-toggle="modal"  data-target="#author" class="bianjiBtn"><font color="#FFFFFF">编  &nbsp;辑</font></button></td>
							</tr>
						</table>
				</div>	
				  
				
			</div>
			<div id="case" style="background-color:#DCDCDC; ">
				<div class="container">
				<div class="htdiv1" style="height: 20px;"></div>
				<div class="tabcash">
					<a href="#"><font style="font-size: 13px; color:#737373;">作品数 : 38 </font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#"><font style="font-size: 13px;color: #737373;">收藏数 ： 12</font></a>
				</div>
				<div class="htdiv2" style="height: 20px;"></div>
				<div class="row">
					<div class="col-md-4 col-sm-6 col-xs-12" >
						<div class="thumbnail ">
							<div class="vss1">
							<a href="display.html"><img class="carousel-inner view-first " src="img/作品封面图1.png" alt=""></a>
							</div>
							<div class="caption">
								<table border="0" cellspacing="" cellpadding="">
									<tr>
										<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;">112</td>
										<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;">58</td>
										<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 10%;">12</td>
									</tr>
								</table>
							</div>
							<div class="userhead" >
								<table border="0">
									<tr>
										<td rowspan="2" style="width: 15%;"><img src="img/用户头像1.png" /></td>
										<td><p style="font-size: 15px;font-style: normal;">The Dark KingHt...</p></td>
										<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										<td rowspan="2"><button class="bianjiBtn1"><font color="#FFFFFF">编  &nbsp;辑</font></button></td>
									</tr>
									<tr>
										<td><p style="color: #999999; font-size: 13px;">作者： Adam mish</p></td>
										
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12" >
						<div class="thumbnail ">
							<div class="vss1">
							<a href="display.html"><img class="carousel-inner view-first " src="img/作品封面图1.png" alt=""></a>
							</div>
							<div class="caption">
								<table border="0" cellspacing="" cellpadding="">
									<tr>
										<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;">112</td>
										<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;">58</td>
										<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 10%;">12</td>
									</tr>
								</table>
							</div>
							<div class="userhead" >
								<table border="0">
									<tr>
										<td rowspan="2" style="width: 15%;"><img src="img/用户头像1.png" /></td>
										<td><p style="font-size: 15px;font-style: normal;">The Dark KingHt...</p></td>
										<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										<td rowspan="2"><button class="bianjiBtn1"><font color="#FFFFFF">编  &nbsp;辑</font></button></td>
									</tr>
									<tr>
										<td><p style="color: #999999; font-size: 13px;">作者： Adam mish</p></td>
										
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12" >
						<div class="thumbnail ">
							<div class="vss1">
							<a href="display.html"><img class="carousel-inner view-first " src="img/作品封面图1.png" alt=""></a>
							</div>
							<div class="caption">
								<table border="0" cellspacing="" cellpadding="">
									<tr>
										<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;">112</td>
										<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;">58</td>
										<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 10%;">12</td>
									</tr>
								</table>
							</div>
							<div class="userhead" >
								<table border="0">
									<tr>
										<td rowspan="2" style="width: 15%;"><img src="img/用户头像1.png" /></td>
										<td><p style="font-size: 15px;font-style: normal;">The Dark KingHt...</p></td>
										<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										<td rowspan="2"><button class="bianjiBtn1"><font color="#FFFFFF">编  &nbsp;辑</font></button></td>
									</tr>
									<tr>
										<td><p style="color: #999999; font-size: 13px;">作者： Adam mish</p></td>
										
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12" >
						<div class="thumbnail ">
							<div class="vss1">
							<a href="display.html"><img class="carousel-inner view-first " src="img/作品封面图1.png" alt=""></a>
							</div>
							<div class="caption">
								<table border="0" cellspacing="" cellpadding="">
									<tr>
										<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;">112</td>
										<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;">58</td>
										<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 10%;">12</td>
									</tr>
								</table>
							</div>
							<div class="userhead" >
								<table border="0">
									<tr>
										<td rowspan="2" style="width: 15%;"><img src="img/用户头像1.png" /></td>
										<td><p style="font-size: 15px;font-style: normal;">The Dark KingHt...</p></td>
										<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										<td rowspan="2"><button class="bianjiBtn1"><font color="#FFFFFF">编  &nbsp;辑</font></button></td>
									</tr>
									<tr>
										<td><p style="color: #999999; font-size: 13px;">作者： Adam mish</p></td>
										
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12" >
						<div class="thumbnail ">
							<div class="vss1">
							<a href="display.html"><img class="carousel-inner view-first " src="img/作品封面图1.png" alt=""></a>
							</div>
							<div class="caption">
								<table border="0" cellspacing="" cellpadding="">
									<tr>
										<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;">112</td>
										<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;">58</td>
										<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 10%;">12</td>
									</tr>
								</table>
							</div>
							<div class="userhead" >
								<table border="0">
									<tr>
										<td rowspan="2" style="width: 15%;"><img src="img/用户头像1.png" /></td>
										<td><p style="font-size: 15px;font-style: normal;">The Dark KingHt...</p></td>
										<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										<td rowspan="2"><button class="bianjiBtn1"><font color="#FFFFFF">编  &nbsp;辑</font></button></td>
									</tr>
									<tr>
										<td><p style="color: #999999; font-size: 13px;">作者： Adam mish</p></td>
										
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12" >
						<div class="thumbnail ">
							<div class="vss1">
							<a href="display.html"><img class="carousel-inner view-first " src="img/作品封面图1.png" alt=""></a>
							</div>
							<div class="caption">
								<table border="0" cellspacing="" cellpadding="">
									<tr>
										<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;">112</td>
										<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;">58</td>
										<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 10%;">12</td>
									</tr>
								</table>
							</div>
							<div class="userhead" >
								<table border="0">
									<tr>
										<td rowspan="2" style="width: 15%;"><img src="img/用户头像1.png" /></td>
										<td><p style="font-size: 15px;font-style: normal;">The Dark KingHt...</p></td>
										<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										<td rowspan="2"><button class="bianjiBtn1"><font color="#FFFFFF">编  &nbsp;辑</font></button></td>
									</tr>
									<tr>
										<td><p style="color: #999999; font-size: 13px;">作者： Adam mish</p></td>
										
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12" >
						<div class="thumbnail ">
							<div class="vss1">
							<a href="display.html"><img class="carousel-inner view-first " src="img/作品封面图1.png" alt=""></a>
							</div>
							<div class="caption">
								<table border="0" cellspacing="" cellpadding="">
									<tr>
										<td style="width: 8%;"><img src="img/阅读图标.png"></td><td style="width: 10%;">112</td>
										<td style="width: 8%;"><img src="img/点赞.png"></td><td style="width: 10%;">58</td>
										<td style="float: right;width: 18%;"><img style="" src="img/评论.png"></td><td style="width: 10%;">12</td>
									</tr>
								</table>
							</div>
							<div class="userhead" >
								<table border="0">
									<tr>
										<td rowspan="2" style="width: 15%;"><img src="img/用户头像1.png" /></td>
										<td><p style="font-size: 15px;font-style: normal;">The Dark KingHt...</p></td>
										<td style="padding: 0 0 5px 0;"><img  src="img/被推荐图标.png"></td>
										<td rowspan="2"><button class="bianjiBtn1"><font color="#FFFFFF">编  &nbsp;辑</font></button></td>
									</tr>
									<tr>
										<td><p style="color: #999999; font-size: 13px;">作者： Adam mish</p></td>
										
									</tr>
								</table>
							</div>
						</div>
					</div>
					
					
				</div>
				<div  class="btnstyle"><button class="moreBtn"><font color="#EEEEEE">加载更多</font></button></div>
					<div style="height: 40px;"></div>
				<div class="demo_line_02"></div>
				</div>
			</div>
		<div class="bottom">
					Copyright © 2016 阿拉VR alavr.com <span class="hidden-xs">|</span> <span class="hidden-lg"><br /></span>沪ICP备16000103号
		</div>
		<div class="modal fade" id="author" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel" aria-hidden="true">
		   <div class="modal-dialog" style="width: 380px;">
		      <div class="modal-content">
		         <div class="modal-header" style="background-color: #101010;">
		            <button style="color: #FFFFFF; font-size: 21px;" type="button" class="close" 
		               data-dismiss="modal" aria-hidden="true">
		                  &times;
		            </button>
		            <h4 class="modal-title" id="myModalLabel" style="color: #FFFFFF;">
		             作者资料
		            </h4>
		         </div>
		         <div class="modal-body"  style="height: 600px;">
		           <!--<font style="color: #777777;">邮箱</font>-->
		           <div style=" text-align: center ;">
		           	 <img style="width: 90px; height: 90px;margin: 20px 120px 10px 120px;" src="img/用户头像1.png" /> 
		           	 <label for="name" style="color: #999999;">李文平</label>
		          </div>
		 			<div>
		 				<font for=""> &nbsp;&nbsp;&nbsp;&nbsp;联系电话：</font><input type="text" id="" value="" style="border:0px"/>
		 				<hr style="height:0px;border: none;border-top:1px solid #C0C0C0; margin: 10px auto;margin-left: 13px; " />  
		 				<font for=""> &nbsp;&nbsp;&nbsp;&nbsp;邮箱：</font><input type="text" id="" value="" style="border:0px"/>
		 				<hr style="height:0px;border:none;border-top:1px solid #C0C0C0; margin: 10px auto; margin-left: 13px;" />  
		 				<font for="">&nbsp;&nbsp;&nbsp;&nbsp;个人主页：alavr.com/</font><input type="text" id="" value="" style="border:0px"/>
		 				<hr style="height:0px;border:none;border-top:1px solid #C0C0C0; margin: 10px auto; margin-left: 13px;" />  
		 				<font for=""> &nbsp;&nbsp;&nbsp;&nbsp;qq号码：</font><input type="text" id="" value="" style="border:0px"/>
		 				<hr style="height:0px;border:none;border-top:1px solid #C0C0C0; margin: 10px auto; margin-left: 13px;" />  
		 				<font for=""> &nbsp;&nbsp;&nbsp;&nbsp;所在城市：</font><input type="text" id="" value="" style="border:0px"/>
		 				<hr style="height:0px;border:none;border-top:1px solid #C0C0C0; margin: 10px auto; margin-left: 13px;" />  
		 				<font for=""> &nbsp;&nbsp;&nbsp;&nbsp;简介：<br /></font><textarea rows="3" style="width: 339px; margin-left: 13px; "></textarea>
		 			</div>
		    
		    		
		            
		           <button type="button" class="btn btn-primary" style="background-color: #333333; margin: 60px 70px 80px 70px; width: 200px;height: 50px;">
		         保 存
		            </button>
		         </div>
		         
		      </div><!-- /.modal-content -->
			</div><!-- /.modal -->
</div>
	</body>
</html>
