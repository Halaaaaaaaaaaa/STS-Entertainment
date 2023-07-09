package com.ezen.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.biz.dto.CsVO;
import com.ezen.biz.dto.MemberVO;
import com.ezen.biz.dto.NoticeVO;

@Repository
public class CsDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//고객 문의사항 작성
	public void insertCS(CsVO vo) {
		mybatis.insert("CsMapper.insertCS", vo);
	}
	
	//문의사항 list
	public List<CsVO> csList(String id) {
		return mybatis.selectList("CsMapper.csList", id);
	}

	//문의사항 detail
	public CsVO csDetail(int cseq) {
		return mybatis.selectOne("CsMapper.csDetail", cseq);
	}
	
	//문의사항 update
	public void csUpdate(CsVO vo) {
		mybatis.update("CsMapper.csUpdate", vo);
	}
	
	//문의사항 delete
	public void csDelete(CsVO vo) {
		mybatis.update("CsMapper.csDelete", vo);
	}
	
	//관리자 - 전체 문의 list
	public List<CsVO> a_csList() {
		return mybatis.selectList("CsMapper.a_csList");
	}
	
	//관리자 - 문의내역 답변 
	public void a_csReply(CsVO vo) {
		mybatis.update("CsMapper.a_csReply",vo);
	}

}
