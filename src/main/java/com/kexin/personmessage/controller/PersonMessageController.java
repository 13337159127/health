package com.kexin.personmessage.controller;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kexin.personmessage.service.PersonMessageService;

@Controller
@RequestMapping("/personmessage")
public class PersonMessageController {

	@Autowired
	private PersonMessageService personMessageService;

	/**
	 * 根据身高体重求出每个人BMI值
	 * 
	 * @param personHeight
	 *            身高
	 * @param personWeight
	 *            体重
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/setPersonBMI")
	@ResponseBody
	public Map<String, String> setPersonBMI(HttpSession session, int personHeight, int personWeight) throws Exception {
		// 格式化小数
		DecimalFormat df = new DecimalFormat("0.00");
		// 传进来的身高转换为小数。返回的是String类型
		String height = df.format((float) personHeight / 100);
		// 身高。String类型转换为float类型
		float personLong = Float.parseFloat(height);
		// BMI=体重/(身高^),求出个人的BMI值
		String bmiValue = df.format(personWeight / (personLong * personLong));
		// personID的值
		String phoneNumber = (String) session.getAttribute("phoneNumber");
		// 获取当前日期
		Date dt = new Date();
		SimpleDateFormat matter1 = new SimpleDateFormat("yyyy-MM-dd");
		String time = matter1.format(dt);
		// 获取UUID,replaceAll("-", "")方法把 - 去掉
		// String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		String id = UUID.randomUUID().toString();
		personMessageService.addPersonMessage(bmiValue, personWeight, personHeight, phoneNumber, time, id);
		Map<String, String> map = new HashMap<String, String>();
		map.put("key", "添加");
		return map;
	}

	/**
	 * 查询个人信息
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findPersonMessage")
	@ResponseBody
	public List findPersonMessage(String phoneNumber) throws Exception {
		List list = personMessageService.findPersonMessage(phoneNumber);
		return list;
	}

	/**
	 * 根据ID删除个人信息
	 * 
	 * @param personID
	 *            个人ID
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/deletePersonMessage")
	@ResponseBody
	public Map<String, String> deletePersonMessage(String id) throws Exception {
		personMessageService.deletePersonMessage(id);
		Map<String, String> map = new HashMap<String, String>();
		map.put("key", "删除");
		return map;
	}

	/**
	 * 管理员查看用户的bmi值
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/managerFindBmi")
	@ResponseBody
	public List managerFindBmi() throws Exception {
		List list = personMessageService.managerFindBmi();
		return list;
	}
}
