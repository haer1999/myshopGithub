package dao.impl;

import java.sql.*;

import bean.User;
import dao.IUserDao;

public class UserDao implements IUserDao {

	@Override
	public void addUser(User u) {
		Connection conn =null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/myshop", "root", "root");
			Statement stmt= conn.createStatement();
			String sql = "insert into User(name,password,email)"+"values('"+u.getName()+"','"+u.getPassword()+"','"
			+u.getEmail()+"')";
			System.out.println(sql);
			stmt.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				conn.close();
				
			}catch(Exception e){
				e.printStackTrace();
			}
			
		}

	}

	public User select(String name){
		Connection conn = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/myshop", "root", "root");
			Statement stmt =conn.createStatement();
			String sql = "select * from User where name= '" + name + "' ";
			ResultSet rs = stmt.executeQuery(sql);
			rs.next();
			User user = new User();
			user.setName(rs.getString("name"));
			user.setPassword(rs.getString("password"));
			return user;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}finally{
			try{
				conn.close();
			}catch(Exception er){
				er.printStackTrace();
			}
		}
		
	}
}
