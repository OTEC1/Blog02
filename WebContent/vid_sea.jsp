<%@page import="sQL_con.Connection_sql"%>
<%@page import="packages.User_algorithm_check"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="packages.*"%>
<!DOCTYPE html>
<html>
<head>
<title>
Dealit Trending Video's Search
</title>
<meta charset="ISO-8859-1">

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
					margin-top: -80px;
					
				}

			.boz{
					width: 100%;
					height: 140px;
				    background-color: #2499F2;
			
			}
			
			
					.xms{
					width: 100%;
					 height: 30px; 
					 background: #2499F2;
				}
				
			.top_logo{
					width: 200px;
					height: 80px;
					background: none;
				
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
         		height: 610px;
         		width: 29%;
         		background: #fff;
            
            	}
            	
          	.ad2{          	
          		display: none;
          			
          		}
          
            h3{
            font-family: sans-serif;
            font-weight: 600;
            color: #070B7B;
            background: #fff;
            padding: 10px;
            margin-top: 70px;
            }
            
            
            .vems{
            		
            	box-shadow: 0px 4px 8px 0 rgba(0,0,0,0.3);  
		        height: 150px; 
		        width: 80%;
		        background: #fff;
		        margin: 20px;
            	
            }
            		
            		
            		
            .bts{
            	background: #fff;
            }
            
              .bts1{
            	background: #fff;
            	overflow:hidden;
            	font-family: sans-serif;
            	width: 60%;
            	max-height:70px;
            	margin-left: 200px;
            	
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
            			margin-top:10px;
            			margin-right:50px;
            			width:60px;
            		    height:60px;
            		}
            		
           		a{
					font-family: sans-serif;
					text-decoration:none;
					color: #10059E;
					font-size: 1em;
					margin: 20px;
					background: #fff;
					top: 10px;
					}
			
			
		   	     .submit{
				 border:none;
				 color:#fff;
				 border-radius: 5px;
				 cursor: pointer;
				 float: right;
				 background: none;
				}
				
            		
            	
				
				.cinput{
				border:none;
				padding: 4px;
				border-radius: 4px;
				margin-right: 5px;
				}
					
					
				
				
				.footer{
				 width: 100%;
				 height: 30px; 
				 background: #000; 
				 margin-top: 0px;
				 float: right;
				}
					
				.foot{
				float: right;
				margin-top:10px;
				margin-right: 10px; 
				background: #000;
				}
					
				.sw{
				font-size: 15px;
				color: #fff;
				background: #000;
				}
					
				h4{
				display: none;
				}
					
					
			    .forms{
				 background: #fff;
				 float: right;
				 margin-right: 10px;
				}
					
			
					
				.icon{
				float: right;
				margin-right: 50px;
				margin-top: -17px;
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
				     
				     h6{
				     background: #2499F2; 
				     color:#fff; 
				     margin-left: 10px;
				     font-size:1em; 
				     font-family: sans-serif;
				     padding-top: 5px;
				    
				     	}
					
				@media(max-width:1100px){
				
				
						.base{
							width: 80%;
							margin-left:auto;
							margin-right:auto;
							background: #fff;
							
						}
				
					.ads1{
					display: none;
					}
				  
				   .scrollbar{ 
        				 width:100%;
        				 height:525px;
        				 margin-top: 30px;
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
			            
			            
			      .fa-twitter, .fa-facebook-official, .fa-envelope-o, .fa-instagram{
				     font-size: 15px;
				     }
				     
				     
				.icon{
					float: right;
					margin-right: 12px;
					margin-top: -30px;
					
					}
			
					h6{
					padding-top: 5px;
					font-size: 1em;
					}
		
					.xms{
					width: 100%;
					 height: 40px; 
				}
					
				}		
			
          	@media(max-width:580px){
            		
            	.base{
					width: 100%;
					margin-left:auto;
					margin-right:auto;
					background: #fff;
					
				}
				
			
        
						
            	  	.top{
					height: 120px;
					width: 100%;
					background: #fff;
	 		    	border-radius: 0px 0px 0px 0px;
	 		    	float: right;
				}
					

		
						
					a{
						font-family: sans-serif;
						text-decoration:none;
						color: #10059E;
						font-size: 1em;
						margin:10px;
						background: #fff;
						display: inline-block;
					
						}
            
				  	.imgs1{
            	
            			border-radius:200px;
            			float: right;
            			margin-top:40px;
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
            	font-family: sans-serif;
            	width: 60%;
            	max-height:70px;
            	margin-left: 140px;
            	
            }
	            
	            
	         .vems{
            	box-shadow: 0px 4px 8px 0 rgba(0,0,0,0.3);  
		        height: 150px; 
		        width: 350px;
		        background: #fff;
		        margin: 10px;
		        font-family: sans-serif;
            	
            }
            		
	              .scrollbar{ 
        				 width:100%;
        				 height:525px;
        				 margin-top: -130px;
      				  }
            
	               .ads1{
	            	display: none;
	            
	            	}
            	
            	.ads2{
            		display: block;
           			width: 100%;
           			height: 150px;
           			margin-top:130px;
           			margin-bottom:40px;
           			background: #fff;
            	
            	}
            	.ads{
            	display:block;
            	width: 100%; 
            	height: 200px; 
            	background-color: #fff;
            	}
            	
    
            	
            	.footer{
						width: 100%;
						 height: 50px; 
					}
					
					
					
					h5{
					background: #fff;
					}
					
					
					h4{
						display: block;
						background: #fff;
						
					}
					
            		}
</style>
    
    
</head>
<body>

<div   class="base">				
<jsp:include page="header.jsp"></jsp:include>
		
<div    class="vid-list">
		
<div   class="ads2">
<h4><b>Advertisement  Space</b></h4> 
</div>
		
<h3   align="center"><b>New Trending Videos</b></h3>
<div class="scrollbar"  id="style-1">
<div class="force-overflow">
			
			
<%
//End Point
String url="https://bloggingbucket.s3.eu-west-3.amazonaws.com/";
Connection connection = null;
PreparedStatement statement = null;
ResultSet rs = null;
String  j= (String)request.getAttribute("seay");

try{
connection = new Connection_sql().getConnection();
statement=connection.prepareStatement("select   *   from  Vid_path  where title like '%"+j+"%'   order by id desc ");
rs = statement.executeQuery();
while(rs.next()){
%>
			                  	
<a href="video.jsp?eid=<%=rs.getString(1) %>&efilename=<%=rs.getString(2)%>&ecat=<%=rs.getString(6)%>&etopic=<%=rs.getString(3)%>"    class="nod" >
<div class="bts">
<div   class="vems">
<img   src="<%= url.concat((rs.getString(2)))%>"    class="imgs"        alt="<%=rs.getString(3)%>"/>
<div  class="bts1"  >Title: <%=rs.getString(3)%></div>
<p   class="bts1"  value="Now Playing   Click to View"></p>
<img   src="images/Video_start.png"    class="imgs1"  />
</div>
</div>	
</a>	
<div   class="ads">
<h5>Ad Space</h5>
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
<div  class="ads1">
	adspace
</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>