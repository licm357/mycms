package cn.mycms.share.pojo;

import java.io.Serializable;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

//因为对象为一对一关系，所以直接
@Table(name="user")
public class User implements Serializable{
	@Id//表示当前属性为数据表中的主键字段
	@GeneratedValue(strategy=GenerationType.IDENTITY)//表示主键自增
	  private Long userId;//用户ID号
	  private String academicId;//用户所属的班级id号，只要知道它所属班级id号，就可以知道他所属的学院和学校id
	  private String password;//用户密码
	  private String userType ;//0-代表平台总的管理员，1-普通用户，2-企业用户
	  private String userName ;//用户姓名
	  private String sex;//用户性别
	  private String phone;//用户手机号
	  private String email;//用户邮箱
	  private String photo;//用户头像
	
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getAcademicId() {
		return academicId;
	}
	public void setAcademicId(String academicId) {
		this.academicId = academicId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	  
	  

}
