import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import com.mysql.cj.xdevapi.Statement;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("username");
		String admin = "admin";
		String pw=request.getParameter("password");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hirecar","root","gpChinmay@19"); 

			Statement st = con.createStatement();
			String query = "select cus_id,cus_password from customer where cus_id='"+ un+"' and cus_password='"+pw+"'";
			
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("uname", un);
				session.setMaxInactiveInterval(6000);
				System.out.println(un+"admin");
				if (un.compareTo(admin) == 0)
					request.getRequestDispatcher("addcar.jsp").forward(request,response);
				else {
					request.getRequestDispatcher("index.jsp").forward(request,response);
				}
			}
			else {
				response.sendRedirect("login.jsp");
			}
			
			
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
		
	}

}

