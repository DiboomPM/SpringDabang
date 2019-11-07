package com.sist.dabang;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sist.model.ShareeDAO;
import com.sist.model.ShareeDTO;

@Controller
public class ShareController {
	
	@Autowired
	private ShareeDAO dao;
	
	@RequestMapping("/share_room.do")
	   public String share_room(Model model) {
	      List<ShareeDTO> list = this.dao.getList();
	      model.addAttribute("List",list);
	      return "share_room";
	   }
	   
	
	  @RequestMapping("/share_room_upload.do") 
	  public String share_room_upload() {
	  
	  return "share_room_upload"; }
	 
	   @RequestMapping("/share_ok.do")
	   public String share_room_ok(ShareeDTO dto,Model model,MultipartHttpServletRequest mtfRequest) throws UnsupportedEncodingException {
	      List<MultipartFile> fileList = mtfRequest.getFiles("file");

	        String path = "C:\\image\\";
	        String safeFile ="";
	        for (MultipartFile mf : fileList) {
	            String originFileName = mf.getOriginalFilename(); // 원본 파일 명
	            long fileSize = mf.getSize(); // 파일 사이즈
	            if(fileSize>0) {
	               System.out.println("originFileName : " + originFileName);
	               System.out.println("fileSize : " + fileSize);
	   
	              safeFile +=  path + System.currentTimeMillis() + originFileName+"/";
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
	        }
	      System.out.println(safeFile);
	      dto.setS_src(safeFile);
	      this.dao.insertBoard(dto);
	      
	      return "redirect:share_room.do";
	   }
	   
	
	  @RequestMapping("/share_cont.do") public String
	  share_cont(@RequestParam("s_no") int s_no,Model model) { 
		  ShareeDTO dto=this.dao.content(s_no); 
	  
	  model.addAttribute("cont",dto);
	   
	  return "share_cont"; }
	 
}
