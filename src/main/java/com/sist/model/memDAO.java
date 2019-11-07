package com.sist.model;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

public interface memDAO {
	
	int insertmem(memDTO mdto)throws SQLException;
	
	int checkemail(String m_email);
	
	int checknick(String m_nick);
	
	memDTO login(memDTO dto);

	void logout(HttpSession session);


}
