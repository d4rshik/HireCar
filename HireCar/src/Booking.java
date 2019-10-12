

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Booking
 */
@WebServlet("/Booking")
public class Booking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = request.getParameterValues("cid")[0];
		System.out.println(id);
		String pdate = session.getAttribute("pickd").toString();
		String rdate = session.getAttribute("returnd").toString();
		String csid = session.getAttribute("uname").toString();
		System.out.println(rdate);
		if(pdate != null && rdate != null) {
			try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hirecar","root","gpChinmay@19"); 
			Statement st = con.createStatement();
			String query = "select returndate from booking where cid="+ id+" order by bookid LIMIT 1";
			System.out.println(query);
			ResultSet rs = st.executeQuery(query);
			
			if(rs.next()) {
				String d = rs.getString("returndate");
				System.out.println(d);
				if (pdate.compareTo(d) > 0)
				{
					query = "insert into booking (cid,cusid,pickdate,returndate) values (?,?,?,?)";
					System.out.println(query);
					PreparedStatement ps = con.prepareStatement(query);
					
					ps.setString(1, id);
				    ps.setString(2, csid);
				    ps.setString(3, pdate);
				    ps.setString(4, rdate);
				    ps.executeUpdate();
				    ps.close();
				    response.sendRedirect("bookings.jsp");
				} else {
					response.sendRedirect("index.jsp");
				}
			}
			else {
				query = "insert into booking (cid,cusid,pickdate,returndate) values (?,?,?,?)";
				System.out.println(query);
				PreparedStatement ps = con.prepareStatement(query);
				
				ps.setString(1, id);
			    ps.setString(2, csid);
			    ps.setString(3, pdate);
			    ps.setString(4, rdate);
			    ps.executeUpdate();
			    ps.close();
			    response.sendRedirect("bookings.jsp");
			}
			
		    con.close();
		}
		 catch (ClassNotFoundException | SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		   }
		
	}
	}
}
