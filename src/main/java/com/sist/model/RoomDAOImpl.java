package com.sist.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class RoomDAOImpl implements RoomDAO {
	@Autowired //자동 주입
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertRoom(RoomDTO dto) {
		this.sqlSession.insert("addRoom", dto);
	}
	
	@Override
	public int roomNumSearch() {
		return this.sqlSession.selectOne("roomNum");
	}

	@Override
	public void insertRoomOption(RoomOptionDTO rodto) {
		this.sqlSession.insert("addRoomOption", rodto);
	}

////////////////////////////////////////////////////////////////////////////////
	public List <RoomTotalDTO> roomSelectAll() {
		return this.sqlSession.selectList("roomList");
	}
	
	public RoomTotalDTO roomContent(int r_no) {
		return this.sqlSession.selectOne("roomCont", r_no);
	}
	
	public List<RoomTotalDTO> searchAddress(String searchAddress){
		return this.sqlSession.selectList("searchAddress",searchAddress);
	}

	@Override
	public void likeOn(RoomTotalDTO tdto) {
		this.sqlSession.insert("likeOn", tdto);
		
	}

	@Override
	public void likeOff(RoomTotalDTO tdto) {
		this.sqlSession.insert("likeOff", tdto);
	}

	@Override
	public Boolean likeView(RoomTotalDTO tdto) {
		return this.sqlSession.selectOne("likeView", tdto);
	}
	
	@Override
	public List<RoomTotalDTO> roomLikeAll(int m_no){
		return this.sqlSession.selectList("roomLikeAll", m_no);
	}
	
}
