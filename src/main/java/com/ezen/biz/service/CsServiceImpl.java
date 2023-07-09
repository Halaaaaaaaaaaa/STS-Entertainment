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

	@Override	//문의사항 update
	public void csUpdate(CsVO vo) {
		csDao.csUpdate(vo);
	}

	@Override	//문의사항 delete
	public void csDelete(CsVO vo) {
		csDao.csDelete(vo);
	}

	@Override	//관리자 - 전체 문의 list
	public List<CsVO> a_csList() {
		return csDao.a_csList();
	}

	@Override	//관리자 - 문의내역 답변 
	public void a_csReply(CsVO vo) {
		csDao.a_csReply(vo);
	}

	


	
}
