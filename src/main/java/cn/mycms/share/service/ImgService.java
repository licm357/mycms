package cn.mycms.share.service;

import java.util.List;

import cn.mycms.share.pojo.TurnImage;


public interface ImgService {
/**
 * 查找轮播图列表
 * @return
 */
	List<TurnImage> findTrunImg();

}
