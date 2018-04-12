package com.sandy.dao;

import java.util.List;

import com.sandy.bean.User;

public interface IUserDao
{
	
	public int save(User user);
	public int update(User user);
	public int delete(User user);
	public List<User> findAll();
	public User getRecordById(int id);
	

}
