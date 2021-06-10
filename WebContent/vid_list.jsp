<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="sQL_con.Connection_sql"%>
<%@page import="packages.User_algorithm_check"%>
        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>
Dealit Trending Video's
</title>

<script data-ad-client="ca-pub-7498774630772945" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta name="robots" content="index, follow" />
    <meta name="description" content="Life style, music, videos, news, Gist"/>
    

     <script src="https://kit.fontawesome.com/yourcode.js"></script>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
   
<style>


*{
margin: 0px;
padding: 0px;
background: #E4E4E4;
}
	
	
	
.base{	
width: 75%;
margin-left:auto;
margin-right:auto;
background: #fff;
}

.boz{
width: 100%;
height: 80px;
background-color: #2499F2;
}
	
	
.xms{
width: 100%;
height: 34px; 
background: #2499F2;
}
		
.whi{
background: #fff;
}
		        			

          	
.top_logo{
width: 200px;
height:100px;
background: none;
margin-top: 0px;
}
	
	
	
.vid-list{
width: 100%;
height: 680px;
margin-top: 30px;
background: #fff;
border-radius: 	0px 0px 15px 15px;
			
}

          
.force-overflow{
min-height: 600px;
background: #fff;
}


.scrollbar{ 
overflow: scroll;
float:left;
height:600px;
width:70%;
overflow-y:scroll;
overflow-x:hidden;
background: #fff;
}
  

#f1{
font-family: sans-serif;
text-decoration:none;
color: blue;
font-size: 1em;
background: #fff;
border:none;
cursor: pointer;
margin: 10px;
}		
	
	

  
 
#style-1::-webkit-scrollbar{
width: 7px;


}
    
#style-1::-webkit-scrollbar-thumb{
background:none;
border-radius: 5px;
margin-right: 10px;
}

        
.ads{
display: none;
}
        
.ads1{
float: right;
height: 635px;
width: 29%;
background: #fff;
}
        	
.swq{
font-family: sans-serif;
background: #fff;

}
       
        	
        	
        
h3{
font-family: sans-serif;
font-weight: 600;
color: #070B7B;
background: #fff;
padding: 10px;
margin-top: 70px;
}
        
        
.ems{ 		
box-shadow: 0px 4px 8px 0 rgba(0,0,0,0.3);  
height: 150px; 
width: 80%;
background: #fff;
margin: 20px;
}
        		
        		
        		
.bts{
background: #fff;
text-align: center;
}
        
.bts1{
background: #fff;
overflow: hidden;
font-family: sans-serif;
width: 85%;
margin: 10px;
}

    
.nod{
text-decoration: none;
font-family: sans-serif;
}
       	
       	
       	
.imgs{
border-radius:200px;
float: left;
margin-top:10px;
margin-left:50px;
width:100px;
height:100px;
       		
}
       		
       		
.imgs1{
border-radius:200px;
float: right;
margin-top:-130px;
margin-right:50px;
width:60px;
height:60px;
   }
       		
a{
font-family: sans-serif;
text-decoration:none;
color: blue;
font-size: 1em;
margin: 20px;
background: #fff;
top: 10px;
}

			
		
				
            		
.top{
height: auto;
width: 90%;
background: #fff;
box-shadow: 0px 20px 30px rgba(0,0,0,0.2);
border-radius: 0px 0px 0px 20px;
float: right;
padding: 5px;
}
	
			
.sbtn{
	 background:#1AFF48 ;
	 padding: 5px;
	 border:none;
	 color:#fff;
	 border-radius: 5px;
	 cursor: pointer;
	 float: right;
	 margin-top: 7px;
	}
	
				
.cinput{
		border:none;
		padding: 4px;
		border-radius: 4px;
		margin-right: 5px;
	}
	
	
.fa-search{
color: #323247;
}

  
.footer{
 width: 100%;
 height: 30px;  
 margin-top: 0px;
 float: right;
 background: #0E0A23;
}

