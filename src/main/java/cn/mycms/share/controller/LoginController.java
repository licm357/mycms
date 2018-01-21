package cn.mycms.share.controller;

import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.mycms.share.pojo.User;

@Controller
public class LoginController {
	
	@RequestMapping("/login")
	public String Login(String username, String password, Model model, HttpSession Session) {
		if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password)) {
			// 表示用户名或密码为空,因为有参数，所以不能用重定向
			model.addAttribute("errorInfo", "用户名或密码不能为空!");
			return "login";
		}
		Subject subject=SecurityUtils.getSubject();
		/*//对密码进行加密之后再封装,在shiro外面加不好，应该在shiro内部加入加密处理
		String md5Password=getMd5HashPassword.getMd5Hash(password, username);*/
		//token：票令牌：包装用户名和密码
		UsernamePasswordToken token=new UsernamePasswordToken(username,password);
		//如果用户登录不正确，则shiro会报错
		try {
			subject.login(token);
			//获取用户真实信息
			User user = (User) subject.getPrincipal();
			/*
			 * session的获得出来springMVC获得的httpsession之外，还有直接通过subject获得
			 * subject.getSession().setAttribute(arg0, arg1);
			 * 
			 * */
			//用户名和密码正确时，登陆，登陆正确之后，shiro会放行subject的全部请求
			Session.setAttribute("userSession", user);
			String userType=user.getUserType();
			if(userType.equals("1")){
				//表明为普通用户，跳转到普通用户界面
			}else if(userType.equals("2")){
				model.addAttribute("userName", user.getUserName());
				//表明为企业用户，跳转到企业用户界面
				return "redirect:/fore.action";
				/*return "homepages/forehome";*/
			}
			//System.out.println(user.getUserName());
			return "redirect:/back.action";
		} catch (AuthenticationException e) {
			//在控制台输出错误信息
			e.printStackTrace();
			//用户的用户名或密码错误
			model.addAttribute("errorInfo", "用户名或密码不正确!");
			return "login";
		}
		
		
	}
	@RequestMapping("/logout")
	public String toLogout(HttpSession session) {
		session.removeAttribute("userSession");
		return "login";
	}

}
