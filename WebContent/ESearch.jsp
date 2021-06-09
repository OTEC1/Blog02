<%@page import="packages.navigation"%>
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
<title>Dealit Blog</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!--Css-->
    <link rel="stylesheet"  type="text/css" href="css/style.css">

	
	 <script src="js/bootstrap. min.js"></script>
     <script src="https://kit.fontawesome.com/yourcode.js"></script>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
  	
		   
		   
		  
</head>
<body>



    
</head>
<body>
    <header class="site-header">
      <nav class="navbar navbar-expand-md navbar-dark bg-steel fixed-top">
        <div class="container">
          <a class="navbar-brand mr-4" href="/">Dealit Blog</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse"
                  data-target="#navbarToggle" aria-controls="navbarToggle" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarToggle">
            <div class="navbar-nav mr-auto">
                <form   class="back"     action="send_request"     method="post">
                <button class="nav-item nav-link" name="index">Home</button>
                <button class="nav-item nav-link" name="music">Trending Music</button>
                <button class="nav-item nav-link" name="vid">Videos</button>
                <button class="nav-item nav-link" name="advert">Product Review</button>
               </form>
               </div>
            
            <div class="navbar-nav">
            <form   action="send_request"    method="post">
             <input   name="data"  class="mt-2" placeholder="Search"/>
		     <button   name="search"  type="submit" >
		      <i class="fa fa-search" aria-hidden="true"></i>
		     </button>
		 	</form>
              <a class="nav-item nav-link" href="about.jsp">About us</a>
              <a class="nav-item nav-link" href="about.jsp">Contact us</a>
            </div>
          
          </div>
        </div>
      </nav>
    </header>
     
        
                  

<main role="main" class="container"> 
      <div class="row">
        <div class="col-md-8">
         <div  class="top_ads">
            <div class='ads1' id="eps">
            <iframe src="//rcm-na.amazon-adsystem.com/e/cm?o=1&p=48&l=ur1&category=amz_music&banner=1S3TFCJE8KATTGNQJJ02&f=ifr&linkID=746824457afae7421a1e2047a5c801a1&t=webdealit-20&tracking_id=webdealit-20" 
            width="728"
             height="90" 
             scrolling="no" 
             border="0" 
             marginwidth="0" 
             style="border:none;" 
             frameborder="0"></iframe>
            </div>
            
            
            <div class="ads2">
              <div class='text-muted' id="eps"><b>Ad Space</b></div>
            </div>
       </div>
        
        
        
       
	<%
	 String searchs=(String)request.getAttribute("sea");
	String url="https://bloggingbucket.s3.eu-west-3.amazonaws.com/";
	Connection connection = null;
	PreparedStatement statement = null;
	ResultSet resultSet = null;
	
	
	try{
	connection = new Connection_sql().getConnection();
	statement=connection.prepareStatement("select * from  Pics_path  where title   like '%"+searchs+"%' order by id desc  limit 100");
	resultSet = statement.executeQuery();
	while(resultSet.next()){
		
    %>    
            <article class="media content-section">
              <div class="media-body">
              
              
              	      
						 
                <div class="article-metadata">
                Category: News				  
                </div>
                
                <h2><a class="article-title" href="<% String xe=null; xe=resultSet.getString(5);   	
				 if(xe.equalsIgnoreCase("Read More")){%>
				 view.jsp?eid=<%=resultSet.getString(1)%>&ecat=<%=resultSet.getString(6)%>
				 <%}else{%>
				 video.jsp?eid=<%=resultSet.getString(1)%>&efilename=<%=resultSet.getString(2)%>&ecat=<%=resultSet.getString(6)%>&etopic=<%=resultSet.getString(3) %>
				 <%}%>"><%=resultSet.getString(3)%></a></h2>
                <p class="article-content">
                  <p   class="account-write"  style="overflow-y: hidden;"> 
					<%=resultSet.getString(4)%> 
				  </p>
				  <p class="account-read">
				    <%=resultSet.getString(5)%>
				  </p>
				
                 <a class="o1" href="<%xe=null; xe=resultSet.getString(5);   	
				 if(xe.equalsIgnoreCase("Read More")){%>
				 view.jsp?eid=<%=resultSet.getString(1)%>&ecat=<%=resultSet.getString(6)%>
				 <%}else{%>
				 video.jsp?eid=<%=resultSet.getString(1)%>&efilename=<%=resultSet.getString(2)%>&ecat=<%=resultSet.getString(6)%>&etopic=<%=resultSet.getString(3) %>
				 <%}%>">
				  		       	  
                    <img src="<%=new User_algorithm_check().url.concat(resultSet.getString(2))%>" class="account-img" />
				 </a>
				
				
				</p>
				
				   
              </div>
            </article>
            
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
        <div class="col-md-4">
          <div class="content-section">
            <p class='text-muted'>Advertisement Space
               <div>
                  <div  class="ads1">
	   
	    
					 	<iframe src="//rcm-na.amazon-adsystem.com/e/cm?o=1&p=12&l=ur1&category=amzn_firetv_eg_101618&banner=07Z1A8KKG3NGABM31PG2&f=ifr&linkID=d46777228984782c1db4c059541e7922&t=webdealit-20&tracking_id=webdealit-20" width="300" 
					 	height="250" 
					 	scrolling="no"
					    border="0"
					    marginwidth="0" 
					    style="border:none;"
					    frameborder="0">
					    </iframe>
					  
					  
					  
					  
					     <a href="https://www.anrdoezrs.net/click-100310358-14424064">
				         <img src="https://www.tqlkg.com/image-100310358-14424064" 
				         width="300" 
				         height="250" 
				         alt="" border="0"/>
				         </a> 	
					     
			   </div>
			   
			   
			   <div class="ads2">
				   <iframe src="//rcm-na.amazon-adsystem.com/e/cm?o=1&p=12&l=ur1&category=amzn_firetv_eg_101618&banner=07Z1A8KKG3NGABM31PG2&f=ifr&linkID=d46777228984782c1db4c059541e7922&t=webdealit-20&tracking_id=webdealit-20" width="300" 
				 	height="250"
				 	scrolling="no"
				 	border="0"
				    marginwidth="0" 
				    style="border:none;"
				    frameborder="0">
				    </iframe>
			   </div>  
              </div>
            </p>
      </div>
    </div>
  </div>
</main>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>	
</html>






