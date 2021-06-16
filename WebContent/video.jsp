
<%@page import="packages.navigation"%>
<%@page import="packages.User_algorithm_check"%>
<%@page import="sQL_con.Connection_sql"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

<script data-ad-client="ca-pub-7498774630772945" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

<meta name="robots" content="index, follow" />
    <meta name="description" content="Life style, music, videos, news, Gist"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>  
 
<meta charset="ISO-8859-1">
<title>Dealit Viral Videos</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
          crossorigin="anonymous"/>
           
   
  
<style>

*{
margin: 0px;
padding: 0px;
background: #EFF1E4;

}
		 
		 
.base{
width: 70%;
height:auto;
margin-left: auto;
margin-right: auto;
background: #fff;

}
	
.white{
background: #FFF;
}		 		
	
button{
border:none;
margin: 10px;
}	

.sbtn{
margin-top: -10px;
}	 				
#ad1{ 			   
float: left;
width: 12%;
height: 1100px;
background: none;
}
			     	
#ad2{
display:block;
float: right;
width: 12%;
height: 1100px;
background: none;
}	
		 		
.widget{
margin-top: 50px;
width:690px;
height:480px;
}
				
#repeat{
margin-top: -565px;
float: right;
width: 30%;
height: 980px;
background: #fff;

}
			
			
.repeat1{ 
display: none;
}
			
		
			
#nnn{
display:none;
position:absolute;
margin-top:60px;
width: 100%;
align-content:center;
text-align:center;
align-items:center;
height: 450px;
z-index:10;
background-color: #0E0A23;
color:#fff;
}
          
.nav:hover{
text-decoration: none;
}
				
h3{
font-family: sans-serif;
font: 2em;
background: #fff;
margin-left: 50px;
}
					
					
hr{				
width: 80%;
margin-right: auto;
margin-left: auto;
}
		
		

.lin{
font-family: sans-serif;
text-decoration:none;
color: blue;
font-size: 1em;
margin: 5px;
background: #fff;
padding-left: 70px;
}
			
					
.nav {
display: block;
font-size:  2rem;
color:#fff;
text-decoration:none;
background:none;
padding: 20px;
}
					
#a2a{
font-size: 27px;
color: #fff;
margin-left: 20px;
background: none;
text-decoration: none;
padding: 20px;
}
					

					
.ems{
 width: 100%;
 height: 20px; 
 background: #2499F2;
}
				
				
.top_logo{
width: 200px;
height: 100px;
background: none;
}
			
			
			
h5{ 
font-family:sans-serif;
text-align: left;
color: #000;
width:70%;
height:80px;
overflow-x:scroll;
font-size: 2em;
padding-left:15px;
background: #fff;			
}
				
			
#style-1::-webkit-scrollbar{
width: 7px;  
}
		 			
		 			
#style-1::-webkit-scrollbar-thumb{
background:#FFF;
border-radius: 5px;
margin-right: 10px;
}
            
		
.other{
  width: 70%;
  float: left;
  height: 380px;
  text-align: center;
  background: #fff;
  overflow:scroll;
  border-radius: 0px 0px 0px 15px;
  
}



.es{
background: #fff; 
margin-left: 20px;
}
		
           
						
.more_content{
width: 41%;
height: 150px;
background: #fff;   
margin:20px; 
float:left;
box-shadow: 0px 4px 8px 0px rgba(0,0,0,0.3);
}


.tumb{
margin:5px;
border-radius:200px;
width: 100px;
height: 100px;
float: left;
border:2px solid  #EAEAEA;
	}
						
						
.p_write{
width: 100%;
text-align: left;
overflow: hidden;
max-height: 45px;
height: 40px;
background: #fff;
}
							
							
.p_title{
width:66px;
max-width:66px;
overflow:hidden;
float: right;
font-family: sans-serif;
font-size: 1em;
margin-top: 5px;
background: #fff;
margin-right: 5px;
							
}
							
							
										
#menu-btn, #close-btn{
float: left;
display: none;
font-size: 30px;
margin: 10px;
color: #000000;
cursor: pointer;
position: absolute;
background: #fff;

 }
				

        
	
.relation{
font-family: sans-serif;
background: #fff;
}
							
.backs{
	background: #fff;
}	

.play_source{
background: #fff;
color: #230BCF;
text-decoration: none;
}
	
	
.inner{
margin-left:3px; 
width:700px;
overflow-x:hidden; 
background: #fff; 
}		

a:hover {
ext-decoration:none;
background: #fff;
}
							
				
							
				
						
						
						
	
@media (max-width:1300px) {
		
		
		
	
				
#ad1{
    display:block;
    width: 13%;
    height: 1100px;
    background: #eaeaea;
 }
 
.other{
width: 70%;
height: 388px;
margin-top: 0px;
} 		

}	
			 		
	 
		

					
						
@media (max-width:1200px) {
				
.base{
width: 100%;
height:auto;
}



.lin{
margin: 3px;
top: 10px;
padding-left: 35px;
}	

#ad1{
width: 11%;
}
    
#ad2{
display: none;
}
               	
                
#repeat{
float: right;
width: 20%;
height: 928px;
background: #fff;

}
	
.other{
width: 69%;
height: 394px;
margin-left: 122px;
margin-top: -390px;
}


}
						
						

						
						
						
						
						
						
