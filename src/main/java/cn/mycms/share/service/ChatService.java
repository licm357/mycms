package cn.mycms.share.service;

import java.util.List;

import cn.mycms.share.pojo.Chat;

public interface ChatService {
/**
 * 查找聊天内容
 * @return
 */
	List<Chat> findChat();

}
