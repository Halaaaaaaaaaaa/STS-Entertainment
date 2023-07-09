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
	
	//�� ���ǻ��� �ۼ�
	public void insertCS(CsVO vo) {
		mybatis.insert("CsMapper.insertCS", vo);
	}
	
	//���ǻ��� list
	public List<CsVO> csList(String id) {
		return mybatis.selectList("CsMapper.csList", id);
	}

	//���ǻ��� detail
	public CsVO csDetail(int cseq) {
		return mybatis.selectOne("CsMapper.csDetail", cseq);
	}
	
	//���ǻ��� update
	public void csUpdate(CsVO vo) {
		mybatis.update("CsMapper.csUpdate", vo);
	}
	
	//���ǻ��� delete
	public void csDelete(CsVO vo) {
		mybatis.update("CsMapper.csDelete", vo);
	}
	
	//������ - ��ü ���� list
	public List<CsVO> a_csList() {
		return mybatis.selectList("CsMapper.a_csList");
	}
	
	//������ - ���ǳ��� �亯 
	public void a_csReply(CsVO vo) {
		mybatis.update("CsMapper.a_csReply",vo);
	}

}
