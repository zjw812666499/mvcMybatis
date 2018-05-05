package mvcmybatis.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import mvcmybatis.common.dao.BaseDao;
import mvcmybatis.user.entity.User;

public interface UserDao extends BaseDao<User>{
	 User findByUsername(
			 @Param("username")String username
			 );
	 User findById(@Param("id")Integer id);
	 List<User> findAll();
	
}
