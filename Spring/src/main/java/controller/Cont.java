package controller;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import actionSvc.DataOperation;
import modeling2.New_table;
import service.Svc;

// 위의 annotation을 통해 controller의 역할을 수행함

// requestMapping 뒤에 요청이 들어와 주어야 한다.
// MVC에서 controller라는 파일은 *.bo의 주소를 받아 다른 servlet페이지를 연결해주는 역할을 한다.
// 그런데, SPring에서는 @RequestMapping을 통해 어떤 url로 받을지 정해 줄 수 있다.
// .yo의 주소를 받으면, 아래의 페이지로 보내줄 수 있다.
// spring frame Work는 조립이다. 

@Controller
public class Cont {
	
	@Autowired
	New_table  ob;
	// Autowired로 객체 주입
	// 프레임워크에서는 기본 java문법으로 객체를 생성하지 않는다.
	// 의존성 주입

	@Autowired
	DataOperation dy;
	
	@Autowired
	Svc sv;
	
	@RequestMapping("/yo")
	public String basic () {
		// 어딘가로 이동해야하는 것을 담당하는 메소드는 return이 무조건 String값이어야 한다.
		return "/WEB-INF/mia/Paper-plans.jsp";
	} // basic
	
	@RequestMapping("/a")
	public String mongja (String a) {
		// localhost:8080/spring/a?a=hi
		System.out.println(a);
		return "";
	} // mongja
	

	@RequestMapping("/s")
	public String connect(Model mo) throws Exception{
		
		//ob.getTitle();
		
		List<New_table> arr = new ArrayList<New_table>();
		
		// arr = dy.select();
		//request.setAttribute("array", arr);
		
		arr = sv.svcSelect();
		
		mo.addAttribute("array", arr); 
		//key-value의 형태
		
		
		return "/WEB-INF/view.jsp";
	}
	
	@RequestMapping("/i")
	public String inConnect() {
		
		return "/WEB-INF/InsertPage.jsp";
	} //
	
	@RequestMapping(value="/in", method=RequestMethod.POST)
	public String request(@ModelAttribute New_table mo) {
		// 넘겨받은 정보를 Model 객체의 형태로 받아온다는 뜻
		// 만들어 놓은 객체의 모델링과 form태그 안에서 보내지는 데이터의 name의 이름이 일치하여야 한다.
		//mo.getTitle();
		//mo.getContent();
		//mo.getCode();
		
		//System.out.println(mo.getTitle());
		//Model drama = new Model();\
		
		sv.svcInsert(mo);
		
		return "redirect:/s";
	} // request // redirect라고 하면 새로고침이 됨.
	
	@RequestMapping("del")
	public String delRequest(@RequestParam Integer no) {
		//new DataOperation().delete2(no);
		sv.svcDelete(no);
		return "redirect:/s";
	} // delRe
	
	@RequestMapping("/l")
	public String login() {
		
		return "/WEB-INF/login.jsp";
	} // login();
	
	
} // Class Cont
