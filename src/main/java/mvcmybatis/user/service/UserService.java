package mvcmybatis.user.service;

import mvcmybatis.user.entity.User;

public interface UserService {
	User findByUsername(String username);
}
