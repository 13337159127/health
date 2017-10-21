package com.kexin.persongfr.controller;

import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kexin.persongfr.service.PersonGfrService;

@Controller
@RequestMapping("/persongfr")
public class PersonGfrController {

	@Autowired
	private PersonGfrService personGfrService;

	// 定义gfr的值
	private double gfr;

	/**
	 * 求出GFR的值
	 * 
	 * @param sex
	 *            性别
	 * @param skin
	 *            皮肤
	 * @param createinine
	 *            肌酐
	 * @param unit
	 *            单位
	 * @param age
	 *            年龄
	 * @return
	 */
	@RequestMapping("/addPersonGfr")
	@ResponseBody
	public Map<String, String> addPersonGfr(HttpSession session, String sex, String skin, double createinine, int unit,
			int age) {
		// 格式化小数
		DecimalFormat df = new DecimalFormat("0.0000");
		// 获取UUID
		String id = UUID.randomUUID().toString();
		// 如果传进来的单位为mg/dl(毫克每分升)
		if (unit == 1) {
			// 如果为男性并且非黑
			if ("男".equals(sex) && "非黑".equals(skin)) {
				gfr = 186 * Math.pow(createinine, -1.154) * Math.pow(age, -0.203);
			} else if ("男".equals(sex) && "黑".equals(skin)) { // 男性并且为黑
				gfr = 186 * Math.pow(createinine, -1.154) * Math.pow(age, -0.203) * 1.210;
			} else if ("女".equals(sex) && "非黑".equals(skin)) { // 女性并且非黑
				gfr = 186 * Math.pow(createinine, -1.154) * Math.pow(age, -0.203) * 0.742;
			} else { // 或者女性并且黑
				gfr = 186 * Math.pow(createinine, -1.154) * Math.pow(age, -0.203) * 1.210;
			}
		}
		// 如果传进来的单位是umol/L(微摩尔每升)。把微摩尔每升转换成mg/dl(毫克每分升)
		if (unit == 2) {
			// 把umol/L(微摩尔每升) “转换成” mg/dl(毫克每分升)
			double createiNineValue = createinine * 0.01131;
			int createiNine = (int) (createiNineValue + 0.5);
			// 如果为男性并且非黑
			if ("男".equals(sex) && "非黑".equals(skin)) {
				gfr = 186 * Math.pow(createiNine, -1.154) * Math.pow(age, -0.203);
			} else if ("男".equals(sex) && "黑".equals(skin)) { // 男性并且为黑
				gfr = 186 * Math.pow(createiNine, -1.154) * Math.pow(age, -0.203) * 1.210;
			} else if ("女".equals(sex) && "非黑".equals(skin)) { // 女性并且非黑
				gfr = 186 * Math.pow(createiNine, -1.154) * Math.pow(age, -0.203) * 0.742;
			} else { // 或者女性并且黑
				gfr = 186 * Math.pow(createiNine, -1.154) * Math.pow(age, -0.203) * 1.210;
			}
		}
		// gfr值保留四位小数
		String gfrValue = df.format(gfr);
		String phoneNumber = (String) session.getAttribute("phoneNumber");
		personGfrService.addPersonGfr(id, phoneNumber, sex, skin, createinine, age, gfrValue);
		Map<String, String> map = new HashMap<String, String>();
		map.put("key1", "1");
		return map;
	}

	/**
	 * 查询数据库中的值
	 * 
	 * @return
	 */
	@RequestMapping("/findGfr")
	@ResponseBody
	public List findGfr(String phoneNumber) {
		List list = personGfrService.findGfr(phoneNumber);
		return list;
	}

	/**
	 * 删除GFR的值
	 * 
	 * @param id
	 *            ID
	 * @return
	 */
	@RequestMapping("/deletegfr")
	@ResponseBody
	public Map<String, String> deletegfr(String id) {
		personGfrService.deletegfr(id);
		Map<String, String> map = new HashMap<String, String>();
		map.put("key", "1");
		return map;
	}
	
	/**
	 * 管理员查看GFR值
	 * @return
	 */
	@RequestMapping("/managerFindGFR")
	@ResponseBody
	public List managerFindGFR(){
		List list = personGfrService.managerFindGFR();
		return list;
	}

}
