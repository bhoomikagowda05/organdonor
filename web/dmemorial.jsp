<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Organdonar</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style2 {font-size: 24px}
-->
</style>

<style type="text/css">
<!--
.style2 {font-size: 24px}
-->

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #000;
  padding: 8px;
}

#customers tr:nth-child(even){background-color:#B4E7FA;}

#customers tr:hover {background-color: #33ACFF;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: black;
}
</style>
</head>
<body>
		<table width="920"   border="0" cellspacing="0" cellpadding="0" align="center">
		  <tr>
			<td height="557" valign="top">
			<table width="920"  border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td>
						<table width="920"  border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="256"><a href="index.html" class="style2">OrganDonation.com</a></td>
							<td width="664"><img src="images/h2.jpg" alt="" width="664" height="74" border="0"></a></td>
						  </tr>
						</table>
				</td>
			  </tr>
			  <tr>
				<td height="39" class="menu">
						<table width="920"  border="0" cellspacing="0" cellpadding="0">
						  <tr align="center">
							<td width="153"><a href="about.jsp" id="linktop">About Us</a></td>
							<td width="155"><a href="services.jsp" id="linktop">Services</a></td>
							<td width="156"><a href="signup.jsp" id="linktop">Signup</a></td>
							<td width="154"><a href="signin.jsp" id="linktop">SignIn</a></td>
							<td width="154"><a href="dmemorial.jsp" id="linktop">Donar memorial</a></td>
							<td width="154"><a href="transplant.jsp" id="linktop">Transplant centers</a></td>
							<td width="154"><a href="feedback.jsp" id="linktop">Feedback</a></td>
							<td width="167"><a href="contactus.jsp" id="linktop">Contact Us</a></td>
						  </tr>
						</table>
				</td>
			  </tr>
			  <tr>
				<td height="26">&nbsp;</td>
			  </tr>
			 
			</table>
					  <table width="918"  border="0" cellspacing="0" cellpadding="0">
						<tr>
						  <td width="918" height="26"><div align="center">
						    <p><img src="donor-memorial-banner2016-m.jpg" width="768" height="275"></p>
						    <p>
						      <%@page import ="java.sql.*"%>
                              <%@page import="java.util.*,java.io.*"%>
                              <%   
                                          
try
{
   //  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     // Connection con = DriverManager.getConnection("JDBC:ODBC:shopping","","");
    Class.forName("com.mysql.jdbc.Driver");
//      Connection con = DriverManager.getConnection("JDBC:ODBC:DON","","");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/organdonar","root","mysql"); 
	  Statement stmt=con.createStatement();
      ResultSet rs;
      ResultSetMetaData rmd;
	 
      	 
	   String s1="select * from uploadcases";
	
     rs = stmt.executeQuery(s1);
      
		out.println("<body><h1><div align=center><strong><span class=style1>Urgent Requirement</span></strong></div></h1></body>");
      
        out.println("<table border=1 id=customers align=center width=50% id=customers ><tr>");
        
        rmd =rs.getMetaData();
        int n=rmd.getColumnCount();
        for(int i=1;i<=n+1;i++)
        {
		    if(i<=n)
            out.println("<td><b><font size=5>"+rmd.getColumnName(i)+"</font></b></td>");
			
        }
        String s="",s5="";
        while (rs.next())
        {
            out.println("<tr>");
            
                for(int x=1;x<=n;x++)
                {
        	         s=rs.getString(x);
					if(x==4)
					{
					  out.println("<td><b><img src="+s+" width=100 height=100></img></b></td>");
					}
					else
					{
					  out.println("<td><b>"+s+"</b></td>");
					}
					
					               
					
					 
					  
                 }   
                    // out.println("<td><b><a href=addtocart.jsp?d="+s5+"&c=tables>Add to cart</b><a/></td>");
                
            
            
                
            
          out.println("</tr>");
        }
		out.println("</table><br></body></html>");
        rs.close();
		stmt.close();
		con.close();
		
    
}
  catch(Exception e)
    {
        
      out.println(e);
    }
%>
						    </p>
						  </div></td>
						</tr>
						<tr>
						  <td><table width="100%"  border="0" cellspacing="0" cellpadding="0">
							  <tr>
								<td>&nbsp;</td>
							  </tr>
							</table></td>
						</tr>
			  </table>
		    </td>
		  </tr>
		</table>
</body>
</html>
