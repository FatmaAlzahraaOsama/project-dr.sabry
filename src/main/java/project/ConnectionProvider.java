package project;
import java.sql.*;

public class ConnectionProvider {
 public static Connection getCon(){
	 
	 try
	 {
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection conn = null;
	 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ftma","root", "");
	 System.out.print("Database is connected !");
	 return conn;
	 }
	 catch(Exception e)
	 {
	 System.out.print("Do not connect to DB - Error:"+e);
	 return null;
	 }
	 
	
	 
 }

}