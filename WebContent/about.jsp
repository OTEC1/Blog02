<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*"%>
     <%@page import="sQL_con.Connection_sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Dealit</title>

<script data-ad-client="ca-pub-7498774630772945" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

<meta name="robots" content="index, follow" />
    <meta name="description" content="Life style, music, videos, news, Gist"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>  
  
     <script src="https://kit.fontawesome.com/yourcode.js"></script>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
   
  
  
<style>

*{
  margin: 0px;
  padding: 0px;
  background: #EFF1E4;

 }
		 
		 
.base{
width: 75%;
margin-left: auto;
margin-right: auto;
height: 1400px;
background:#fff;
margin-top: -78px;
}
		 		
		 		
.back{
float:right;
margin-right:10px;
background: #fff;
}


.banner{
height: 140px;
width: 100%;
background-color: #2499F2;
}
				
		
.top{
height: 60px;
width: 90%;
background: #fff;
box-shadow: 0px 20px 30px rgba(0,0,0,0.2);
border-radius: 0px 0px 0px 20px;
float: right;
}
				
		
				
				
h3{
	font-family: sans-serif;
	font: 2em;
	background: #fff;
	margin-left: 50px;
	}
					
					
			
					
					

.whi{
background: #fff;
}
		
				
.topleft{
background: #fff;
margin-left: 20px;
}
			
			

	
			
.ins{
border:none;
background: #fff;
border-radius: 3px;
padding: 5px;
color: #000;
}
	
		
.foot{
width: 100%;
height: 35px;
margin-top:60px;
background: #000;
}
		
		
.top_logo{
width: 200px;
height: 100px;
background: none;
}
			
			
.ems{
width: 100%;
height: 34px; 
background:  #2499F2;
padding-top: 15px;
}
				
				        			
span{
font-family: sans-serif;
font-weight: 600;
color: #070B7B;
background: #fff;
padding: 10px;
margin-top: 70px;
margin-left: 0px;
}
           	
         			
.bgls{
background:   #2499F2; 
color:#fff; 
margin-left: 10px;
}
         			
.icon{
float: right;
margin-right: 50px;
margin-top: 3px;
color: #ffffff;
background:  #2499F2; 
}
		
.blk{
background:   #2499F2;
border: 0px;
}
	  
.fa-twitter, .fa-facebook-official, .fa-envelope-o, .fa-instagram{
color: #ffffff;
margin-left: 20px;
background:  #2499F2;
}
	     
	     
a{
text-decoration: none;
}
				 
				 
a:hover {
text-decoration: none;
}
  				
  				
.ad1{
display:block;
float: left;
width: 12%;
height: 700px;
background: none;
}
			     	
.ad2{
display:block;
float: right;
width: 12%;
height: 700px;
background: none;
}
 	
 	
.write_up{
font-family: sans-serif;
font-size: 1.2em;
color:#000;
padding: 20px;
text-align: left;
float:left;
width:50%;
margin:20px;
margin-top:100px;
border-radius:10px;
background:#fff;
box-shadow: 0px 20px 30px  rgba(0,0,0,0.2);
}
 				
 				
.write_up1{
font-family: sans-serif;
font-size: 1.2em;
color:#000;
padding: 20px;
text-align: left;
margin-left:10px;
float:right;
width:50%;
margin:20px;
margin-top:100px;
background:#fff;
border-radius:10px;
box-shadow: 0px 20px 30px  rgba(0,0,0,0.2);
   }
 				
 				
.write_up2{
font-family: sans-serif;
font-size: 1.2em;
color:#000;
padding: 20px;
text-align: center;
float:left;
width:50%;
margin:20px;
margin-top:100px;
background:#fff;
border-radius:10px;
box-shadow: 0px 20px 30px  rgba(0,0,0,0.2);
}
 				
 				
.footer{
width: 100%;
background-color: #0E0A23;
height: 50px;
float: right;
text-align: right;
}	
	
	
.foot{
margin-top:10px; 
background-color: #0E0A23;
margin-right: 10px;
}
	
.sw{
margin: 10px;
color: #fff;
background-color: #0E0A23;	
font-family: sans-serif;				
}

.sections{
text-align: left;
margin-left:10px;
margin-left: auto;
margin-right: auto;
}
	
	
	
