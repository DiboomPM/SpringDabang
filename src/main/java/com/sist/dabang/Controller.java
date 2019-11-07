package com.sist.dabang;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sist.model.RoomDAO;
import com.sist.model.RoomTotalDTO;

@org.springframework.stereotype.Controller
public class Controller {
	
	@Autowired
	private RoomDAO rdao;
	
	/*
	 * public ModelAndView view_room_map() { ModelAndView mav = new ModelAndView();
	 * 
	 * List<RoomDTO> list = rdao.roomSelectAll();
	 * 
	 * mav.addObject("List", list); return mav; }
	 */
	
	
	@RequestMapping("/main_room.do")
	public String main_room() {

		return "../../index";
	}
	
	@RequestMapping("/view_room.do")
	public String view_room(Model model, HttpServletRequest request, HttpSession session) throws JsonProcessingException {			
		List <RoomTotalDTO> list = rdao.roomSelectAll();
		List<String> photosrc = new ArrayList<String>();
		
		for(int i = 0; i < list.size(); i++) {
			String arr[] = list.get(i).getR_photo().split("/");
			list.get(i).setR_photoOne(arr[0]);
		}

		model.addAttribute("List", list);
		model.addAttribute("Photosrc", photosrc);
		
		request.setAttribute("List2", list);
		model.addAttribute(request);
		
		ObjectMapper mapper = new ObjectMapper();
		String jsonText = mapper.writeValueAsString(list);
		model.addAttribute("json", jsonText);
		/* System.out.println(jsonText); */
		return "view_room";
	}

	@RequestMapping("/rent_room.do")
	public String rent_room() {
		
		return "rent_room";
	}

	@RequestMapping("/upload_room.do")
	public String upload_room(HttpSession session) {
		System.out.println(session.getAttribute("m_no"));
		return "upload_room";
	}

	@RequestMapping("/upload_room_2.do")
	public String upload_room_2(HttpSession session) {
		System.out.println(session.getAttribute("m_no"));
		return "upload_room_2";
	}

	@RequestMapping("/upload_room_3.do")
	public String upload_room_3(HttpSession session) {
		System.out.println(session.getAttribute("m_no"));
		return "upload_room_3";
	}

	/*
	 * @RequestMapping("/share_room.do") public String share_room() {
	 * 
	 * return "share_room"; }
	 */
	/*
	 * @RequestMapping("/share_room_upload.do") public String share_room_upload() {
	 * 
	 * return "share_room_upload"; }
	 */
	@RequestMapping("/customer_room.do")
	public String customer_room() {

		return "customer_room";
	}
	
	  @RequestMapping("/qna_room.do") public String qna_room() {
	  
	  return "qna_room"; }
	 
	
	/*
	 * @RequestMapping("/myqna_room.do") public String myqna_room() {
	 * 
	 * return "myqna_room"; }
	 */
	
	@RequestMapping("/my_room_1.do")
	public String my_room_1(Model model, HttpServletRequest request, HttpSession session) throws JsonProcessingException {
			
			int m_no = (int)session.getAttribute("m_no");
			System.out.println(m_no);
			List <RoomTotalDTO> list = rdao.roomLikeAll(m_no);
			System.out.println(list);
			
			List<String> photosrc = new ArrayList<String>();
			
			for(int i = 0; i < list.size(); i++) {
				String arr[] = list.get(i).getR_photo().split("/");
				list.get(i).setR_photoOne(arr[0]);
			}

			model.addAttribute("List", list);
			model.addAttribute("Photosrc", photosrc);
			model.addAttribute(request);
			
			ObjectMapper mapper = new ObjectMapper();
			String jsonText = mapper.writeValueAsString(list);
			model.addAttribute("json", jsonText);
		
		return "my_room_1";
	}
	
	@RequestMapping("/my_room_2.do")
	public String my_room_2() {

		return "my_room_2";
	}
	
	@RequestMapping("/my_room_3.do")
	public String my_room_3() {

		return "my_room_3";
	}
	
	@RequestMapping("/my_room_3_1.do")
	public String my_room_3_1() {

		return "my_room_3_1";
	}
	
	@RequestMapping("/my_room_4.do")
	public String my_room_4() {

		return "my_room_4";
	}

	
	@RequestMapping("/con4_1.do")
	public String con4_1() {

		return "con4_1";
	}
	
	@RequestMapping("/con4_2.do")
	public String con4_2() {

		return "con4_2";
	}
	
	@RequestMapping("/search_room.do")
	public String search_room() {

		return "search_room";
	}
	
	@RequestMapping("/email_find.do")
	public String email_find() {

		return "email_find";
	}

	@RequestMapping("/rent_room_upload.do")
	public String rent_room_update() {
		return "rent_room_upload";
	}
	
}
