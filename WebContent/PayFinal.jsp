
<%@page import="java.sql.*"%>  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String a = request.getParameter("id");
String b = request.getParameter("name");
String c = request.getParameter("amount");
   
int total=0;
String f_ins="";
String s_ins="";
String t_ins="";
String r_fee="";
Connection con=null;
System.out.println("a");

		try{
			 Class.forName("com.mysql.jdbc.Driver");  
		        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","123");  
		  
			PreparedStatement ps=con.prepareStatement
					("select T_Fee,F_Ins,S_Ins,T_Ins,R_Fee from app where id="+a);
						ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        total=Integer.parseInt(rs.getString("t_fee"));
	        f_ins=rs.getString("f_ins");
	        s_ins=rs.getString("s_ins");
	        t_ins=rs.getString("t_ins");
	        r_fee=rs.getString("r_fee");
			  System.out.println(total+" "+f_ins+" "+s_ins+"  "+t_ins+"  "+r_fee);  //test sop   
	            
	        }

			ps.execute();
			System.out.println("b");
		
			
String query="";
int c1 = Integer.parseInt(c);  //c = amount

System.out.println("c");			//test sop
              
			if(f_ins.equals("Not_Paid")) 
				
			{	System.out.println("1st if");			//test sop
			
			if(total>c1){
					r_fee="R-" + (total-c1);

	            query =	"update app set F_Ins='"+c1+"', R_Fee ='"+r_fee+"' where id="+a;
	
					}
				else if(total==c1) {
				query =	"update app set F_Ins='"+c1+"',S_Ins='Full_Paid',T_Ins='Full_Paid', R_Fee ='R-0', status='Full Paid' where id="+a;
				
			      }else{
			    	  out.print("Error , enter remaining amount");
						
						response.sendRedirect("Payfee.jsp");  
			      }
			}
			else if(s_ins.equals("Not_Paid"))
			{
				System.out.println("1st elseif");		//test sop
				if(total >(Integer.parseInt(f_ins) + c1)){
					r_fee = "R-" +( total-(Integer.parseInt(f_ins) + c1));
					query =	"update app set S_Ins='"+c1+"', R_Fee ='"+r_fee+"' where id="+a;
				}
			
				else if(total == (Integer.parseInt(f_ins) + c1)) {
					System.out.println("elseif 2ndd=0");
					query =	"update app set S_Ins='"+c1+"',T_Ins='Full_Paid', R_Fee ='R-0', status='Full Paid' where id="+a;
				
				}else{
					out.print("Error , enter remaining amount");
					
					response.sendRedirect("Payfee.jsp");  
				}
			
			}
			else if(t_ins.equals("Not_Paid"))
			{   
				System.out.println("2nd elseif"+((Integer.parseInt(f_ins) + Integer.parseInt(s_ins) + c1)));
				System.out.println(total);
				if(total==((Integer.parseInt(f_ins)) + (Integer.parseInt(s_ins)) + c1)){
					query =	"update app set T_Ins='"+c1+"',R_Fee ='R-0', status='Full Paid' where id="+a;
					
				}
				else {
				out.print("Error , enter remaining amount");
				
				response.sendRedirect("Payfee.jsp");  
	
					}
				
			}else{
out.print("Error , enter remaining amount");
				
				response.sendRedirect("Payfee.jsp");  
			}
			
			PreparedStatement ps1=con.prepareStatement(query);
					int status = ps1.executeUpdate();
					if(status==1){
						out.print("Update Successful");
						response.sendRedirect("Payfee.jsp");
					}
					else{
						out.print("Update Failed!");

						response.sendRedirect("view.jsp");
					}
		}	catch(Exception e){}
			

			
%>


</body>
</html>