package com.sist.dabang;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sist.model.QNADAO;
import com.sist.model.QNADTO;

//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.sist.model.BoardDAO;

@Controller
public class QNAController {

	@Autowired
	private QNADAO dao; //sqlsession template 객체
	
	/*
	 * @RequestMapping(value="/board_write_ok.do", method = RequestMethod.POST) 
	 * public String insertOk(BoardDTO dto){
	 * this.dao.insertBoard(dto);
	 * 
	 * return "redirect:board_list.do";
	 * 
	 * 
	 */
	
	@RequestMapping("/myqna_room.do")
	public String myqna_room(Model model) {
		List<QNADTO>list =  dao.getList();
		model.addAttribute("List", list);
		return "myqna_room";
	}	
	
	//글쓰기폼에서 작성완료버튼 누르면 작성한 글 내용 db에 저장하기		
	@RequestMapping(value="/myqna_write_ok.do", method=RequestMethod.POST)
	public void insertOk(QNADTO dto, HttpServletResponse response ) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		if(dto.getMyqna_cont().isEmpty()||dto.getMyqna_title().isEmpty()||dto.getMyqna_qtype().isEmpty()) {
			out.println("<script>");
			out.println("alert('다시 확인!!')");
			out.println("history.back()");
			out.println("</script>");
			return;
		}
		
		int res = this.dao.insertBoard(dto);
		if(res == 1) {
			out.println("<script>");
			out.println("alert('문의내역 확인')");
			out.println("location.href='myqna_room.do'");
			out.println("</script>");
		}
	}
	
	//글 제목 누르면 상세내용 보기		//?no=${i.myqna_no} 이렇게 넘기는게 get방식
	@RequestMapping(value="/myqna_content.do", method=RequestMethod.GET)
	public String myqna_content(@RequestParam("no") int no, Model model) {
		QNADTO dto = this.dao.content(no); //상세내용 가져오기
		model.addAttribute("cont", dto);
		
		return "myqna_content";
	}
	

	@RequestMapping(value="/myqna_edit.do", method=RequestMethod.GET)
	public String myqna_edit(@RequestParam("no") int no, Model model) {
		QNADTO dto = this.dao.content(no);
		model.addAttribute("modify", dto);

		return "myqna_edit";
	}
	
	@RequestMapping(value="/myqna_edit_ok.do", method=RequestMethod.POST)
	public String editOk(QNADTO dto, @RequestParam("myqna_no2") int no, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		dto.setMyqna_no(no);
		int res = this.dao.updateBoard(dto);
		
		PrintWriter out = response.getWriter();
		if(res == 1) {
			
			this.dao.updateBoard(dto);
//			out.println("<script>");
//			out.println("location.href='myqna_cont.do?no=" + dto.getMyqna_no() + "' ");
//			out.println("</script>");
			
		}else {
			this.dao.updateBoard(dto);
			out.println("<script>");
			out.println("alert('수정실패')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		return "redirect:myqna_room.do";
	}
	
	/*
	 * //삭제버튼 누르면 삭제 폼 창으로 보내기
	 * 
	 * @RequestMapping(value="/myqna_delete.do", method=RequestMethod.GET) public
	 * String delete(@RequestParam("no") int no, Model model) {
	 * 
	 * DTO dto = this.dao.content(no);
	 * 
	 * model.addAttribute("delete", dto); 
	 * 
	 * return "myqna_delete";
	 * 
	 * }
	 */
	
	@RequestMapping(value="/myqna_delete.do.ok", method=RequestMethod.GET)
	public String deleteOk(@RequestParam("no") int no, QNADTO dto, Model model, HttpServletResponse response ) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
		this.dao.deleteBoard(no);		
		return "redirect:myqna_room.do";

	}
	

	
	
	
	

}
