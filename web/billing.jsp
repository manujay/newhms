<%-- 
    Document   : billing
    Created on : Apr 7, 2013, 4:05:50 PM
    Author     : SuperUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,javax.servlet.*" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Billing</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body><%if(session.getAttribute("n1")==null)response.sendRedirect("index.jsp");%>
        <%--<h1>Hello World!</h1>--%>         
        <div id="outer">
            
            
            <%@include file="header.jsp" %> 
             <%@include file="menu.jsp" %> 
            
            
            
            
            
	
	<div id="content">
		<div id="primaryContentContainer">
			<div id="primaryContent">
				<div class="box">
					<h2>Welcome to Hospital Management System</h2>
<% 
        String pid  = (String)session.getAttribute("n1");
  try{
     
        String user   = "root";
        String pass   = "root";
        String url    = "jdbc:mysql://localhost:3306/nhmsdb";
        String driver = "com.mysql.jdbc.Driver";
        Class.forName(driver);
        Connection con = DriverManager.getConnection(url, user, pass);
        PreparedStatement pstmt = con.prepareStatement("select * from pat where pid = ?");
        pstmt.setString(1, pid);
        ResultSet rs = pstmt.executeQuery();
%>

        <form>
            <table>
                <tr><th colspan="3">Patient Details</th></tr>
                <tr><td colspan="3"><%=rs.getString("fname")%></td></tr>
                <tr><td colspan="3"><%=rs.getString("dob")%></td></tr>
                <tr><td colspan="3"><%=rs.getString("address")%></td></tr>
                <tr><td colspan="3"><%=rs.getString("phone")%></td></tr>
                <tr><td colspan="3"><%=rs.getString("email")%></td></tr>
            </table>
            <hr>
            <table>
                 <tr>
                     <th colspan="3">Charges</th>
                 </tr>
                 <tr>
                     <th>Date</th>
                     <th>Doctor</th>
                     <th>Consultation Fees</th>
                 </tr>
           
<% 
   PreparedStatement pstmt1 = con.prepareStatement("select * from appointment where pid = ?");
   pstmt1.setString(1, pid);
   ResultSet rs2 = pstmt1.executeQuery();
   while(rs2.next()){%>        
  
                <tr>
                    <td><%=rs2.getString("date")%></td>
                    <td><%=rs2.getString("email")%></td>
                    <td><input type="text" readonly></td>
                </tr> 
              <%}%>
              
            </table>
         
 </form>
<%     
    } catch(Exception e){
        /*response.sendRedirect("error.jsp");*/
        out.println(e.getMessage());}
        finally{out.close();}
                      
%>
                                        <div class="boxContent">
				</div>
			</div>
		</div>
		
		<div class="clear">
                    
                </div>
	</div>
<div id="footer">
    
</div>
</div>
</div>
    </body>
</html>
