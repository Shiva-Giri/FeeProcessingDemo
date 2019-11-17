package bean;

import java.sql.*;

public class SignUpDao {

	
 
 	public static int register(SignUpBean u){
		int status =0;
		try{
			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement
					("insert into portal values(?,?,?)");
			ps.setString(1,u.getName());
			ps.setString(2,u.getEmail());
			ps.setString(3,u.getPass());
			
			status=ps.executeUpdate();
		}	catch(Exception e){}
		return status;	
		}
	}



