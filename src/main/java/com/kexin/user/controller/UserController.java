package com.kexin.user.controller;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kexin.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	/**
	 * 注册用户信息
	 * 
	 * @param passWord
	 *            密码
	 * @param phoneNumber
	 *            手机号
	 * @return
	 */
	@RequestMapping("/addUserMessage")
	@ResponseBody
	public String addUserMessage(HttpSession session, String phoneNumber, String passWord, String code) {
		String Code = (String) session.getAttribute("code");
		// 判断验证码是否相等，不相等直接失败
		if (!Code.equals(code)) {
			return "失败";
		}
		// 获取UUID
		String id = UUID.randomUUID().toString();
		userService.addUserMessage(id, phoneNumber, passWord);
		return "成功";
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
	@RequestMapping("/findUserMessage")
	@ResponseBody
	public String findUserMessage(HttpSession session, String phoneNumber, String passWord, String code) {
		String Code = (String) session.getAttribute("code");
		// 判断验证码是否相等，不相等直接失败
		if (!Code.equals(code)) {
			return "图片验证失败";
		}
		List list = userService.findUserMessage(phoneNumber, passWord);
		// 如果查找到符合的数据，list的长度大于0
		if (list.size() > 0) {
			session.setAttribute("phoneNumber", phoneNumber);
			return "成功";
		} else {
			return "失败";
		}
	}
}
