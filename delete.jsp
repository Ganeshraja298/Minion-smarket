<%@include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<%

String id=request.getParameter("id");

 String sql="delete from product where id='"+id+"'";
int n=stmt1.executeUpdate(sql);
if(n==1)
{
    %>
    <script language="javascript">
        alert("removed  Successful");
        window.location.href="admin_project.jsp";
    </script>

<%
}
%>
