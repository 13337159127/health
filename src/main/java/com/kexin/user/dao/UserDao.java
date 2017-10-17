package com.kexin.user.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kexin.user.entity.UserEntity;

@Repository("userDao")
public class UserDao {

	@Resource
	private SqlSessionTemplate sqlSessionTemplate;

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
		UserEntity entity = new UserEntity();
		entity.setId(id);
		entity.setPhoneNumber(phoneNumber);
		entity.setPassWord(passWord);
		return sqlSessionTemplate.insert("com.kexin.user.dao.UserDao.addUserMessage", entity);
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
	public List findUserMessage(String phoneNumber, String passWord) {
		UserEntity entity = new UserEntity();
		entity.setPhoneNumber(phoneNumber);
		entity.setPassWord(passWord);
		return sqlSessionTemplate.selectList("com.kexin.user.dao.UserDao.findUserMessage", entity);
	}
}