.foot{
float: right;
margin-top:10px;
margin-right: 10px; 
background: #0E0A23;

}
	
.sw{
font-size: 15px;
color: #fff;
background: #0E0A23;
}

h4{
	display: none;
	
}

.forms{
background: #fff;
 float: right;
 margin-right: 10px;
}



        			
.sp{
background: #fff;
}	
    
            	
            	
h5{
	width: 80%;
}


h1{
 			
background: #2499F2;
color:#fff; 
padding-top:12px;
margin-left: 10px;
font-weight: 800;
font-size:1em;
font-family: sans-serif;
 			}	
            			
 .icon{
float: right;
margin-right: 50px;
margin-top: -20px;
color: #ffffff;
background: #2499F2; 
}

.blk{
  background: #2499F2;
  border: 0px;
}

.fa-twitter, .fa-facebook-official, .fa-envelope-o, .fa-instagram{
color: #ffffff;
margin-left: 20px;
background: #2499F2;
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
   	
.ads2{
display: none;
}
   	
@media (max-width: 1200px) {

          	

.ad1{
width: 11%;
}
.ad2{
width: 11%;
 }
   	
}
			     	

@media(max-width:1100px){
				
				
.base{
width: 100%;
margin-left:auto;
margin-right:auto;
background: #fff;
}



.ad1{
display: none;
}
.ad2{
display: none;
}

.top{
width: 90%;
}
						
						
						           
h3{
width:250px;
font-family: sans-serif;
font-weight: 600;
color: #070B7B;
background: #fff;
padding: 12px;
margin-top: 90px;
margin-left: auto;
margin-right: auto;
}

h4{
display: block;
background: #fff;
}


.fa-twitter, .fa-facebook-official, .fa-envelope-o, .fa-instagram{
font-size: 15px;
}
  
.icon{
float: right;
margin-right: 12px;
margin-top: -32px;
background: #000;

}
					
					
					
}		
			
@media(max-width:780px){
        		
.base{
width: 100%;
float: left;
overflow-x: hidden;
	
}
h5{
width: 80%;
overflow: hidden;
}
        		
.ems{
box-shadow: 0px 4px 8px 0 rgba(0,0,0,0.3);  
height: 200px; 
width: 350px;
background: #fff;
margin: 10px;
font-family: sans-serif;
margin: 20px;
margin-right: auto;
margin-left: auto;
}
            		
#f1{
font-family: sans-serif;
text-decoration:none;
color: #10059E;
font-size: 1em;
margin:10px;
background: #fff;
display: inline-block;
}            	
        
            	
.top{
width: 100%;
background: #fff;
border-radius: 0px 0px 0px 00px;

}
					
.sbtn{
background:#1AFF48 ;
padding: 5px;
border:none;
color:#fff;
border-radius: 5px;
cursor: pointer;
float: right;
margin-right: 5px;
margin-top: 8px;
}
					
input{
border:none;
width:100px;
padding: 6px;
border-radius: 4px;
margin-right: 5px;
float: right;
margin-top: 8px;
}

						
.sp{
margin-top: 25px;
background: #fff;
width: 100%;
}	


a{
font-family: sans-serif;
text-decoration:none;
color: #10059E;
font-size: 1.1em;
margin:5px;
background: #fff;
display: inline-block;
}
      		
      


.imgs1{
border-radius:200px;
float: right;
margin-top:-120px;
margin-right:10px;
width:30px;
height:30px;
}         
          		
.imgs{
border-radius:200px;
float: left;
margin-top:8px;
margin-left:10px;
width:70px;
height:70px;
}
 		
 		
.bts1{
background: #fff;
overflow: hidden;
font-family: sans-serif;
width: 90%;
float: left;
}
       
.scrollbar{ 
width:100%;
height:525px;
margin-top: 130px;
}
      
.ads1{
display: none;
}
            	
            
.ads{
display:block;
width: 100%; 
height: 150px; 
background-color: #fff;
margin: 10px;
}
            	
h4{
display: block;
background: #fff;			
}
            	
.footer{
width: 100%;
height: 50px; 
}

}
            		
            		
@media (max-width:680px){
            		
.ads2{
display: block;
width: 100%;
height: 180px;
margin-top:130px;
margin-bottom:40px;
background: #fff;
	            	
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
				
					<div    class="boz">
					<div   class="xms">
					<h1>DEALIT BLOG</h1>
					
					<div class="icon">
							<table   class="blk">
							<tr   class="blk">
							<td    class="blk">
							<a href="https://web.facebook.com/webdealit"  class="blk" ><i class="fa fa-facebook-official"></i></a>
							
							<a   href="https://www.instagram.com/dealitblog/" class="blk" ><i class="fa fa-instagram"></i></a>
							&nbsp;&nbsp;
							 <a    href="#"   class="blk" ><i class="fa fa-twitter"></i></a>
							</td>
							</tr>
							</table>
				       </div>
					
					</div>
				 
				</div>
				
					
<div    class="top">
<form  method="post"  action="send_request" class="forms">
<table   style="background: #fff; margin-left: 20px;">
<tr  class="whi">
<td  class="whi">
<br/>
<div  class="sp">	
<button   id="f1"           name="index"    >Home</button> 
<button   id="f1"           name="vid"      >Viral Video</button>  													
<button   id="f1"           name="music"    >Trending Music</button> 
<button   id="f1"           name="advert"   >Product Review</button> 
<button   name="search"     type="submit"    class="sbtn">Search</button>
<input    name="data"       placeholder="Search"    class="cinput"  />
</div>
</td>
</tr>
</table>
</form>
</div>
	
	
		
<div    class="vid-list">
<div   class="ads2">
<b> <h4>Advertisement Space</h4></b>
</div>
		
<b><h3   align="center">New Trending Videos</h3></b>
		
<div class="scrollbar"  id="style-1">
<div class="force-overflow">
			
<%
String url="https://bloggingbucket.s3.eu-west-3.amazonaws.com/";				
				
Connection connection = null;
PreparedStatement statement = null;
ResultSet rs = null;
 String  a1= request.getParameter("id");
%>
<div class="bts">
	
<%
try{
connection = new Connection_sql().getConnection();
statement=connection.prepareStatement("select * from  Vid_path   where cats like '%Watch Video%' order by id desc limit 100  ");
rs = statement.executeQuery();
while(rs.next()){
%>

<a href="video.jsp?eid=<%=rs.getString(1) %>&efilename=<%=rs.getString(2)%>&ecat=<%=rs.getString(6)%>&etopic=<%=rs.getString(3)%>"    class="nod" >

<div   class="ems">
<img   src="<%=url.concat(rs.getString(2))%>"    class="imgs"        alt="<%=rs.getString(3)%>"/>						
<h5  class="bts1"  >Title: <%=rs.getString(3)%></h5>							 
<p   class="bts1"  value="Now Playing   Click to View"></p>
  <img   src="images/Video_start.png"    class="imgs1"  />										
</div>
</a>
		
<div   class="ads">
Ad Space
</div>
				
						
<% 
}
} catch
(Exception e) {e.printStackTrace();
}
finally{ 
	try{ 
		connection.close(); 
		}
	catch(Exception  e)
	{e.printStackTrace();
}} 
%>
</div>
</div>
</div>	    	
	    	
<div  class="ads1">
<b class="swq"  >Advertisement Space1</b>
</div>
</div>			
<div   class="footer">
<div class="foot">
<a   href="about.jsp"  id="a1"   class="sw">About us</a>
<a   href="about.jsp"   id="a1" class="sw">Contact us</a>
<a    href="about.jsp" id="a1"  class="sw">Advertise</a>
</div>
</div>
</div>   
</body>
</html>