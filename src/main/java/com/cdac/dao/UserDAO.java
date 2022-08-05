package com.cdac.dao;

import java.util.List;

import com.cdac.model.User;

public interface UserDAO {

	public int saves(User user);
	public List<User> fetchAll();
	public User findById(int id);
	public int delete(int id);
	public int update(int id);
}