.sections1{
text-align: center;
margin-left: auto;
margin-right: auto;
}
	
	
.wh{
background: #fff;
}
	
	
.inn{
border:none;
height:20px;
text-align: center;
width: 260px;
}
					
.innt{
border:none;
text-align: center;
height: 180px;
width: 270px;
border-radius: 10px;	
}
		
.white{
background-color:#fff;
}


h4{
font-family: sans-serif;
font-size: 2em;
margin-top: 100px;
margin-left: auto;
margin-right: auto;
background: #fff;
text-align: center;
}

	

@media (max-width: 1200px) {

.top{
height: 120px;
width: 100%;
border-radius: 0px 0px 0px 0px;
}



.ad1{
width: 11%;
}
.ad2{
width: 11%;
}
               	
}			
            			
@media (max-width: 1100px) {
		
.base{
width: 95%;
height: auto;
}
		 		
.top{
height: 120px;
width: 100%;
float: left;
border-radius: 0px 0px 0px 0px;
}
				
		
.bgls{
padding-top: 20px;
}
            	
				
.icon{
float: right;
margin-right: 12px;
margin-top: -9px;
background: #000;

}

.ad1{
display: none;
}
.ad2{
display: none;
}
               	
				
}
            		


@media(max-width:680px){
	
.base{
 width: 100%;
 overflow-x: hidden;
 }
		 		
		 		
.write_up{
width:90%;
margin-left: auto;
margin-right: auto;
text-align: left;
}
     				
     				
.write_up1{
width:90%;
margin-left: auto;
margin-right: auto;
}
				
				
.write_up2{
width:90%;
margin-left: auto;
margin-right: auto;
}
				
.inn{
width: 90%;
}


.ad1{
display: none;
}

.ad2{
display: none;
}
		 	
		 		
.back{
background: #fff
}

.top{
height: 150px;
border-radius: 0px 0px 0px 0px;
}
				
.topleft{
background: #fff;
margin-left: 0px;
margin-top: 20px;
}
			
			




}
</style>	
</head>
<body>


<div  class="ad1">
adspace
</div>	
	
<div  class="ad2">
adspace
</div>


	

<div   class="base">
<jsp:include page="header.jsp"></jsp:include>	

<%
//End Point
String url="https://bloggingbucket.s3.eu-west-3.amazonaws.com/";


Connection connection = null;
PreparedStatement statement = null;
ResultSet resultSet = null;

%>
<h4><b style="background: #fff">${message}</b></h4>
<div   class="write_up">
	Dealit Blog is an Online News,Entertainment, Advertisement and Affiliate Program site  that Give&lsquo;s light to current 
	topic's that affect the Every Day life of both it User&lsquo;s and  Information Seeker&lsquo;s.
    Dealit Blog commerced it Operation  in the year 2020. Pls note Some of the links on the Blog might be affiliate Links.

</div>
		  
		  
		  
<div   class="write_up1">
Contact Us 
<table  class="sections"  style="background: #fff">
<tr  class="white">
<td  class="white">
 Phone no: +234 806-386-5625
<br/>
</td>
</tr>


<tr  class="white">
<td  class="white">
 Phone no: +234-097-842-5219
<br/>
</td>
</tr>
		
		
<tr  class="white">
<td  class="white">
 Email:  frtoscripting@gmail.com
<br/>
</td>
</tr>

<tr class="white">
<td class="white">
 Email: Ezealachibueze123@gmail.com

<br/>
</td>
</tr>
		
		
<tr class="white">
<td class="white">
 Email:Gregokoko56@gmail.com

<br/>
</td>
</tr>

</table>
</div>
	      
	      
<div   class="write_up2">
  Advertise with Us (Buy Space)
 <form   class="white"  method="post"   action="enquiry">

<table  class="sections1"  style="background: #fff">
<tr  class="white">
<td  class="white">
<br/><br/>
<input  name="name1" class="inn" placeholder="Name">
<br/><br/>
</td>
</tr>

<tr class="wh">
<td class="wh">
<input name="emails" class="inn" placeholder="Email or Phone">
<br/><br/>
</td>
</tr>
<tr class="wh">
<td class="wh">
<textarea  name="question" class="innt"  placeholder="Question"></textarea> 
<br/>
</td>
</tr>

<tr class="wh">
<td class="wh">
<button    type="submit">Send</button>
<br/>
</td>
</tr>
</table>
		
</form>	
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>	
</body>
</html>