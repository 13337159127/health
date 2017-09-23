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
	private int personID;
	// 时间
	private String time;
	// 身高
	private int personHeight;
	// 体重
	private int personWeight;
	// BMId 值
	private String bmiValue;

	public int getPersonID() {
		return personID;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setPersonID(int personID) {
		this.personID = personID;
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
