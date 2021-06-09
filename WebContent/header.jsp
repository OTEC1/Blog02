<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
a{
text-decoration:none;
}

a:hover{
text-decoration: none;
}
.banner{
height: 80px;
width: 100%;
background-color: #2499F2;
}
		
.ems{
width: 100%;
height: 34px; 
background:   #2499F2;
padding-top: 15px;
}

.sbtn{
background:#1AFF48 ;
padding: 3.5px;
border:none;
color:#fff;
border-radius: 5px;
cursor: pointer;
float: right;
margin-top: 6px;

}
	
				
.inputs{
border:none;
padding: 4px;
border-radius: 4px;
margin-right: 5px;

}
	

	
	
.bgls{			
background:  #2499F2; 
color:#fff; 
margin-left: 10px;
font-weight: 800;
font-family: sans-serif;
}
       			
.icon{
float: right;
margin-right: 50px;
margin-top: 3px;
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
  
     
#f1{
font-family: sans-serif;
text-decoration:none;
color: blue;
font-size: 1em;
background: #fff;
}		
			

	
	
#f2{
font-family: sans-serif;
text-decoration:none;
color: blue;
font-size: 1em;
margin: 20px;
background:   #2499F2;
top: 10px;
}

.top{
height: 70px;
width: 90%;
background: #fff;
box-shadow: 0px 20px 30px rgba(0,0,0,0.2);
border-radius: 0px 0px 0px 20px;
float: right;
}

.back{
float:right;
margin-right:10px;
background: #fff;
}
 		

.topleft{
background: #fff;
margin-left: 0px;
margin-top: 10px;
}


.whi{
background: #fff;
}
	

.btn{
background: green;
float: right;
color: #fff;
border-radius: 3px;
padding: 5px;
}



#f2{
font-family: sans-serif;
text-decoration:none;
color: #10059E;
font-size: 1em;
margin:10px;
background:   #2499F2;
display: inline-block;
}

	

@media (max-width: 1200px) {
 
 
.top{
height: 120px;
width: 100%;
border-radius: 0px 0px 0px 0px;
}

}



@media (max-width: 1100px) {
				 		
.top{
height: 120px;
width: 100%;
float: left;
border-radius: 0px 0px 0px 0px;
}

}

@media (max-width: 680px) {
.back{
background: #fff
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

.sbtn{
background:#1AFF48;
padding: 5px;
border:none;
color:#fff;
border-radius: 5px;
cursor: pointer;
float: right;
margin-right: 5px;
margin-top: 8px;
}
					
.inputs{
border:none;
width:130px;
padding: 6px;
border-radius: 4px;
margin-right: 5px;
float: right;
margin-top: 8px;
}	
}
</style>


<script type="text/javascript">

function openmenu(){
	
   document.getElementById("nnn").style.display="block";
   document.getElementById("menu-btn").style.display="none";
   document.getElementById("close-btn").style.display="block";

} 


function closeme(){
  document.getElementById("nnn").style.display="none ";
  document.getElementById("menu-btn").style.display="block";
  document.getElementById("close-btn").style.display="none";

}
</script>

</head>
<body>



<div    class="banner">
<div   class="ems">
<span  class="bgls">DEALIT BLOG</span>
<div class="icon">
<table   class="blk">
<tr   class="blk">
<td    class="blk">
<a   id="f2" href="https://web.facebook.com/webdealit"  class="blk" ><i class="fa fa-facebook-official"></i></a>

<a id="f2"  href="https://www.instagram.com/dealitblog/" class="blk" ><i class="fa fa-instagram"></i></a>
&nbsp;&nbsp;
 <a  id="f2"  href="#"   class="blk" ><i class="fa fa-twitter"></i></a>
</td>
</tr>
</table>
</div>
</div>
</div>



<div    class="top">
<form   class="back"     action="send_request"     method="post">
<table  class="topleft">
<tr  class="whi">
<td  class="whi">
<button   id="f1"           name="index"    >Home</button> 
<button   id="f1"           name="music"    >Trending Music</button> 
<button   id="f1"           name="vid"      >Viral Video</button>  
<button   id="f1"           name="advert"   >Product Review</button> 
<input    name="data"       placeholder="Search"    class="inputs"  />
<button   name="search"     type="submit"    class="sbtn">Search</button>
</td>
</tr>
</table>
</form>
</div>
</body>
</html>