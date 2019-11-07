package com.sist.dabang;

import java.io.IOException;
import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sist.model.memDTO;
import com.sist.model.memService;

@Controller
public class MemberController {

	@Inject
	private memService mservice;

	// 회원가입
	@RequestMapping(value = "/signup.do", method = RequestMethod.POST)
	public String signup(memDTO mdto) {

		mservice.insertmem(mdto);
		return "redirect:/";
	}

	// 이메일 중복 체크 (ajax)
	@RequestMapping(value = "/checkemail.do", method = RequestMethod.POST)
	@ResponseBody
	public int checkemail(@RequestParam("mem_email") String m_email) {

		return mservice.checkemail(m_email);
	}

	// 이메일 중복 체크 (ajax)
	@RequestMapping(value = "/checknick.do", method = RequestMethod.POST)
	@ResponseBody
	public int checknick(@RequestParam("mem_nick") String m_nick) {

		return mservice.checknick(m_nick);

	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public ModelAndView modify(@RequestParam("input_email") String input_email,
			@RequestParam("input_pwd") String input_pwd, HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		memDTO mdto = new memDTO();
		mdto.setM_email(input_email);
		mdto.setM_pwd(input_pwd);
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		memDTO mem = mservice.login(mdto);

		if (mem == null) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			  out.println("<script>");
			  out.println("alert('아이디와 비밀번호를 확인하세요')");
			  out.println("history.back()");
			  out.println("</script>");
			  out.flush();
			  return null;
		}
		else {
			session.setAttribute("member", mem);
			session.setAttribute("m_no", mem.getM_no());
			session.setAttribute("m_nick", mem.getM_nick());
			mav.setViewName("../../index");
			return mav;
		}
	}

	@RequestMapping(value = "/logout.do")
	public ModelAndView logout(HttpSession session) {
		mservice.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("../../index");
		return mav;

	}

}
