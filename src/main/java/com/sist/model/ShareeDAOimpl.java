package com.sist.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ShareeDAOimpl implements ShareeDAO {

	@Autowired
	private SqlSessionTemplate SqlSession;
	
	
	
	@Override
	public List<ShareeDTO> getList() {
		// TODO Auto-generated method stub
		return this.SqlSession.selectList("list");
	}

	@Override
	public void insertBoard(ShareeDTO dto) {
		this.SqlSession.insert("add",dto);
		 
	}
	
	/*
	 * @Override public void insert_s_Comments(CommentsDTO dto) { // TODO
	 * Auto-generated method stub this.SqlSession.insert("c_add",dto); }
	 * 
	 * @Override public List<CommentsDTO> List_s_Comments(int s_no) { // TODO
	 * Auto-generated method stub return this.SqlSession.selectList("c_list",s_no);
	 * }
	 * 
	 * @Override public void delete_s_Comments(int c_no) { // TODO Auto-generated
	 * method stub this.SqlSession.delete("c_delete",c_no); }
	 * 
	 * @Override public void update_s_Comments(CommentsDTO dto) { // TODO
	 * Auto-generated method stub this.SqlSession.update("c_update",dto); }
	 */

	
	@Override
	public ShareeDTO content(int s_no) {
		
		return this.SqlSession.selectOne("cont", s_no);
	}
	@Override
	public void readCount(int no) {
		// TODO Auto-generated method stub
		
	}

	

	@Override
	public void updateBoard(ShareeDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBoard(int no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ShareeDTO> search(String field, String name) {
		// TODO Auto-generated method stub
		return null;
	}

	

	

	

	

	

}
