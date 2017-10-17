package com.kexin.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kexin.user.dao.UserDao;

@Service("userService")
public class UserService {

	@Autowired
	private UserDao userDao;

	/**
	 * 注册用户信息
	 * 
	 * @param id
	 *            数据表id
	 * @param phoneNumber
	 *            电话号码
	 * @param passWord
	 *            密码
	 * @return
	 */
	public int addUserMessage(String id, String phoneNumber, String passWord) {
		return userDao.addUserMessage(id, phoneNumber, passWord);
	}
	
	/**
	 * 查询用户信息
	 * 
	 * @param phoneNumber
	 *            电话号码
	 * @param passWord
	 *            密码
	 * @return
	 */
	public List findUserMessage(String phoneNumber, String passWord){
		return userDao.findUserMessage(phoneNumber, passWord);
	}
}
