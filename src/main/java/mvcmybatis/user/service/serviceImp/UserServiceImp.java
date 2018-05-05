package mvcmybatis.user.service.serviceImp;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mvcmybatis.user.dao.UserDao;
import mvcmybatis.user.entity.User;
import mvcmybatis.user.service.UserService;
@Service("userService")
@Transactional
public class UserServiceImp implements UserService {
	@Resource
	private UserDao userdao;

	public User findByUsername(String username) {
		System.out.println("µ˜”√¡ÀuserService");
		User user = userdao.findByUsername(username);
		
		return  user;
	}

	

}
