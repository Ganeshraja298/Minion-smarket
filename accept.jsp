<%@include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<%

String id=request.getParameter("id");

 String sn="select * from membership where id='"+id +"'";
      ResultSet rs=stmt1.executeQuery(sn);
      if(rs.next())
      { String mid=rs.getString("id");
         session.setAttribute("mid", mid);
         
      }
 
//String pid = (String)session.getAttribute("pid");

try

{
   
    {
       // String amt=request.getParameter("amt");
       
        String sql="update membership set status='1' where id='"+id+"' ";
         int n=stmt.executeUpdate(sql);
         
                 if(n==1)
               { 
                  
                    %>
                    <script language="javascript">
                        alert("accepted Successful");
                        window.location.href="sms1.jsp";
                        </script>

<%
     
                }
 
                
    
    }
}
catch(Exception e)
{
    
}

%>