package cn.mycms.share.shiro;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;



public class AuthRealm extends AuthorizingRealm {

	//private UserService userService;
	// 权限控制
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {
		return null;
		/*List<String> priList=new ArrayList<>();
		priList.add("系统管理");
		priList.add("基础信息");
		priList.add("货运管理");*/
		/*动态获取模块信息步骤
		 * 1.获取user对象-userId
		 * 2.通过userId在role_user_p得到roleId 然后通过roleId得到 module_role_p中的moduleId 然后根据moduleId得到 module_p中的moduleName即可
		 */
		/*Subject subject=SecurityUtils.getSubject();
		User user=(User) subject.getPrincipal();
		List<String> priList=userService.findPriliLegeInfoList(user.getUserId());
		//System.out.println("角色有："+priList);
		SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
		info.addStringPermissions(priList);
		return info;*/
	}

	/**
	 * 登陆认证
	 * 作用：为shiro提供真实的用户数据
	 * 思路：1.通过token获取用户名和密码
	 * 2.通过用户名查询用户的真实信息，
	 * 3.获取数据后，通过info对象返回个shiro安全管理器
	 */
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		return null;
		/*UsernamePasswordToken loginToken=(UsernamePasswordToken) token;
		String username=loginToken.getUsername();
		User user=userService.findUserByUserName(username);
		
		*//**
		 * 1.principal:真实的用户对象,所以在loginController中通过subject.getPrincipal获取user对象
		 * 2.credentials：真实的密码
		 * 3.realmName:当前realm的名称
		 * info被shiro安全中心接收到
		 *//*
		AuthenticationInfo info=new SimpleAuthenticationInfo(user, user.getPassword(), this.getName());
		return info;*/
	}

}































