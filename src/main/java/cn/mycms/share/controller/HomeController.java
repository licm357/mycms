package cn.mycms.share.controller;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.mycms.share.pojo.Chat;
import cn.mycms.share.pojo.Course;
import cn.mycms.share.pojo.TurnImage;
import cn.mycms.share.service.ChatService;
import cn.mycms.share.service.CourseServcie;
import cn.mycms.share.service.ImgService;
//负责页面跳转处理
@Controller
public class HomeController {
	@Autowired
	private ImgService imgService;
	@Autowired
	private CourseServcie courseService;
	@Autowired
	private ChatService chatService;
	
	@RequestMapping("/toLogin")
	public String toLogin(){
		return "login";
	}
	//前台首页
	@RequestMapping("/fore")
	public String toHome(String username,Model model) throws ParseException{
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		List<TurnImage> imgList=imgService.findTrunImg();
		//将轮播图片返回,方便后台管理员管理
		model.addAttribute("imgList", imgList);
		//一下是推荐课程的查询,主图查询返回
		Course course=courseService.findCourse();
		course.setCourseNewDate(sdf.format(course.getCourseTime()));
		model.addAttribute("course", course);
		//查询推荐课程信息
		List<Course> courseList=courseService.findCourseList();
		for (Course course2 : courseList) {
			course2.setCourseNewDate(sdf.format(course2.getCourseTime()));
		}
		model.addAttribute("courseList", courseList);
		//下面进行聊天的加载
		List<Chat> chatList=chatService.findChat();
		model.addAttribute("chatList", chatList);
		model.addAttribute("userName", username);
		return "homepages/forehome";
	}
	//进入后台首页
	@RequestMapping("/back")
	public String toBack(){
		return "backpages/backhome";
	}
	/**
	 * 下面进行前台页面的跳转控制
	 */
	@RequestMapping("/management")
	public String toManagement(String username,Model model){
		model.addAttribute("userName", username);
		return "homepages/management";
	}
	@RequestMapping("/analysis")
	public String toAnalysis(String username,Model model){
		model.addAttribute("userName", username);
		return "homepages/analysis";
	}
	@RequestMapping("/ability")
	public String toAbility(String username,Model model){
		model.addAttribute("userName", username);
		return "homepages/ability";
	}
	@RequestMapping("/training")
	public String toTraining(String username,Model model){
		return "homepages/training";
	}
	@RequestMapping("/registration")
	public String toRegister(String username,Model model){
		model.addAttribute("userName", username);
		model.addAttribute("userName", username);
		return "homepages/registration";
	}
	@RequestMapping("/task")
	public String toTask(String username,Model model){
		model.addAttribute("userName", username);
		return "homepages/task";
	}
	@RequestMapping("/single")
	public String toSingle(String username,Model model){
		model.addAttribute("userName", username);
		return "homepages/single";
	}
	
}
