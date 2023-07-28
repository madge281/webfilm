package com.poly.service.impl;

import java.util.List;

import com.poly.dao.VideoDAO;
import com.poly.entity.Video;
import com.poly.service.VideoService;

public class VideoServiceImpl implements VideoService, VideoDAO{       // videodao

	private VideoDAO dao;
	public VideoServiceImpl() {
		dao = new VideoServiceImpl();
	}
	
	@Override
	public Video findById(Integer id) {
		return dao.findById(id);
	}

	@Override
	public Video findByHref(String href) {
		return dao.findByHref(href);
	}

	@Override
	public List<Video> findAll() {
		return dao.findAll();
	}

	@Override
	public List<Video> findAll(int pageNumber, int pageSize) {
		return dao.findAll(pageNumber, pageSize);
	}


	@Override
	public Video create(Video entity) {
		entity.setActive(Boolean.TRUE);                 //
		entity.setViews(0);
		entity.setShares(0);
		return dao.create(entity);
	}


	@Override
	public Video update(Video entity) {
		return dao.update(entity);
	}


	@Override
	public Video delete(String href) {
		Video entity = findByHref(href);
		entity.setActive(false);       	                 //
		return dao.update(entity);
	}

}












