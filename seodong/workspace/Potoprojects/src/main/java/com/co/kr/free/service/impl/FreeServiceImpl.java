package com.co.kr.free.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.co.kr.free.dao.FreeDao;
import com.co.kr.free.service.FreeService;
import com.co.kr.free.vo.FreeVo;

@Service
public class FreeServiceImpl implements FreeService{
	
	@Autowired
	private FreeDao freeDao;

	@Override
	public Map<String, Object> freeBoardList() {
		List<FreeVo> list = freeDao.freeBoardList();   //데이터를 list 변수에 계속쌓아
		Map<String, Object> map = new HashMap<String, Object>();  //key value 
		map.put("list", list);	//modelAttribute 와 같은것 
		return map;
	}

}
