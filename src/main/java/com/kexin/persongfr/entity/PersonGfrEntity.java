package com.kexin.persongfr.entity;

/**
 * 定义GFR的实体类
 * 
 * @author lenovo
 *
 */
public class PersonGfrEntity {

	// ID
	private String id;
	// 性别
	private String sex;
	// 肤色
	private String skin;
	// 肌酐值
	private double createinine;
	// 年龄
	private int age;
	// gfr值
	private String gfrValue;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getSkin() {
		return skin;
	}

	public void setSkin(String skin) {
		this.skin = skin;
	}

	public double getCreateinine() {
		return createinine;
	}

	public void setCreateinine(double createinine) {
		this.createinine = createinine;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGfrValue() {
		return gfrValue;
	}

	public void setGfrValue(String gfrValue) {
		this.gfrValue = gfrValue;
	}

}
