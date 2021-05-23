<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>>

 <%
 String name=request.getParameter("name");
 String email=request.getParameter("email");
 String phone=request.getParameter("phone");
 String role=request.getParameter("role");
 String password=request.getParameter("password");
 String region="";
 String city="";
 String street="";
 String id="7";
 
 
 try{
	 //String photo="";
    // String path="path here";
     
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps=con.prepareStatement("insert into users (id,email,password,name,city,region,street,phone,role) values(?,?,?,?,?,?,?,?,?)");
		ps.setString(1, id);
		ps.setString(2, email);
		ps.setString(3, password);
		ps.setString(4, name);
		ps.setString(5, city);
		ps.setString(6, region);
		ps.setString(7, street);
		ps.setString(8, phone);
		
		ps.setString(9, role);
		ps.executeUpdate();
		response.sendRedirect("signUp.jsp?msg=valid");

	}
	catch(Exception e){
		System.out.print(e);
		response.sendRedirect("signUp.jsp?msg=invalid");
		
		
	}
 %>