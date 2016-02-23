﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="display.aspx.cs" Inherits="Alavrpution.display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <title>作品展示</title>
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
						<li class="hidden-xs"style="left:-20px;"><button data-toggle="modal"  data-target="#moderup" class="upmoder"><font color="#EEEEEE" style=""> &nbsp; &nbsp; 发布</font></button> </li>
						<li class="dropdown"><a href="#" class="li dropdown-toggle" data-toggle="dropdown"><img src="img/用户头像1.png"  style=""/> &nbsp;<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span>
							<ul class="dropdown-menu" role="menu">
			                    <li><a href="centers.html">个人中心</a></li>
			                    <li><a href="#">上传作品</a></li>
			                    <li><a href="#">回到首页</a></li>
			                </ul>
						
						</li>
					</ul>	
					
				</div>
			</div>
		</nav>

			
			<div class="carousel-inner">
				<div class=" item active headertwo" style="background:#333333">
					
				</div>	
				
				
			</div>
			<div id="case" style="background-color:#F5F5F5; ">
				<div class="container">
				<div class="htdiv1" style="height: 100px;"></div>
				<div>
					
					<font style="font-size: 21px;color: #000000;font-family: '微软雅黑';">我的雕像</font>
				</div>
				<div class="htdiv2" style="height: 20px;"></div>
				<div class="row">
					<div class=" col-sm-8 " >
						<div class="thumbnail " style="background-color: #F5F5F5; border-color: #F5F5F5;">
							<div class="vss1">
								<a href="#"><img class="carousel-inner view-first " src="img/作品封面图1.png" alt=""></a>
							</div>
						<div>
								<a><span class="glyphicon glyphicon-resize-full aria-hidden="true"" style="top: -35px; right: -95%; color: #FFFFFF;"></span></a>
						</div>	
						<div>
							<img src="img/收藏.png" /> <font>78</font> <img src="img/点击.png" /> <font>114</font> <button class="zanbtn glyphicon glyphicon-star">  赞</button> 
							<button class="fenxiangbtn glyphicon glyphicon-share-alt">  分享</button>  
							<button class="shoucangbtn glyphicon glyphicon-heart">  收藏</button> 
						</div>
						<div style="height: 30px;">
							
						</div>
						<div style="height: 60px;">
							<font style="font-family: '微软雅黑'; font-size: 18px ;font-style: initial; font-weight: 800;">评论：3</font>
						</div>
						<div>
							<table border="0">
								<tr>
									<td rowspan="2" valign="top" ><img style="width: 50px; padding-top: 0; "  src="img/用户头像1.png " /></td>
									<td style="padding:0 0 0 30px;" valign="top"><textarea rows="3" style="width: 670px; border-color: #EBEBEB;"></textarea></td>
								</tr>
								<tr>
									<td style="padding:0 0 0 30px;"><button class="tijiaoplbtn">提交评论</button></td>
								</tr>
							</table>
							
							<hr style="height:1px;border:none;border-top:1px solid #C0C0C0;" />
							<table>
								<tr>
									<td valign="top"><img style="width: 50px; padding-top: 0; "  src="img/用户头像1.png " /></td>
									<td style="padding:0 0 0 30px;" valign="top">
										<div class="org_box">
											<span class="org_bot_cor"></span>
											<font style="font-weight: 800;">lwp593<br></font>
											这个作品很不错，具有代表性<br />
											<font style="font-size: 8px; color: #ADADAD;">10 分钟前</font>
										</div>
									</td>
								</tr>
								<tr>
									<td valign="top"><img style="width: 50px; padding-top: 0; "  src="img/用户头像1.png " /></td>
									<td style="padding:0 0 0 30px;" valign="top">
										<div class="org_box">
											<span class="org_bot_cor"></span>
											<font style="font-weight: 800;">原来是这样<br></font>
											这个作品很不错，具有很好的观赏性<br />
											<font style="font-size: 8px; color: #ADADAD;">1 小时前</font>
										</div>
									</td>
								</tr>
								<tr>
									<td valign="top"><img style="width: 50px; padding-top: 0; "  src="img/用户头像1.png " /></td>
									<td style="padding:0 0 0 30px;" valign="top">
										<div class="org_box">
											<span class="org_bot_cor"></span>
											<font style="font-weight: 800;">孤独的狼<br></font>
											这个作品很不错，具有很高领域价值0000000000000<br />
											<font style="font-size: 8px; color: #ADADAD;">3 天前</font>
										</div>
									</td>
								</tr>
								<tr>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
								</tr>
							</table>
						</div>
						</div>
					</div>
					<div class="arthor" >
						<div style="background-color: #FFFFFF; width: 380px;">
							<table  style="width: 220px; text-align: center;" border="0">
								<tr>
									<td rowspan="2" style="width: 20px;"><img style="width: 85px;" src="img/用户头像1.png"></td>
									<td><font style="font-size: 16px;color: #737373">by</font><font style="font-size: 21px;font-style: normal;color: #222222;"><!--&nbsp; &nbsp;--> lwp539</font></td>
									
								</tr>
								<tr>
									<td><button data-toggle="modal"  data-target="#author" class="ziliaobtn"><font color="#FFFFFF">资  &nbsp;料</font></button></td>
								</tr>
							</table>
						</div>
						<div style="background-color:#F5F5F5 ; height: 20px;">
						</div>
						<div style="background-color: #FFFFFF; width: 380px; height: 400px;">
							<table style="" border="0">
								<tr>
									<td><br> &nbsp;&nbsp;&nbsp;作品介绍</td>
								</tr>
								<tr>
									<td style="width: 40px;"><br><br>&nbsp;&nbsp;&nbsp;2222222222222222222222222222222222222222<br>&nbsp;&nbsp;&nbsp;222222222222222222222222222</td>
								</tr>
							</table>
							
						</div>

					
					
				</div>
					
			</div>
				
				<div>
					
					
					
				</div>
			
			
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
                            <font for=""> &nbsp;&nbsp;&nbsp;&nbsp;联系电话：</font> <label align=center><font align=center>1312224445</font></label>
                            <hr style="height:0px;border: none;border-top:1px solid #C0C0C0; margin: 10px auto;margin-left: 13px; " />
                            <font for=""> &nbsp;&nbsp;&nbsp;&nbsp;邮箱：</font><label> 1312221424@11.com</label>
                            <hr style="height:0px;border:none;border-top:1px solid #C0C0C0; margin: 10px auto; margin-left: 13px;" />
                            <font for="">&nbsp;&nbsp;&nbsp;&nbsp;个人主页：</font> <label>alavr.com/13124474</label>
                            <hr style="height:0px;border:none;border-top:1px solid #C0C0C0; margin: 10px auto; margin-left: 13px;" />
                            <font for=""> &nbsp;&nbsp;&nbsp;&nbsp;qq号码：</font><label>11111477</label>
                            <hr style="height:0px;border:none;border-top:1px solid #C0C0C0; margin: 10px auto; margin-left: 13px;" />
                            <font for=""> &nbsp;&nbsp;&nbsp;&nbsp;所在城市：</font> <label>上海</label>
                            <hr style="height:0px;border:none;border-top:1px solid #C0C0C0; margin: 10px auto; margin-left: 13px;" />
                            <font for=""> &nbsp;&nbsp;&nbsp;&nbsp;简介：<br /></font><textarea rows="3" style="width: 339px; margin-left: 13px; ">专注于3d模型</textarea>
                        </div>



                        <button type="button" class="btn btn-primary" class="close"
                                data-dismiss="modal" aria-hidden="true" style="background-color: #333333;  margin: 60px 70px 80px 70px; width: 200px;height: 50px;">
                            确  定
                        </button>
                    </div>

                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
            <!--上传文件-->
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
                        <button data-toggle="modal"  data-target="#moderup1"  type="file" class="btn btn-primary" style="background-color: #333333; margin: 60px 70px 80px 70px; width: 200px;height: 50px;">
                            选择模型文件
                        </button>
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
        <script>
            $(function () { $('.popover-show').popover('show'); });
            $(function () {
                $('.popover-show').on('shown.bs.popover', function () {
                })
            });
   	</script>
	</body>
</html>
