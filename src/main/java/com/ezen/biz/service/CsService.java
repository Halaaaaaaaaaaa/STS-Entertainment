package com.ezen.biz.service;

import java.util.List;

import com.ezen.biz.dto.CsVO;

public interface CsService {
	
	//고객 문의사항 작성
	void insertCS(CsVO vo);
	
	//문의사항 list
	List<CsVO> csList(String id);
	
	//문의사항 detail
	CsVO csDetail(int cseq);
		
}
