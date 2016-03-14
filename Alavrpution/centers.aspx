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
         <form id="form1" runat="server">
		   <%-- <nav class="navbar navbar-default navbar-fixed-top">
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
		    </nav>--%>
           
          <div id="lg" class="navbar navbar-default navbar-fixed-top" style="" runat="server">
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

			
			    <div class="carousel-inner">
				    <div class=" item active headertwo" style="background:#333333">
					    <img class="headerimg" style="height:250px;"  src="img/广告图片1.png" alt="第一张">
						    <table  style="width: 50px; text-align: center;">
							    <tr>
								    <td rowspan="2" style="width: 20px;"><img id="userimg" style="width: 85px;" src="img/用户头像1.png" runat="server"></td>
								    <td><p style="font-size: 21px;font-style: normal;color: #FFFFFF; width: 100px;"><!--&nbsp; &nbsp;--><font id="username" runat="server">lwp539</font> </p></td>
								
							    </tr>
							    <tr>
								    <td><%--<button data-toggle="modal"  data-target="#author" class="bianjiBtn"><font color="#FFFFFF">编  &nbsp;辑</font></button>--%>

                                        <input type="button" data-toggle="modal"  data-target="#author" class="bianjiBtn"  value="&nbsp;编  &nbsp;辑">
								    </td>
							    </tr>
						    </table>
				    </div>	
				  
				
			    </div>
			    <div id="case" style="background-color:#DCDCDC; ">
				    <div class="container">
				    <div class="htdiv1" style="height: 20px;"></div>
				    <div class="tabcash">
					   <%-- <a href="#"><font style="font-size: 13px; color:#737373;">作品数 : 38 </font></a>--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" style="border:none" runat="server" Text="作品数 : 38" OnClick="Button1_Click" />
					   <%-- <a href="#"><font style="font-size: 13px;color: #737373;">收藏数 ： 12</font></a>--%><asp:Button ID="Button2" style="border:none" runat="server" Text="收藏数 : 12" OnClick="Button2_Click" />
				    </div>
				    <div class="htdiv2" style="height: 20px;"></div>
				     <div class="row">
                  <asp:Repeater ID="Modertuiji" runat="server">
                     <ItemTemplate>  
                        <div id="ser1" class="col-md-4 col-sm-6 col-xs-12" runat="server" >
							<div class="thumbnail">
							<div class="vss1">
							<a href="display.aspx?ModerId= <%#Eval("ModerId") %>"><img class="carousel-inner view-first" src="<%#Eval("ModerPath") %>" alt=""></a>
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
                                            <td rowspan="2"><button class="bianjiBtn1"><font color="#FFFFFF">编  &nbsp;辑</font></button></td>
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
                            <img id="Img1" style="width: 90px; height: 90px;margin: 20px 120px 10px 120px;" src="img/用户头像1.png"  runat="server"/>
                            <label id="Label1" for="name" style="color: #999999;" runat="server">李文平</label>
                        </div>
		 			    <div>
		 				    <font for=""> &nbsp;&nbsp;&nbsp;&nbsp;联系电话：</font><input id="iphone1" type="text" value="" style="border:0px" runat="server"/>
		 				    <hr style="height:0px;border: none;border-top:1px solid #C0C0C0; margin: 10px auto;margin-left: 13px; " />  
		 				    <font for=""> &nbsp;&nbsp;&nbsp;&nbsp;邮箱：</font><input  id="useremil" type="text"  value="" style="border:0px" runat="server"/>
		 				    <hr style="height:0px;border:none;border-top:1px solid #C0C0C0; margin: 10px auto; margin-left: 13px;" />  
		 				    <font for="">&nbsp;&nbsp;&nbsp;&nbsp;个人主页：alavr.com/</font><input  id="mian" type="text" value="" style="border:0px" runat="server"/>
		 				    <hr style="height:0px;border:none;border-top:1px solid #C0C0C0; margin: 10px auto; margin-left: 13px;" />  
		 				    <font for=""> &nbsp;&nbsp;&nbsp;&nbsp;qq号码：</font><input type="text" id="qq1" value="" style="border:0px" runat="server"/>
		 				    <hr style="height:0px;border:none;border-top:1px solid #C0C0C0; margin: 10px auto; margin-left: 13px;" />  
		 				    <font for=""> &nbsp;&nbsp;&nbsp;&nbsp;所在城市：</font><input id="city" type="text"  value="" style="border:0px" runat="server"/>
		 				    <hr style="height:0px;border:none;border-top:1px solid #C0C0C0; margin: 10px auto; margin-left: 13px;" />  
		 				    <font for=""> &nbsp;&nbsp;&nbsp;&nbsp;简介：<br /></font><textarea id="jianjie" rows="3" style="width: 339px; margin-left: 13px; " runat="server"></textarea>
		 			    </div>
		            
		              <%-- <button type="button" class="btn btn-primary" style="background-color: #333333; margin: 60px 70px 80px 70px; width: 200px;height: 50px;">
		             保 存
		                </button>--%>
                         <asp:Button ID="Button3"  class="btn btn-primary" style=s"background-color: #333333; margin: 60px 70px 80px 70px; width: 200px;height: 50px;" runat="server" Text="保 存" OnClick="Button3_Click" />
		             </div>
                      
		          </div><!-- /.modal-content -->
			    </div><!-- /.modal -->
    </div>
        </form>
	</body>
</html>
