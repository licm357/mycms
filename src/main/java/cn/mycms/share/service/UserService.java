package cn.mycms.share.service;

import cn.mycms.share.pojo.User;

public interface UserService {
/**
 * 通过用户名查找用户信息
 * @param username
 * @return
 */
	User findUserByUserName(String username);

}
