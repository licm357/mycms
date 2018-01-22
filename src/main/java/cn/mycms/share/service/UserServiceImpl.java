package cn.mycms.share.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.mycms.share.mapper.UserMapper;
import cn.mycms.share.pojo.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	public User findUserByUserName(String username) {
		User user=new User();
		user.setUserName(username);
		List<User> userList=userMapper.select(user);
		for (User users : userList) {
			return users;
		}
		return null;
		
	}

}
