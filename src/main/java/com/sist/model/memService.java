package com.sist.model;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class memService implements memDAO{

	@Autowired
	private SqlSessionTemplate sst;
	private memDAO mdao;
	
	
	// 회원가입 서비스
	public int insertmem(memDTO mdto) {
		
		int res = 0;
		mdao = sst.getMapper(memDAO.class);
		try {
			res = mdao.insertmem(mdto);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
		
	
	// 이메일 중복확인 서비스
	public int checkemail(String m_email) {
		
		int res = 0;		
		mdao = sst.getMapper(memDAO.class);		
		res = mdao.checkemail(m_email);
		/* System.out.println(res); */
		return res;
		
	}
	
	// 닉네임 중복확인
	public int checknick(String m_nick) {
		
		int res = 0;		
		mdao = sst.getMapper(memDAO.class);		
		res = mdao.checknick(m_nick);		
		System.out.println(res);		
		return res;
		
	}
	
	// 로그인
	public memDTO login(memDTO dto) {
		
		mdao = sst.getMapper(memDAO.class);
		
		memDTO mdto = mdao.login(dto);
		
		return mdto;
	}


	@Override
	public void logout(HttpSession session) {
		
		session.invalidate();
		
	}
	
}
