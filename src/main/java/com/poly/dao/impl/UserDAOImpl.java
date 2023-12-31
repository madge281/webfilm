package com.poly.dao.impl;

import java.util.List;

import com.poly.dao.AbstractDAO;
import com.poly.dao.UserDAO;
import com.poly.entity.User;

public class UserDAOImpl extends AbstractDAO<User> implements UserDAO{
	
	@Override
	public User findById(Integer id) { 
		return super.findById(User.class, id); 
	}
	
	@Override
	public User findByEmail (String email) {
		String sql = "SELECT o FROM User o WHERE o.email = ?0";
		return super.findOne(User.class, sql, email);
	}

	@Override
	public User findByUsername(String username) { 
		String sql = "SELECT o FROM User o WHERE o.username = ?0";
		return super.findOne(User.class, sql, username);
	}
	
	@Override public User findByUsernameAndPassword(String username, String password) { 
		String sql = "SELECT O FROM User o WHERE o.username = ?0 AND o.password = 1";
			return super.findOne(User.class, sql, username, password); 
			}

	@Override
	public List<User> findAll() {
		
		return super.findAll(User.class, true);
	}

	@Override
	public List<User> findAll(int pageNumber, int pageSize) {
		return super.findAll(User.class, true, pageNumber, pageSize);
	} 
	
//	@Override
//	public User create(User entity) {
//		return super.create(entity);
//	}
//
//	@Override
//	public User update(User entity) {
//		return super.update(entity);
//	}
//
//	@Override
//	public User delete(User entity) {
//		return super.delete(entity);
//	}
}