@media (max-width:1100px) {
		
						
.base{
height: 890px;
}

#ad1{
display: none;
}
   	
   	
#ad2{
display: none;
}
				
.lin{
padding-left: 55px;
}	
	
	
#repeat{
width: 30%;
height: 798px;
background: #fff;
}


.other{
width: 70%;
height: 230px;
margin-top: 0px;
margin-left: auto;
margin-right: auto;
background: #fff;
}


	
.more_content{  
width:95%;
margin:10px; 
float:left;
box-shadow: 0px 4px 8px 0 rgba(0,0,0,0.3);
}
	

				
}	
			
			
			
			
@media(max-width:980px){


.base{
width: 100%;
height:1000px;
overflow-x: hidden;
background-color: #FFFFFF;
}
	
	
#menu-btn{
display: block;
}
        
        
     	 		
.widget{
margin-top: 0px;
width: 100%;
}

.other{
width: 100%;
height: 500px;
margin-left: auto;
margin-right: auto;
background: #FFFFFF;
}

#repeat{
margin-top: -481px;
float: right;
width: 30%;
height: 400px;
background: #fff;

}

.repeat1{
display:block;
width: 100%;
height: 150px;
background: #fff;
margin-top: 60px;
}
			
  .inner{
margin-left:3px; 
width:100%;
overflow-x:hidden; 
background: #fff; 
}	
	
			
			
}
						
						
@media(max-width:780px){
	
     
          
.base{
width: 100%;
background: #EFF1E4;
margin-left: auto;
margin-right: auto;
overflow-x: hidden;
}


#style-1{
font-size: 12pt;
}		 		
		 		
h5{
width: 100%;
background: #fff;
}
		 					
#repeat{
display: none;
}



	
#repeat{
display: none;
}
				
		
.lin{
display: none;
}
			



.other{
width: 100%;
height: 300px;

}
						
						

	
				
					
}
</style>	
</head>
<body>
		
<div  id="ad2">
adspace
</div>

<div  id="ad1">
adspace	
</div>	
			
<div   class="base">
<jsp:include page="header.jsp"></jsp:include>
   	
<form  class="white">

<%
//Http Request  Point
String s1=request.getParameter("eid");
String s2=request.getParameter("etopic");
String s3=request.getParameter("ecat");
String s4=request.getParameter("efilename");

String s5=new User_algorithm_check().name_format(s4);

//Aws End Point
String  url="https://bloggingbucket.s3.eu-west-3.amazonaws.com/";


%>
		
<div   class="repeat1">
   <h3>Advertisement Space </h3>
</div>
	
<%	
Connection connection = null;
PreparedStatement statement = null;
ResultSet resultSet = null;
s1="";
s1=new User_algorithm_check().name_format(s4);

try{
connection = new Connection_sql().getConnection();
statement=connection.prepareStatement("select  paths from Vid_path where paths='"+s4+"'");
resultSet = statement.executeQuery();
while(resultSet.next()){
%>
	
		
		
<iframe    class="widget"   
 src="<%=resultSet.getString("paths").replace(".png", "")%>" 
title="YouTube video player" 
frameborder="0" 
allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
allowfullscreen >
</iframe>
		 
		
<%
		 
}
} catch
  	(Exception e) 
  	{e.printStackTrace();}
  	finally{ 
  	try{ 
  	connection.close(); 
  	}
	catch(Exception  e)
	{e.printStackTrace();
}
} 
 %>
		
<br/><br/>
<h5 id="style-1"><b class="white">Title: <%=s2%></b></h5>
  
		
		
		

 <%	
 connection = null;
 statement = null;
 resultSet = null;
 s1="";
 s1=new User_algorithm_check().name_format(s4);

try{
connection = new Connection_sql().getConnection();
statement=connection.prepareStatement("select  source from Vid_path where paths='"+s1+"'");
resultSet = statement.executeQuery();
while(resultSet.next()){
%>
<div   class="backs">
<div   class="inner">
Source: 
<a   class="play_source"  href="<%=resultSet.getString("source")%>"  > 
<%=resultSet.getString("source")%> 
</a>
</div>
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
	}
		} 
	%>
	  
<div       id="repeat">
<h3>Advertisement Space </h3>			
</div> 



<div class="relation">
<br/>
&nbsp;<b class="white">Related Video's</b>
</div>
<div  class="other"   id="style-1">	   
<%
try{
connection = new Connection_sql().getConnection();
statement=connection.prepareStatement(new User_algorithm_check()
           .member_check(s3,
        		   connection,statement,"Vid_path","Read More"));
resultSet = statement.executeQuery();
while(resultSet.next()){
%>
	
<div   class="more_content">
<b> 
<p  class="p_title"> 
Title:
<%=resultSet.getString(3)%>
</p>
</b>
			   
<a   href="api_v.jsp?id=<%=resultSet.getString(1)%>&cats=<%=s3%>">
<img alt="<%=url.concat(resultSet.getString(2))%>"  
src="<%=url.concat(resultSet.getString(2))%>"  
	 class="tumb"/>
</a>
					
<p  class="p_write">
   <%=resultSet.getString(4)%>
</p>
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
	}
		} 
	%>
 </div>
 
 </form>
 </div>  
</body>
</html>