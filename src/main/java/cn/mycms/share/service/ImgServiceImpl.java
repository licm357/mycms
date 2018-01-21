package cn.mycms.share.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.mycms.share.mapper.ImgMapper;
import cn.mycms.share.pojo.TurnImage;

@Service
public class ImgServiceImpl implements ImgService{
	@Autowired
	private ImgMapper imgMapper;

	@Override
	public List<TurnImage> findTrunImg() {
		TurnImage imgs=new TurnImage();
		imgs.setImgType(1L);
		return imgMapper.select(imgs);
	}

}
