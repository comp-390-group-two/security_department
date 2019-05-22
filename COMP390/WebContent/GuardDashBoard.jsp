<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guard Dash Board</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<!-- Our Custom CSS -->
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	
	
</head>
<body>
<%
if (session.getAttribute("userOne")==null){
	response.sendRedirect("security-login.jsp");
}
%>
	 <div id="app">
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">

                    <!-- Collapsed Hamburger -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!-- Branding Image -->
                    <a class="navbar-brand" href="{{ url('/') }}">
                        Security Dashboard
                    </a>
                </div>
	                <div class="collapse navbar-collapse" id="app-navbar-collapse">
                    <!-- Left Side Of Navbar -->
                    
                    <ul class="nav navbar-nav">
                  <!-- &nbsp -->      
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Authentication Links -->
                       
                            <li><a href="#">
                            <i class ="fa fa-power-off" aria-hidden="true"></i>
                            Logout
                            </a></li>
   
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                    <i class="fa fa-user-secret" aria-hidden="true"></i>
                                    ${userOne} <span class="caret"></span>
                                </a>                                       
                                    </li>
                                </ul>
                            </div>
		</div>
	</nav>
</div>
<div style="width:100;overflow:hidden;">
		<div style="width:100px;float:left;">
						<nav class="navbar navbar-inverse sidebar" role="navigation">
					    <div class="container-fluid">
							
							
							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
								<ul class="nav navbar-nav">
									<li class="active"><a href="#">Reported Cases<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
									<li ><a href="#"> Guard Profile<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a></li>
									<li ><a href="#">News<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-envelope"></span></a></li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-cog"></span></a>
										<ul class="dropdown-menu forAnimate" role="menu">
											<li><a href="#">Action</a></li>
											<li><a href="#">Another action</a></li>
											<li><a href="#">Something else here</a></li>
											
										</ul>
									</li>
									
								</ul>
							</div>
						</div>
					</nav>
				</div>	
			<script type="text/javascript">
		    function htmlbodyHeightUpdate(){
				var height3 = $( window ).height()
				var height1 = $('.nav').height()+50
				height2 = $('.main').height()
				if(height2 > height3){
					$('html').height(Math.max(height1,height3,height2)+10);
					$('body').height(Math.max(height1,height3,height2)+10);
				}
				else
				{
					$('html').height(Math.max(height1,height3,height2));
					$('body').height(Math.max(height1,height3,height2));
				}
				
			}
			$(document).ready(function () {
				htmlbodyHeightUpdate()
				$( window ).resize(function() {
					htmlbodyHeightUpdate()
				});
				$( window ).scroll(function() {
					height2 = $('.main').height()
		  			htmlbodyHeightUpdate()
				});
			});
			</script>
<div style="margin-left:220px;margin-right:50px">					
		<div id="content">
			
		</div>
	</div>	
</div><!-- End of Wrapper -->

<script src="js/general.js"></script>
        
</body>
</html>