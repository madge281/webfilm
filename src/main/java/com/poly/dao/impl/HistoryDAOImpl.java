package com.poly.dao.impl;

import java.util.List;

import com.poly.dao.AbstractDAO;
import com.poly.dao.HistoryDAO;
import com.poly.entity.History;

public class HistoryDAOImpl extends AbstractDAO<History> implements HistoryDAO{

	@Override
	public List<History> findByUser(String username) {
		// select * from history where userId
		String sql = "SELECT o FROM History o WHERE o.user.username = ?0 AND o.video.isActive =1"
				+ " ODER BY o.viewedDate DESC";
		return super.findMany(History.class, sql,username);
	}

	@Override
	public List<History> findByUserAndIsLiked(String username) {
		String sql = "SELECT o FROM History o WHERE o.user.username = ?0 AND o.isLiked = 1"
				+ "AND o.video.isActive =1"
				+ " ODER BY o.viewedDate DESC";
		return super.findMany(History.class, sql,username);
	}

	@Override
	public History findByUserIdAndvideoId(Integer userId, Integer videoId) {
		String sql = "SELECT o FROM History o WHERE o.user.userId = ?0 AND o.video.videoId = ?0"
				+ " AND o.video.isActive = 1";
		return super.findOne(History.class, sql, userId, videoId);
	}

//	@Override
//	public History create(History entity) {
//		return null;
//	}
//
//	@Override
//	public History update(History entity) {
//		return null;
//	}
//
//	@Override
//	public History delete(History entity) {
//		return null;
//	}
	
}
