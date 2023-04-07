<%@include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="javapack.SMSAPI"%>
<%
     String uid = (String) session.getAttribute("uid");
    out.print(uid);
    String sql="select * from membership where id='"+uid+"'";
    ResultSet rs=stmt.executeQuery(sql);
    rs.next();
    String con=rs.getString("contact");
    out.print(con);
      SMSAPI.sendMessage(con,"Your Payment Successful");
    response.sendRedirect("product_tracking.jsp");
  
   
    
    
%>