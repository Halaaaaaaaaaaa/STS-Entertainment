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

	@Override	//�� ���ǻ��� �ۼ�
	public void insertCS(CsVO vo) {
		csDao.insertCS(vo);
	}

	@Override	//���ǻ��� list
	public List<CsVO> csList(String id) {
		return csDao.csList(id);
	}

	@Override	//���ǻ��� detail
	public CsVO csDetail(int cseq) {
		return csDao.csDetail(cseq);
	}


	
}
