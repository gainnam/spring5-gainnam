package org.edu.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.edu.dao.IF_BoardTypeDAO;
import org.edu.vo.BoardTypeVO;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice // 컨트롤러에서 발생되는 CRUD 액션을 중간에 가로채는 기능클래스 명시
public class ControllerAdviceException {
	@Inject
	private IF_BoardTypeDAO boardTypeDAO;
	
	//컨트롤러 매핑 걸린 모든 메서드(jsp와 매칭)에서 공통으로 사용할 modelAttribute 생성(board_type_list)
	@ModelAttribute("board_type_list")//jsp모델 오브젝트 값을 보낼 때 사용
	public List<BoardTypeVO> board_type_list() throws Exception  {
		List<BoardTypeVO> board_type_list = boardTypeDAO.select_board_type();
		
		return board_type_list;
	}
	
	//--------------------아래는 예외처리용 코딩, 위는 모든 컨트롤러의 반환값으로 model("board_type_list",??) 만드는 코딩
	//ModelAndView클래스는 jsp로 반환할 때, 값을 저장하는 역할
	//언제 아래 메서드가 실행될 지 명시하는 클래스(아래)
	@ExceptionHandler(Exception.class) //컨트롤러에서 예외(에러)가 발생했을 때, 아래 메서드를 자동실행
	public ModelAndView errorModelAndView(Exception ex, HttpServletRequest request) {
		 ModelAndView modelAndView = new ModelAndView();
		 System.out.println("디버그: 예외처리 인터셉터");
		 //AdminController에서 사용한 Model 클래스는 jsp로 값을 보낼 때
		 //여기서 사용하는 ModelAndView클래스는 jsp로 값을 보내고 + 반환값으로 model값을 보낼 jsp도 지정
		 //모델 값을 보낼 jsp경로지정하는 명령은 셋뷰네임입니다.
		 modelAndView.setViewName("home/spring_error");//반환할 jsp위치 지정
		 modelAndView.addObject("exception", ex);
		 //modelAndView.addAttribute("error_message", ex);
		 //return "home/error";
		 String referer = request.getHeader("Referer");//이전 페이지로 이동할 때 필요한 링크값=크롬에서 확인 가능한 헤더
		 request.getSession().setAttribute("prevPage", referer);
		 //Session: 클라이언트가 서버에 접속 시 서버에서 발생하는 고유변수값. prevPage 세션키를 하나 생성(위내용)
		 //세션에 저장된 prevPage키를 jsp에서 사용하게 됩니다.
		 //결과로 jsp에서 사용가능한 변수 2가지: 오브젝트변수(클래스변수)인 exception, 세션변수인 prevPage
		 return modelAndView;
	}
}
