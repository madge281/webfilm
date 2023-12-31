package com.poly.dao;

import java.util.List;

import com.poly.entity.History;

public interface HistoryDAO {
	List<History> findByUser(String username);
	List<History> findByUserAndIsLiked(String username);
	History findByUserIdAndvideoId(Integer userId, Integer videoId);
	History create(History entity);
	History update(History entity);
	History delete(History entity);
	
}
