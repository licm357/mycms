package cn.mycms.share.shiro.tool;

import org.apache.shiro.crypto.hash.Md5Hash;

public class Md5HashPassword {
	public static String getMd5Hash(String password, String username) {
		Md5Hash md5Hash = new Md5Hash(password, username, 3);
		return md5Hash.toString();
	}
	public static void main(String[] args) {
		String passw=Md5HashPassword.getMd5Hash("admin1", "admin1");
		System.out.println(passw);
	}

}
