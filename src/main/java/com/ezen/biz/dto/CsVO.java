package com.ezen.biz.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CsVO {
	
	//컬럼: 문의번호, 회원id, 회원이름, 회원메일, 문의종류, 문의제목, 문의내용, 문의상태, 작성일
	private int cseq;
	private String id;
	private String name;
	private String email;
	private String coption;
	private String ctitle;
	private String ccontent;
	private String cstatus;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date cregdate;
	private String reply;
}
