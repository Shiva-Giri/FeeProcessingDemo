package AppBean;
 
 
import AppBean.AppFormBean;


import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;

import bean.ConnectionProvider;
 
public class AppFormDao {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","123");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  

 	public static int save(AppFormBean u){
		int status = 0;
		int total=0;
		String rem_1="Not_Paid",rem_2="Not_Paid",rem_3="Not_Paid",rem="";
			if(u.getCourse().equals("C/C++")){
			total=5000;
			}else if(u.getCourse().equals("C/C++")){
				total=5000;
			}else if(u.getCourse().equals("Core Java")){
				total=5000;
			}else if(u.getCourse().equals("Adv. Java")){
				total=6000;
			}else if(u.getCourse().equals("Python")){
				total=6000;
			}else if(u.getCourse().equals("Python + ML")){
				total=10000;
			}else if(u.getCourse().equals("Android")){
				total=10000;
			}else if(u.getCourse().equals(".NET framework")){
				total=7000;
			}
		rem="R-"+total;
		try{
			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement
					("insert into app(name,dob,gender,phone,address,education,fname,occupation,hphone,course,T_Fee,F_Ins,S_Ins,T_Ins,R_Fee,status) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,u.getName());
			ps.setString(2,u.getDob());
			ps.setString(3,u.getGender());
			ps.setString(4,u.getPhone());
			ps.setString(5,u.getAddress());
			ps.setString(6,u.getEdu());
			ps.setString(7,u.getFname());
			ps.setString(8,u.getOcc());
			ps.setString(9,u.getHphone());
			ps.setString(10,u.getCourse());
			
			ps.setInt(11,total);
			ps.setString(12,rem_1);
			ps.setString(13,rem_2);
			ps.setString(14,rem_3);
			ps.setString(15,rem);
			ps.setString(16,"UN_ Paid");
			
			
			
			//System.out.println(u.getName()+""+u.getDob()+""+u.getGender()+""+u.getPhone()+""+u.getAddress()+""+u.getEdu()+""+u.getFname()+""+u.getOcc()+""+u.getHphone()+""+u.getCourse());
			status=ps.executeUpdate();
		}	catch(Exception e){}
		return status;	
		}
 	public static int update(AppFormBean u){  
	    int status = 0;
	    try{
			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement
					("update app set name=?,dob=?,gender=?,phone=?,address=?,education=?,fname=?,occupation=?,hphone=?,course=? where id= ?");
			ps.setString(1,u.getName());
			ps.setString(2,u.getDob());
			ps.setString(3,u.getGender());
			ps.setString(4,u.getPhone());
			ps.setString(5,u.getAddress());
			ps.setString(6,u.getEdu());
			ps.setString(7,u.getFname());
			ps.setString(8,u.getOcc());
			ps.setString(9,u.getHphone());
			ps.setString(10,u.getCourse());
			 ps.setInt(11,u.getId());  
		      
			
			 status=ps.executeUpdate();
		}	catch(Exception e){}
		return status;	
		}	  
 	
 	public static int delete(AppFormBean u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from app where ID=?");  
	        ps.setInt(1,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	
 	
 	public static List<AppFormBean> getAllRecords(){  
	    List<AppFormBean> list=new ArrayList<AppFormBean>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from app");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	AppFormBean u=new AppFormBean();  

	            u.setId(rs.getInt("id"));   
	             	u.setName(rs.getString("name"));
	    			u.setDob(rs.getString("dob"));
	    			u.setGender(rs.getString("gender"));
	    			u.setPhone(rs.getString("phone"));
	    			u.setAddress(rs.getString("address"));
	    			u.setEdu(rs.getString("education"));
	    			u.setFname(rs.getString("fname"));
	    			u.setOcc(rs.getString("occupation"));
	    			u.setHphone(rs.getString("hphone"));
	    			u.setCourse(rs.getString("course"));
	    			list.add(u); 
	        }
	        	 
	          
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
 	
 	public static List<AppFormBean> getAllRecords1(){  
	    List<AppFormBean> list=new ArrayList<AppFormBean>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from app");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	AppFormBean u=new AppFormBean();  

	            u.setId(rs.getInt("id"));   
	             	u.setName(rs.getString("name"));
	             	u.setCourse(rs.getString("course"));
	    			u.setTotal(rs.getString("T_Fee"));
	    			u.setRem_1(rs.getString("F_Ins"));
	    			u.setRem_2(rs.getString("S_Ins"));
	    			u.setRem_3(rs.getString("T_Ins"));
	    			u.setRem(rs.getString("R_Fee"));
	    			u.setStatus(rs.getString("status"));
	    			
	    			list.add(u); 
	        }
	        	 
	          
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
 	
 	
 	
	        
 	public static  AppFormBean getRecordById(int id){  
 		AppFormBean u=null;  System.out.println("1");
	    try{  
	    	
	    Connection con=getConnection(); 
	    PreparedStatement ps=con.prepareStatement("select * from app where ID=?");  
	    
	    System.out.println("2");
	    ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){ 
	        	System.out.println("3");
	            u=new AppFormBean();  
	            u.setId(rs.getInt("id"));   
	             	u.setName(rs.getString("name"));
	    			u.setDob(rs.getString("dob"));
	    			u.setGender(rs.getString("gender"));
	    			u.setPhone(rs.getString("phone"));
	    			u.setAddress(rs.getString("address"));
	    			u.setEdu(rs.getString("education"));
	    			u.setFname(rs.getString("fname"));
	    			u.setOcc(rs.getString("occupation"));
	    			u.setHphone(rs.getString("hphone"));
	    			u.setCourse(rs.getString("course"));
	    			
	        				}
	    		}
	    catch(Exception e){System.out.println(e);}  
	    return u;  
	}

	
}
