package service.impl;

import bean.User;
import dao.IUserDao;
import dao.impl.UserDao;
import service.IUserService;

public class UserService implements IUserService {
	private IUserDao userDao = new UserDao();

	public void addUser(User user) {
		
		userDao.addUser(user);

	}

}
