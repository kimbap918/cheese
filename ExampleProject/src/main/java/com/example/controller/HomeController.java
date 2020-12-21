package com.example.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.common.CommandMap;
import com.example.service.CommonService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="commonService")
	CommonService commonService = new CommonService();

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = { "/", "/index.do" }, method = RequestMethod.GET)
	public ModelAndView home(@RequestParam Map<String, Object> map) {
		log.debug("Request Parameter : " + map);
		
		ModelAndView mv = new ModelAndView("/main");
				
		List<Map<String, Object>> list = commonService.getList(null);
		mv.addObject("list", list);
		return mv;
	}
	
	
	@RequestMapping(value ="login.do", method = RequestMethod.GET)
	public ModelAndView loginTest(@RequestParam Map<String, Object> map) {
		log.debug("Request Parameter : " + map);
		
		ModelAndView mv = new ModelAndView("/login");
				
		List<Map<String, Object>> list = commonService.getList(null);
		mv.addObject("list", list);
		return mv;
	}


	@RequestMapping(value = "mypage.do" , method = RequestMethod.GET)
	public ModelAndView mypage(@RequestParam Map<String, Object> map) {
		log.debug("Request Parameter : " + map);
		
		ModelAndView mv = new ModelAndView("/mypage");
				
		List<Map<String, Object>> list = commonService.getList(null);
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value = { "join.do" }, method = RequestMethod.GET)
	public ModelAndView join(@RequestParam Map<String, Object> map) {
		log.debug("Request Parameter : " + map);
		
		ModelAndView mv = new ModelAndView("/join");
				
		List<Map<String, Object>> list = commonService.getList(null);
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value = { "product_ex" }, method = RequestMethod.GET)
	public ModelAndView product(@RequestParam Map<String, Object> map) {
		log.debug("Request Parameter : " + map);
		
		ModelAndView mv = new ModelAndView("/product");
				
		List<Map<String, Object>> list = commonService.getList(null);
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value = "/sample/openSample.do", method = RequestMethod.GET)
	public ModelAndView test(@RequestParam Map<String, Object> map) {
		log.debug("map : " + map);

		ModelAndView mv = new ModelAndView("");
		return mv;
	}

	@RequestMapping(value = "/sample/testMapArgumentResolver.do")
	public ModelAndView testMapArgumentResolver(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("");
		if (!commandMap.isEmpty()) {
			Iterator<Entry<String, Object>> iterator = commandMap.getMap().entrySet().iterator();
			Entry<String, Object> entry = null;
			while (iterator.hasNext()) {
				entry = iterator.next();
				log.debug("key : " + entry.getKey() + ", value : " + entry.getValue());
			}
		}
		return mv;
	}
	//여기에 받아오는 MAP은 사용자가 JSP에서 입력한 값을 받아오는 MAP key value
	@RequestMapping(value = "loginCheck.do", method = RequestMethod.POST) //매핑 요청 값, 방법 
	public ModelAndView loginCheck(@RequestParam Map<String, Object> map, HttpServletRequest req) { //
		log.debug("Request Parameter : " + map); //콘솔 로그 출
		
		ModelAndView mv = new ModelAndView("redirect:/"); //괄호 안의 값을 보여주는것, 이동하는것이 x 
		Map<String, Object> userInfo = commonService.loginCheck(map); 
		if(userInfo != null) { //널 체크
			HttpSession s = req.getSession(); //세션 생성
			s.setAttribute("userInfo", userInfo); //세션에 속성값 부여	
		}
		
		return mv;
	}

}
