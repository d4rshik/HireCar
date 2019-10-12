

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ListCar
 */
@WebServlet("/ListCar")
public class ListCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String loc[] = request.getParameterValues("location");
		String pd[] = request.getParameterValues("pickd");
		String rd[] = request.getParameterValues("returnd");
		
		if(loc != null || pd != null || rd != null) {
			HttpSession session = request.getSession();
			System.out.println(loc[0]);
			session.setAttribute("location", loc[0]);
			session.setAttribute("pickd", pd[0]);
			session.setAttribute("returnd", rd[0]);
			request.getRequestDispatcher("carlist.jsp").forward(request,response);
		}
		else {
			response.sendRedirect("index.jsp");
		}
	}

}
