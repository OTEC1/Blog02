<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dealit Search Result</title>


<meta name="robots" content="index, follow" />
   <meta name="viewport" content="width=device-width, initial-scale=1"/>  
  
  
  <link href="css/bootstrap.min.css" rel="stylesheet"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet"/>
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
           crossorigin="anonymous"/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
       <script src="js/jquery-2.1.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
     <script src="js/bootstrap. min.js"></script>
     <script src="https://kit.fontawesome.com/yourcode.js"></script>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
  	


<style>

		.header{	
		   width: 100%;
		   background-color:   #2499F2;;
		   height: 30px;
		   margin-top: -20px;
		}
		h1{
		color: #ffffff;
		text-transform: uppercase;
		font-weight: 600;
		font-family:Sitka Small;
		margin-left:200px;
		padding:10px;
		font-size: 18px;
		}

	.logoSide{
	        background-color: #2499F2;
            opacity:10px;
            height:120px;
			width: 100%;
			margin-left: 0%;
			}
		
			.image img{
			width: 200px;
			height: 100px;
			}
			.header .icon{
			float: right;
			margin-right: 500px;
			margin-top: -45px;
			}


		
		 .fa-snapchat{
		   color: #ffffff;
		   margin-left: 20px;
		   }
		   .fa-facebook-official{
		    color: #ffffff;
		     margin-left: 20px;
		   }
		    
		   .fa-envelope-o{
		     color: #ffffff;
		      margin-left: 20px;
		   }
		   .fa-instagram{
		     color: #ffffff;
		      margin-left: 20px;
		   }
		   
   
   		a{
		font-size: 30px;
		}
		.header .icon{
		float: right;
		display:flex;
		margin-right: 80px;
		margin-top: -60px;
		}
		
	     .fa-snapchat,  .fa-facebook-official,   .fa-instagram{
	       font-size: 14px;
	     }
	     
	     
	     @media (max-width:980px) {
			
					h1{
					color: #ffffff;
					text-transform: uppercase;
					font-weight: 600;
					font-family:Sitka Small;
					margin-left:20px;
					padding:10px;
					font-size: 18px;
					}
		
		
				a{
				font-size: 30px;
				}
				
				.header .icon{
				float: right;
				display:flex;
				margin-right: 80px;
				margin-top: -60px;
				}
				
			     .fa-snapchat,  .fa-facebook-official,   .fa-instagram{
			       font-size: 14px;
			     }
}
	     
</style>
</head>
<body>

<div class="header">
<h1>DEALIT BLOG</h1>
<div class="icon">
<table>
<tr>
<td>
<a href="https://web.facebook.com/webdealit"><i class="fa fa-facebook-official"></i></a>

<a  href=""  ><i class="fa fa-instagram"></i></a>

 <a  href=""  ><i class="fa fa-snapchat"></i></a>
</td>
</tr>
</table>
</div>
</div>
<div class="logoSide">
<div class="image">
<img src="images/Banner.png" alt="images/Banner.png"/>
</div>
</div>



	<div class="container">
	<div class="row">
    <div align="center">  
        <h3  align="center">Sorry  No Search Result Found  Please try Some other Key words</h3>  
        <hr/>   
        <div class="button">
		<a  href="index.jsp" class="btn btn-success">Go Back</a>
	 </div>         
     </div>
     </div>
     </div>
</body>
</html>