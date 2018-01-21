package cn.mycms.share.pojo;

import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "chat")
public class Chat {
	@Id//表示当前属性为数据表中的主键字段
	@GeneratedValue(strategy=GenerationType.IDENTITY)//表示主键自增
	private Long chatId;
	private String chatName;// 用户姓名
	private String photo;// 用户头像
	private String content;// 聊天的内容
	private Date chatTime;// 聊天时间
	private String chatTitle;// 聊天主题
	private String chatChief;// 话题发起人
	private String chatRsource;// 话题来源，对应学校
	private String chatSimple;// 话题简介
	private Long chatType;//是否为首页话题
	public Long getChatId() {
		return chatId;
	}
	public void setChatId(Long chatId) {
		this.chatId = chatId;
	}
	public String getChatName() {
		return chatName;
	}
	public void setChatName(String chatName) {
		this.chatName = chatName;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getChatTime() {
		return chatTime;
	}
	public void setChatTime(Date chatTime) {
		this.chatTime = chatTime;
	}
	public String getChatTitle() {
		return chatTitle;
	}
	public void setChatTitle(String chatTitle) {
		this.chatTitle = chatTitle;
	}
	public String getChatChief() {
		return chatChief;
	}
	public void setChatChief(String chatChief) {
		this.chatChief = chatChief;
	}
	public String getChatRsource() {
		return chatRsource;
	}
	public void setChatRsource(String chatRsource) {
		this.chatRsource = chatRsource;
	}
	public String getChatSimple() {
		return chatSimple;
	}
	public void setChatSimple(String chatSimple) {
		this.chatSimple = chatSimple;
	}
	public Long getChatType() {
		return chatType;
	}
	public void setChatType(Long chatType) {
		this.chatType = chatType;
	}
	
}
