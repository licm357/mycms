package cn.mycms.share.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.mycms.share.mapper.ChatMapper;
import cn.mycms.share.pojo.Chat;
@Service
public class ChatServiceImpl implements ChatService{
	@Autowired
	private ChatMapper chatMapper;

	@Override
	public List<Chat> findChat() {
		Chat chat=new Chat();
		chat.setChatType(0L);
		return chatMapper.select(chat);
	}

}
