package com.kexin.personmessage.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kexin.personmessage.entity.PersonMessageEntity;

/**
 * 向mapper文件传参数
 * 
 * @author lenovo
 *
 */
@Repository("personMessageDao")
public class PersonMessageDao {

	@Resource
	private SqlSessionTemplate sqlSessionTemplate;

	/**
	 * 添加个人信息
	 * 
	 * @param bmiValue
	 *            BMI值
	 * @param personWeight
	 *            体重
	 * @param personHeight
	 *            身高
	 * @return
	 */
	public int addPersonMessage(String bmiValue, int personWeight, int personHeight, String phoneNumber, String time,
			String id) throws Exception {
		PersonMessageEntity entity = new PersonMessageEntity();
		entity.setId(id);
		entity.setTime(time);
		entity.setPersonHeight(personHeight);
		entity.setPersonWeight(personWeight);
		entity.setPhoneNumber(phoneNumber);
		entity.setBmiValue(bmiValue);
		return sqlSessionTemplate.insert("com.kexin.personmessage.dao.PersonMessageDao.addPersonMessage", entity);
	}

	/**
	 * 查询个人信息
	 * 
	 * @return
	 * @throws Exception
	 */
	public List findPersonMessage(String phoneNumber) throws Exception {
		return sqlSessionTemplate.selectList("com.kexin.personmessage.dao.PersonMessageDao.findPersonMessage", phoneNumber);
	}

	/**
	 * 根据ID删除信息
	 * 
	 * @param personID
	 *            个人ID
	 * @return
	 * @throws Exception
	 */
	public int deletePersonMessage(String id) throws Exception {
		return sqlSessionTemplate.delete("com.kexin.personmessage.dao.PersonMessageDao.deletePersonMessage", id);
	}
}
