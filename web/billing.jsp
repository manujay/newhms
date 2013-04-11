<%-- 
    Document   : billing
    Created on : Apr 7, 2013, 4:05:50 PM
    Author     : SuperUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Billing</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <%--<h1>Hello World!</h1>--%>         
        <div id="outer">
            
            
            <%@include file="header.jsp" %> 
             <%@include file="menu.jsp" %> 
            
            
            
            
            
	
	<div id="content">
		<div id="primaryContentContainer">
			<div id="primaryContent">
				<div class="box">
					<h2>Welcome to Hospital Management System</h2>

        <form>
            <table>
                <th>ITEMS</th>
                <th>PARTICULARS</th>
                <th>AMOUNT</th>
                <tr><td><h4>Ward Charges</h4></td><td><input type="text" name="wrdc"></td><td><input type="text" name="wrdca"></td></tr>
                <tr><td><h4>Registration Charges</h4></td><td><select name=""><option value="Emergency">Emergency</option><option value="Referred">Referred</option><option value="OPD">OPD</option></select></td><td><input type="text"></td></tr>
                <tr><td><h4>Doctor Fees</h4></td><td><input type="text"></td><td><input type="text"></td></tr>
            </table><hr>
            <table>
                <thead><td colspan="3"><h4>Medicine Charges</h4></td></thead>
            <tr><th>Name</th><th>Type</th><th>Price</th></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            </table><hr>
            <table>
                <thead><td colspan="3"><h4>Diagnostic Charges</h4></td></thead>
            <tr><th>Name</th><th>Type</th><th>Cost/Rs</th></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            <tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
            </table>
        </form>                                        
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
