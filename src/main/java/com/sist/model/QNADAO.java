package com.sist.model;

import java.util.List;

public interface QNADAO {

		public List<QNADTO> getList();
		public int insertBoard(QNADTO dto);
		public QNADTO content(int no);
		public int updateBoard(QNADTO dto);
		public void deleteBoard(int no);
		
		
}
