import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserDataServlet
 */
@WebServlet("/RegisterUser")
public class RegisterUser extends HttpServlet {

 
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  response.setContentType("text/html");
  PrintWriter out = response.getWriter();
  String uid = request.getParameter("uname");
  String name = request.getParameter("fname");
  String pass = request.getParameter("password");
  String email = request.getParameter("email");
  String mob = request.getParameter("mobile");
  // validate given input
  
  if (name==null || uid==null || pass==null || email==null || mob == null ||name.isEmpty() || uid.isEmpty() || pass.isEmpty() || email.isEmpty() || mob.isEmpty()){
   RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
   out.println("<font color=red>Please fill all the fields</font>");
   rd.include(request, response);
  } else {
   
	  try {
    Class.forName("com.mysql.jdbc.Driver");
    

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hirecar","root","gpChinmay@19"); 

    String query = "insert into customer (cus_id,cus_name,cus_password,cus_email,cus_mobile) values (?,?,?,?,?)";

    PreparedStatement ps = con.prepareStatement(query); // generates sql query

    ps.setString(1, uid);
    ps.setString(2, name);
    ps.setString(3, pass);
    ps.setString(4, email);
    ps.setString(5, mob);
    

    ps.executeUpdate(); // execute it on test database
    System.out.println("successfuly inserted");
    ps.close();
    con.close();
   } catch (ClassNotFoundException | SQLException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
   }
   RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
   rd.forward(request, response);
  }
 }
}
