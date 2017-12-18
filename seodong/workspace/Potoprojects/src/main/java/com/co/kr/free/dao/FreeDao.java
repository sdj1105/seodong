package com.co.kr.free.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.co.kr.common.dao.AbstractDAO;
import com.co.kr.common.login.vo.LoginVo;
import com.co.kr.free.vo.FreeVo;

@Repository
public class FreeDao extends AbstractDAO {

	private final String PREFIX = "freeBoard.";

	public List<FreeVo> freeBoardList() {
		return selectList(PREFIX + "freeBoardList");
	}
}
