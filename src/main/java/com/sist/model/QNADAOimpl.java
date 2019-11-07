package com.sist.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QNADAOimpl implements QNADAO {

	@Autowired
	private SqlSessionTemplate sqlSession; 
	//데이터소스, 매퍼 있음. root-context.xml 참고	
	
	@Override
	public List<QNADTO> getList() {
		return this.sqlSession.selectList("qnaList"); 
		// 기본적으로 sql세션에 selectList라는 메소드 있음. 
		// 전체내용  dto로 가져와서 List에 저장해줌
		//mapper의 id를 list로 지정해주면 매칭이 됨
	}

	@Override
	public int insertBoard(QNADTO dto) {
		return this.sqlSession.insert("qnaAdd", dto);
		
	}

	@Override
	public QNADTO content(int no) {
		//하나만 가져오는 메소드
		return this.sqlSession.selectOne("qnaCont", no);
	}

	@Override
	public int updateBoard(QNADTO dto) {
		return this.sqlSession.update("qnaUpdate", dto); // (키, 값)
		 
		
	}

	@Override
	public void deleteBoard(int no) {
		 this.sqlSession.delete("qnaDelete", no);
		
	}

	
}
