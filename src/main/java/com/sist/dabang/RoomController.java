
package com.sist.dabang;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonObject;
import com.sist.model.RoomDAO;
import com.sist.model.RoomDTO;
import com.sist.model.RoomOptionDTO;
import com.sist.model.RoomTotalDTO;

@Controller
public class RoomController {
	
	
	@Autowired
	private RoomDAO rdao;
	
	@RequestMapping("/upload_room_ok.do")
	public String upload_room_ok(RoomDTO rdto, RoomOptionDTO rodto, MultipartHttpServletRequest mtfRequest,
			@RequestParam("r_address2") String r_address2, @RequestParam("r_rentfee2") String r_rentfee2,
			@RequestParam("r_dimension2") String r_dimension2, @RequestParam("r_floor2") String r_floor2, HttpSession session)
			throws UnsupportedEncodingException {

		System.out.println("세션 값 테스트 " + session.getAttribute("m_no"));
		
		List<MultipartFile> fileList = mtfRequest.getFiles("file");

		String safeFile2 = "";
		/*String path = "C:\\image\\";*/
		/*String path = "..\\..\\..\\..\\webapp\\resources\\uploads\\";*/
		String path = "resources\\uploads\\";
		path.replace("\\", "\" ");
		ArrayList<String> list = new ArrayList<String>();

		for (MultipartFile mf : fileList) {
			System.out.println("mf : " + mf);
			String originFileName = mf.getOriginalFilename(); // 원본 파일 명
			long fileSize = mf.getSize(); // 파일 사이즈

			System.out.println("originFileName : " + originFileName);
			System.out.println("fileSize : " + fileSize);

			String safeFile = "C:\\NCS_웹과정\\workspace(spring)\\dabang\\src\\main\\webapp\\" +path + System.currentTimeMillis() + originFileName+"/";
			safeFile2 += path + System.currentTimeMillis() + originFileName+"/";
			/* list.add(safeFile); */
			

			try {
				mf.transferTo(new File(safeFile));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		/*
		 * StringBuffer aa = new StringBuffer(); String bb = null;
		 * System.out.println(list.size()); for(int i = 0; i < list.size(); i++) {
		 * //System.out.println("첫번째"+ list.get(i)); aa.append(list.get(i));
		 * aa.append("/"); aa.concat(list.get(i)); }
		 */
		
		/*
		 * String[] array = safeFile.split("/");
		 * 
		 * // 출력 for (int i = 0; i < array.length; i++) { System.out.println(array[i]);
		 * }
		 */

		rdto.setR_address(rdto.getR_address() +" "+ r_address2);
		
		System.out.println("test rentfee1 "+ rdto.getR_rentfee());
		
		rdto.setR_rentfee((rdto.getR_rentfee()+ "," + r_rentfee2).replace(",", "/"));
		System.out.println("test rentfee2 "+ rdto.getR_rentfee());
		
		rdto.setR_dimension((rdto.getR_dimension() + r_dimension2).replace(",", "/"));
		System.out.println("test dimention "+ rdto.getR_dimension());
		
		rdto.setR_floor((rdto.getR_floor() + r_floor2).replace(",", "/"));
		
		rdto.setR_photo(safeFile2);
		rdto.setM_no((int)session.getAttribute("m_no"));
		
		System.out.println("=====================================");
		System.out.println(rdto.toString());
		System.out.println(rodto.toString());
		
		this.rdao.insertRoom(rdto);
		int roomNum = this.rdao.roomNumSearch();
		System.out.println(roomNum);
		rodto.setR_no(roomNum);
		this.rdao.insertRoomOption(rodto);
		
		return "redirect:/";
	}
	
	@RequestMapping("/searchAddress.do")
	public ModelAndView searchAddress(@RequestParam("searchAddress") String searchAddress) {
		ModelAndView mav = new ModelAndView();
		List<RoomTotalDTO> list = this.rdao.searchAddress(searchAddress);
		System.out.println(list);
		/* model.addAttribute("SearchAddress", list); */
		mav.addObject("SearchAddress",list);
		mav.addObject("searchval", searchAddress);
		mav.setViewName("rent_room1");
		return mav;
	}
	
	@RequestMapping(value = "/room_cont.do", method = RequestMethod.GET)
	public String room_cont(@RequestParam("r_no") int r_no, Model model, HttpSession session) {
		 RoomTotalDTO tdto = this.rdao.roomContent(r_no);
		 RoomTotalDTO tdto2 = new RoomTotalDTO();
		 tdto2.setR_no(r_no); 
		 tdto2.setM_no((int) session.getAttribute("m_no"));
		 Boolean likeView = this.rdao.likeView(tdto2);
		 
		 System.out.println(tdto.getR_photo());
		 String [] photosrc = tdto.getR_photo().split("/");			
		
		 model.addAttribute("cont", tdto); 
		 model.addAttribute("like", likeView);
		 model.addAttribute("photosrc", photosrc);
		return "view_room_cont";
	}
	
	/*
	 * @RequestMapping("/view_room_cont.do") public String view_room_cont() {
	 * 
	 * return "view_room_cont"; }
	 */
	
	@RequestMapping(value = "/change", method = RequestMethod.POST)
	@ResponseBody
	public String change(@RequestParam String flag, HttpSession session, @RequestParam int r_no) {
		/*
		 * String result = ("plus".equals(flag)) ? String.valueOf(++count):
		 * String.valueOf(--count);
		 */
		int m_no = (int)session.getAttribute("m_no");
		
		System.out.println("좋아요 회원 넘버 "+ m_no);
		System.out.println("방 넘버 "+ r_no);
		
		String result2 = "";
		RoomTotalDTO tdto = new RoomTotalDTO();
		
		if("plus".equals(flag)) {
			result2 = String.valueOf(1);
			System.out.println("좋아요");
			tdto.setR_no(r_no);
			tdto.setM_no(m_no);
			 this.rdao.likeOn(tdto); 
		} else {
			result2 = String.valueOf(0);
			System.out.println("좋아요 취소");
			tdto.setR_no(r_no);
			tdto.setM_no(m_no);
			 this.rdao.likeOff(tdto);  
		}
		
		JsonObject jo = new JsonObject();
		jo.addProperty("count", result2);
		return jo.toString();
	}
}
