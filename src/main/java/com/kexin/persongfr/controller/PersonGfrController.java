package com.kexin.persongfr.controller;

import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

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
	public Map<String, String> addPersonGfr(String sex, String skin, double createinine, int unit, int age) {
		// 格式化小数
		DecimalFormat df = new DecimalFormat("0.0000");
		// 获取UUID
		String id = UUID.randomUUID().toString();
		// 如果传进来的单位为mg/dl(毫克每分升)
		if (unit == 1) {
			// 如果为男性并且非黑
			if ("man".equals(sex) && "noblack".equals(skin)) {
				gfr = 186 * Math.pow(createinine, -1.154) * Math.pow(age, -0.203);
			} else if ("man".equals(sex) && "black".equals(skin)) { // 男性并且为黑
				gfr = 186 * Math.pow(createinine, -1.154) * Math.pow(age, -0.203) * 1.210;
			} else if ("woman".equals(sex) && "noblack".equals(skin)) { // 女性并且非黑
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
			if ("man".equals(sex) && "noblack".equals(skin)) {
				gfr = 186 * Math.pow(createiNine, -1.154) * Math.pow(age, -0.203);
			} else if ("man".equals(sex) && "black".equals(skin)) { // 男性并且为黑
				gfr = 186 * Math.pow(createiNine, -1.154) * Math.pow(age, -0.203) * 1.210;
			} else if ("woman".equals(sex) && "noblack".equals(skin)) { // 女性并且非黑
				gfr = 186 * Math.pow(createiNine, -1.154) * Math.pow(age, -0.203) * 0.742;
			} else { // 或者女性并且黑
				gfr = 186 * Math.pow(createiNine, -1.154) * Math.pow(age, -0.203) * 1.210;
			}
		}
		// gfr值保留四位小数
		String gfrValue = df.format(gfr);
		personGfrService.addPersonGfr(id, sex, skin, createinine, age, gfrValue);
		Map<String, String> map = new HashMap<String, String>();
		map.put("key1", "可心");
		return map;
	}

	/**
	 * 查询数据库中的值
	 * 
	 * @return
	 */
	@RequestMapping("/findGfr")
	@ResponseBody
	public List findGfr() {
		List list = personGfrService.findGfr();
		return list;
	}

}
