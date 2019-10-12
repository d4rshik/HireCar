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
@WebServlet("/RegisterCar")
public class RegisterCar extends HttpServlet {

 
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  response.setContentType("text/html");
  PrintWriter out = response.getWriter();
  String carname = request.getParameter("cname");
  String seater = request.getParameter("seater");
  String lug = request.getParameter("lug");
  String cat = request.getParameter("cat");
  String fuel = request.getParameter("fuel");
  String brand = request.getParameter("brand");
  String price = request.getParameter("price");
  String loc = request.getParameter("location");
  // validate given input
  
  if (carname==null || seater==null || lug==null || cat==null || brand == null || price == null || loc == null || fuel == null || carname.isEmpty() || seater.isEmpty() || lug.isEmpty() || cat.isEmpty() || brand.isEmpty() || price.isEmpty() || loc.isEmpty() || fuel.isEmpty()){
   RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
   out.println("<font color=red>Please fill all the fields</font>");
   rd.include(request, response);
  } else {
   
	  try {
    Class.forName("com.mysql.jdbc.Driver");
    

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hirecar","root","gpChinmay@19"); 

    String query = "insert into car (cname,seater,lug,cat,brand,fueltype,price,location) values (?,?,?,?,?,?,?,?)";
    System.out.println(query);
    PreparedStatement ps = con.prepareStatement(query);

    ps.setString(1, carname);
    ps.setString(2, seater);
    ps.setString(3, lug);
    ps.setString(4, cat);
    ps.setString(5, brand);
    ps.setString(6, fuel);
    ps.setString(7, price);
    ps.setString(8, loc);
    

    ps.executeUpdate(); // execute it on test database
    System.out.println("successfuly inserted");
    ps.close();
    con.close();
   } catch (ClassNotFoundException | SQLException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
   }
   RequestDispatcher rd = request.getRequestDispatcher("addcar.jsp");
   rd.forward(request, response);
  }
 }
}
