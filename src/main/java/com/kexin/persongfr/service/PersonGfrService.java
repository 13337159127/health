package com.kexin.persongfr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kexin.persongfr.dao.PersonGfrDao;

/**
 * 调用dao层方法
 * 
 * @author lenovo
 *
 */
@Service("personGfrService")
public class PersonGfrService {

	@Autowired
	private PersonGfrDao personGfrDao;

	/**
	 * 添加个人信息
	 * 
	 * @param id
	 *            ID
	 * @param sex
	 *            性别
	 * @param skin
	 *            肤色
	 * @param createinine
	 *            肌酐
	 * @param age
	 *            年龄
	 * @param gfrValue
	 *            gfr值
	 * @return
	 */
	public int addPersonGfr(String id, String phoneNumber, String sex, String skin, double createinine, int age,
			String gfrValue) {
		return personGfrDao.addPersonGfr(id, phoneNumber, sex, skin, createinine, age, gfrValue);
	}

	/**
	 * 查询数据库中的值
	 * 
	 * @return
	 */
	public List findGfr(String phoneNumber) {
		return personGfrDao.findGfr(phoneNumber);
	}

	/**
	 * 删除GFR的值
	 * 
	 * @param id
	 * @return
	 */
	public int deletegfr(String id) {
		return personGfrDao.deletegfr(id);
	}
	
	/**
	 * 管理员查看GFR值
	 * @return
	 */
	public List managerFindGFR(){
		return personGfrDao.managerFindGFR();
	}

}
