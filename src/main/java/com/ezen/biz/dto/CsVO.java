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
	
	//�÷�: ���ǹ�ȣ, ȸ��id, ȸ���̸�, ȸ������, ��������, ��������, ���ǳ���, ���ǻ���, �ۼ���
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
