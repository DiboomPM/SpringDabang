package com.sist.model;

import java.util.List;

public interface RoomDAO {

	public void insertRoom(RoomDTO dto);
	public int roomNumSearch();
	public void insertRoomOption(RoomOptionDTO rodto);
	public List <RoomTotalDTO> roomSelectAll();
	public RoomTotalDTO roomContent(int r_no);
	public List <RoomTotalDTO> searchAddress(String searchAddress);
	public void likeOn(RoomTotalDTO tdto);
	public void likeOff(RoomTotalDTO tdto);
	public Boolean likeView(RoomTotalDTO tdto);
	public List<RoomTotalDTO> roomLikeAll(int m_no);
	
}
