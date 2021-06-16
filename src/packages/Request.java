package packages;

import java.io.IOException;
import java.util.List;

import javax.faces.context.FacesContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Request
 */
@WebServlet("/send_request")
public class Request extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String url,sz="";
	
	
	public HttpSession getSession(HttpServletRequest request) {
		HttpSession  session= request.getSession();
		return session;
		}
  
    public Request() {
        super();
    }

    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 sz=request.getParameter("data");
		 
		 if(getSession(request).getAttribute("tabs") == null) {
			 getSession(request).setAttribute("tabs", "index");
			 System.out.println("HOME NULL");
		 }
		 
		 if(request.getParameter("index")!= null) {
			 getSession(request).setAttribute("tabs", "index");
			 System.out.println("INDEX tab");  
			 redirect("/index.jsp",request,response);
		 }
		 else
		  if(request.getParameter("music")!= null) {
			  getSession(request).setAttribute("tabs", "music");
			  System.out.println("music tab"); 
			  redirect("/music.jsp",request,response);
		  }
		  else
		   if(request.getParameter("vid")!= null) {
			   getSession(request).setAttribute("tabs", "vid");
			   System.out.println("vid tab");  
			   redirect("/vid_list.jsp",request,response);
				 
		 }
	      else
		   if(request.getParameter("advert")!= null) { 
			   getSession(request).setAttribute("tabs", "advert");	
			   System.out.println("ads tab"); 
			   redirect("/advert.jsp",request,response);
		 }
		 
		
		 else
			if(request.getParameter("search")!= null && sz.trim().length()>0) 
						 query_db(request,response,(String) getSession(request).getAttribute("tabs"));
			else
				redirect("/index.jsp",request,response);
			  
		
	}
	
	
	private void redirect(String url2, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.getRequestDispatcher(url2).forward(request, response);
		
	}

	public void query_db(HttpServletRequest  request, HttpServletResponse response, String string) throws ServletException, IOException {
	     
		if(sz.trim().length()>0) {
			List<navigation>  ls=new  ServerRequest().read_in_query(sz.toLowerCase(),string);
		    	request.setAttribute("va",sz.toLowerCase());
					 			  
		  if(ls.size()>0) {
			
			if(string.equals("music")) {
				request.setAttribute("msearch", request.getParameter("data"));
			       url= "/msearch.jsp";
			}
			else 
			 if(string.equals("vid")) {
				 request.setAttribute("seay", request.getParameter("data"));
				   url= "vid_sea.jsp";
			 }
			else
			 if(string.equals("index")) {
				   request.setAttribute("sea", request.getParameter("data"));
				   url= "/ESearch.jsp";
			 }
		 
		}
		 else
			 if(string.equals("advert"))
				 url = "/advert.jsp";
			 else
			    url=  "Zero1.jsp";
		}
		
		System.out.println(url);
		 request.getRequestDispatcher(url).forward(request, response);
		 sz="";
	
	}
	
	
	public String make(String x) {
		if(x.contains("@"))
		     x=x.replaceAll("@", "<br/>");
		if(x.contains("#"))
		    x=x.replaceAll("#", "<br/><br/>");
		if(x.contains("’"))
		    x=x.replaceAll("’", "&lsquo;");
		if(x.contains("“"))
		    x=x.replaceAll("“", "&ldquo;");
		if(x.contains("”"))
		   x= x.replaceAll("”", "&rdquo;");
		
		return x;
	}
	


}
