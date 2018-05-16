package entity;

import java.io.Serializable;

public class Course implements Serializable{
	private static final long serialVersionUID = 1L;
	
	//对象的属性
	private	Integer courseId;
	private String name;
	private int days;
	
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getDays() {
		return days;
	}
	public void setDays(int days) {
		this.days = days;
	}
	
}
