package packages;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class enq
 */
@WebServlet("/enquiry")
public class enq extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public enq() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a1=request.getParameter("name1");
		String a2=request.getParameter("emails");
		String a3=request.getParameter("question");
		
		if(!a1.trim().isEmpty() && !a2.trim().isEmpty() && !a3.trim().isEmpty() ) {
		new ServerRequest().send_enquiry(a1,a2,a3);
		request.setAttribute("message", "Thanks We'll Get Back to Your Shortly");
		}
		else {
			request.setAttribute("message", "Pls all fields are mandatory");
		}
			
		request.getRequestDispatcher("about.jsp").forward(request, response);
	}

}
