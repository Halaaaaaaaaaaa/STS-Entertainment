package com.ezen.biz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.biz.dao.CsDAO;
import com.ezen.biz.dto.CsVO;

@Service
public class CsServiceImpl implements CsService {
	
	@Autowired
	private CsDAO csDao;

	@Override	//고객 문의사항 작성
	public void insertCS(CsVO vo) {
		csDao.insertCS(vo);
	}

	@Override	//문의사항 list
	public List<CsVO> csList(String id) {
		return csDao.csList(id);
	}

	@Override	//문의사항 detail
	public CsVO csDetail(int cseq) {
		return csDao.csDetail(cseq);
	}


	
}
