package mvcmybatis.user.control;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mvcmybatis.common.web.JsonResult;
import mvcmybatis.user.entity.User;
import mvcmybatis.user.service.UserService;

@Controller
public class Usercontrol {
	@Resource
	private UserService userService;
	@RequestMapping("/loginUI")
	public String login(){
		System.out.println(" ‰»Î¡ÀloginUI");
		return "index";//∑√Œ WEB-INF /pages/index.jsp
	}
	
	@RequestMapping("/login")
	@ResponseBody
	public JsonResult findByUsername(String username,String pwd){
		System.out.println("login");
		User user = userService.findByUsername(username);
		System.out.println(user.getUsername()+"  : "+user.getPwd()+"  : "+user.getEmail());
		return  new JsonResult(user);		
	}

	
	

}
