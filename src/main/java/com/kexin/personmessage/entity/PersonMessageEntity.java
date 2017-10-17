package com.kexin.personmessage.entity;

/**
 * 个人信息记录
 * 
 * @author lenovo
 *
 */
public class PersonMessageEntity {

	// UUID
	private String id;
	// 个人ID
	private String phoneNumber;
	// 时间
	private String time;
	// 身高
	private int personHeight;
	// 体重
	private int personWeight;
	// BMId 值
	private String bmiValue;

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getPersonHeight() {
		return personHeight;
	}

	public void setPersonHeight(int personHeight) {
		this.personHeight = personHeight;
	}

	public int getPersonWeight() {
		return personWeight;
	}

	public void setPersonWeight(int personWeight) {
		this.personWeight = personWeight;
	}

	public String getBmiValue() {
		return bmiValue;
	}

	public void setBmiValue(String bmiValue) {
		this.bmiValue = bmiValue;
	}

}
