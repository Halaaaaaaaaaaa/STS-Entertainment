package com.ezen.biz.service;

import java.util.List;

import com.ezen.biz.dto.CsVO;

public interface CsService {
	
	//���� ���ǻ��� �ۼ�
	void insertCS(CsVO vo);
	
	//���ǻ��� list
	List<CsVO> csList(String id);
	
	//���ǻ��� detail
	CsVO csDetail(int cseq);
		
}