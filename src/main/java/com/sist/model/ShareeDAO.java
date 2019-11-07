package com.sist.model;

import java.util.List;



public interface ShareeDAO {
	public List<ShareeDTO> getList();
	public void insertBoard(ShareeDTO dto);
	public void readCount(int no);
	public ShareeDTO content(int s_no);
	public void updateBoard(ShareeDTO dto);
	public void deleteBoard(int no);
	public List<ShareeDTO> search(String field, String name);
	/*
	 * public List<CommentsDTO> List_s_Comments(int s_no); public void
	 * insert_s_Comments(CommentsDTO dto); public void delete_s_Comments(int c_no);
	 * public void update_s_Comments(CommentsDTO dto);
	 */
}
