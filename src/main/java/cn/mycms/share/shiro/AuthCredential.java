package cn.mycms.share.shiro;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;

import cn.mycms.share.shiro.tool.Md5HashPassword;

/**
 * 实现用户密码的自动加密
 * @author ASUS
 *
 */

public class AuthCredential extends  SimpleCredentialsMatcher{
	/**
	 * 重写加密处理
	 */
	@Override
	public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
		/*UsernamePasswordToken loginToken=(UsernamePasswordToken) token;
		String username=loginToken.getUsername();
		String password=String.valueOf(loginToken.getPassword());
		String loginPassword=Md5HashPassword.getMd5Hash(password, username);
		loginToken.setPassword(loginPassword.toCharArray());
		return super.doCredentialsMatch(loginToken, info);*/
		return false;
		
	}
}
