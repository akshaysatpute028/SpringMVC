package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.UserDAO;
import com.cdac.model.User;

@Service
public class UserServiceImple implements UserService{
	@Autowired
private UserDAO userDAO;
	@Override
	public int saves(User user) {
		System.out.println("User : "+user);
		return userDAO.saves(user);
	}

	@Override
	public List<User> fetchAll() {
		return userDAO.fetchAll();
	}

	@Override
	public User findById(int id) {
		return userDAO.findById(id);
	}

	@Override
	public int delete(int id) {
		return userDAO.delete(id);
	}

	@Override
	public int update(int id) {
		return userDAO.update(id);
	}

}
