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
	
	//문의사항 update
	void csUpdate(CsVO vo);
	
	//문의사항 delete
	void csDelete(CsVO vo);
	
	//관리자 - 전체 문의 list
	List<CsVO> a_csList();
	
	//관리자 - 문의내역 답변 
	void a_csReply(CsVO vo);
		
}
