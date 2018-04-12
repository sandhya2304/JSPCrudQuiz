package com.sandy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.sandy.bean.User;

public class UserDao 
{

	public static int save(User user) 
	{
		
		int status=0;
		
		try
		{
			
			Connection con=SinlgetonConnection.getCon();
			PreparedStatement ps=con.prepareStatement("insert into emp1234 values(?,?,?,?,?,?)");
			ps.setInt(1,user.getId());
			ps.setString(2,user.getName());
			ps.setString(3,user.getPassword());
			ps.setString(4,user.getEmail());
			ps.setString(5,user.getSex());
			ps.setString(6,user.getCountry());
			status=ps.executeUpdate();	
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return status;
	}

	public static int update(User user)
	{
          int status=0;
		
		try
		{
			
			Connection con=SinlgetonConnection.getCon();
			PreparedStatement ps=con.prepareStatement("update emp1234 set name=?,password=?,email=?,sex=?,country=? where id=?");
			ps.setString(1,user.getName());
			ps.setString(2,user.getPassword());
			ps.setString(3,user.getEmail());
			ps.setString(4,user.getSex());
			ps.setString(5,user.getCountry());
			ps.setInt(6,user.getId());
			status=ps.executeUpdate();	
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return status;
	}

	public static int delete(User user) 
	{
         int status=0;
		
		try
		{
			
			Connection con=SinlgetonConnection.getCon();
			PreparedStatement ps=con.prepareStatement("delete from emp1234 where id=?");
			ps.setInt(1,user.getId());
			status=ps.executeUpdate();	
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return status;
	}

	public static List<User> findAll() 
	{
		List<User> list = new ArrayList<>();
		
		try
		{
			Connection con=SinlgetonConnection.getCon();
			PreparedStatement ps=con.prepareStatement("select * from emp1234");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				User user=new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setEmail(rs.getString(4));
				user.setSex(rs.getString(5));
				user.setCountry(rs.getString(6));
				
				list.add(user);
				
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return list;
	}

	public static User getRecordById(int id)
	{
		User user= null;
		

		try
		{
			Connection con=SinlgetonConnection.getCon();
			PreparedStatement ps=con.prepareStatement("select * from emp1234 where id=?");
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				user=new User();
				user.setName(rs.getString(1));
				user.setPassword(rs.getString(2));
				user.setEmail(rs.getString(3));
				user.setSex(rs.getString(4));
				user.setCountry(rs.getString(5));
		
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return user;
	}
	


}
