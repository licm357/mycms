package cn.mycms.share.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Table(name="course")
@JsonIgnoreProperties(ignoreUnknown=true)//表示忽略未知字段
public class Course implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	 private Long courseId;//
	 private String courseName;//课程名称
	 private String courseSimple;//课程简介
	 private String classifyId;//课程所属分类，对应course_classify表
	 private String academicName;//所属的大学
	 private String coursePhoto;//课程图片
	 private Long userId;//所对应的可以是讲师id号也可以是普通用户id号，在查询的时候根据user_type
	 private Long courseType;//对应首页是否为主图，0-为主图，1-为非主图
	 private Date courseTime;//开课时间
	 private Long courseMax;//上课最多人数
	 private String courseNewDate;//将日期转化为字符串显示
	 
	public String getCourseNewDate() {
		return courseNewDate;
	}
	public void setCourseNewDate(String courseNewDate) {
		this.courseNewDate = courseNewDate;
	}
	public Long getCourseId() {
		return courseId;
	}
	public void setCourseId(Long courseId) {
		this.courseId = courseId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getCourseSimple() {
		return courseSimple;
	}
	public void setCourseSimple(String courseSimple) {
		this.courseSimple = courseSimple;
	}
	public String getClassifyId() {
		return classifyId;
	}
	public void setClassifyId(String classifyId) {
		this.classifyId = classifyId;
	}
	
	public String getAcademicName() {
		return academicName;
	}
	public void setAcademicName(String academicName) {
		this.academicName = academicName;
	}
	public String getCoursePhoto() {
		return coursePhoto;
	}
	public void setCoursePhoto(String coursePhoto) {
		this.coursePhoto = coursePhoto;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Long getCourseType() {
		return courseType;
	}
	public void setCourseType(Long courseType) {
		this.courseType = courseType;
	}
	public Date getCourseTime() {
		return courseTime;
	}
	public void setCourseTime(Date courseTime) {
		this.courseTime = courseTime;
	}
	public Long getCourseMax() {
		return courseMax;
	}
	public void setCourseMax(Long courseMax) {
		this.courseMax = courseMax;
	}
	 

}
