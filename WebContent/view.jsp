<%@page import="packages.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="sQL_con.Connection_sql"%>
<%@page import="packages.User_algorithm_check"%>
<!DOCTYPE html>
<html>
<head><title>Dealit Blog</title>
<meta name="robots" content="index, follow" />
<meta name="description" content="Life style, music, videos, news, Gist"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>  
<meta charset="ISO-8859-1"/>
<script data-ad-client="ca-pub-7498774630772945" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
 
        
        
<link href="css/bootstrap.min.css" rel="stylesheet"/>
<link href="css/bootstrap-theme.min.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"/>
  
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel='dns-prefetch' href='//s.w.org' />

   
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="js/jquery-2.1.1.min.js"></script>


<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap. min.js"></script>
<script src="https://kit.fontawesome.com/yourcode.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>



<!-- Font -->
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">



<style>
*{
margin: 0px;
padding: 0px;
background:none; 
}

.base{
width: 80%;
height: 1200px;
margin-top: -50px;
margin-left: auto;
margin-right: auto;
background: #FFFFFF;

}

.ad0{
float: right;
}

.ad2{
float: left;
}

#main_container{
margin-top: 100px;
}


.left_wing{
width:65%;
float: left;
height: 800px;
overflow-y: scroll;
}


.right_wing{
float: right;
height: 450px;
width:35%;
box-shadow: 0px 20px 30px  rgba(0,0,0,0.2);
}

.banner_img{
height: 400px;
width: 90%;
margin: 10px;
}

.titles{
font-family: 'Roboto', sans-serif;
font-weight: 800;
padding: 10px;
width: 90%;
height: 50px;
overflow-y: scroll;
overflow-x: hidden;
font-size: 25px;
}


#style-1::-webkit-scrollbar{
width: 0px;  
}


#style-1::-webkit-scrollbar-thumb{
background:none;
}
 
.write_up_display{
font-family: 'Roboto', sans-serif;
font-style: inherit;
font-weight: 300;
src: url(/fonts.gstatic.com/s/lato/v17/S6u_w4BMUTPHjxsI9w2_Gwft.woff2) format('woff2');
unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD; 		
text-align:left;
padding: 15px;
height: auto;
width: 80%;

}  

.source_design{
margin-left: 10px;
overflow:hidden;
height: 30px;
width: 81%;
}

.buy_design{
margin-left: 10px;
height: 30px;
width: 90%;
color: #FFF;
font-family: 'Roboto', sans-serif;

}

.buy_button{
font-family: 'Roboto', sans-serif;
background: #CEAC02;
padding: 5px;
float: right;
border-radius: 3px;
color: #FFF;

}

.related{
height: 500px;
width: 80%;
margin-left: auto;
margin-right: auto;
margin-top: 10px;
}

.related_banner{
margin-left: 60px;
font-weight: 700;
font-family: 'Roboto', sans-serif;
}

.related_content{
text-align: center;
margin-left: auto;
margin-right: auto;
overflow-y: scroll;
height: 450px;
width: 95%;
}

.contents{
background-color: #FFF;
display: inline-block;
height: 300px;
width: 300px;
margin: 10px;
box-shadow: 0px 20px 30px  rgba(0,0,0,0.2);
cursor: pointer;
}

.content_img{
width: 100%;
height: 200px;
}

.content_expo{
height:70px;
width: 100%;
padding: 10px;
overflow: hidden;
text-align:left;
font-family: 'Roboto', sans-serif;
}

.read_more{
float:right;
font-family: 'Roboto', sans-serif;
margin-right: 8px;
}


.ads_top{
display: none;
}

@media(max-width: 980px){
.base{
width: 100%;
overflow-x: hidden;
}

.left_wing{
overflow-x: hidden;
}


.contents{
height: auto;
width: 130px;
}

.left_wing{
width: 100%;
}
.right_wing{
float: left;
display: none;
}


.ads_top{
float: left;
width: 100%;
height: 180px;
display: block;
margin-bottom: 10px;
margin-top:10px;
box-shadow: 0px 20px 30px  rgba(0,0,0,0.2);
}

.write_up_display{
width: 100%;
padding: 18px;
}

.ad0{
display: none;
}


.ad2{
display: none;
}

.titles{
width: 100%;
font-size: 15pt;
height: 100px;

}

.banner_img{
width: 100%;
}

.related{
width: 100%;
}

.buy_design{
width: 100%;
}

.buy_button{
margin-right: 10px;
}

.related_banner{
margin-left: 5px;
}

}
</style>

</head>
<body>

<div class="ad0">
adspace1
</div>
		
	
<div class="ad2">
adspace
</div>
	
<div  class="base">
<jsp:include page="header.jsp"></jsp:include>

<div  id="main_container">
<%
//End Point
String url="https://bloggingbucket.s3.eu-west-3.amazonaws.com/";
Connection connection = null;
PreparedStatement statement = null;
ResultSet resultSet = null;


try{
connection = new Connection_sql().getConnection();
statement=connection.prepareStatement("select * from Pics_path where id="+(String)request.getParameter("eid"));
resultSet = statement.executeQuery();
while(resultSet.next()){
%>


<div  class="left_wing"   id="style-1">

<div  class="ads_top">
ads space

</div>

<div id="style-1" class="titles">
<%=resultSet.getString(3)%>
</div>
<img alt="<%=resultSet.getString(2)%>" 
src="<%=url.concat(resultSet.getString(2))%>" 
 class="banner_img"/>

<a class="source_design" href="<%=resultSet.getString(8)%>">
Source: <%=resultSet.getString(8)%>
</a>

<div class="buy_design">
<%if(resultSet.getString(9).trim().length()>0){ %>
<a  href="<%=resultSet.getString(9)%>" class="buy_button">BUY ON AMAZON</a>
<%} %>
</div>

<div  class="write_up_display">
<%=new Request().make(resultSet.getString(4),2)%>
    
</div>

<% 
}} 
catch (Exception e) {e.printStackTrace();
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



<div  class="right_wing">

</div>
</div>
</div>
<div  class="related">
<div  class="related_banner">Related News</div>
<div  id="style-1" class="related_content">
<% 
try{
connection = new Connection_sql().getConnection();
statement=connection.prepareStatement("select * from Pics_path where typeq='"+(String)request.getParameter("ecat")+"'  order by  id desc  limit 10 ");
resultSet = statement.executeQuery();
while(resultSet.next()){
%>

<div  class="contents">
<a href=" view.jsp?eid=<%=resultSet.getString(1)%>&ecat=<%=resultSet.getString(6)%>">
<img alt="<%=resultSet.getString(2)%>" src="<%=url.concat(resultSet.getString(2))%>"  class="content_img"/>
</a>
<div class="content_expo">
<%=new Request().make(resultSet.getString("writes"),1)%>
</div>
<div class="read_more">Read more...  </div>
</div>

<% 
}} 
catch (Exception e) {e.printStackTrace();
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
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>