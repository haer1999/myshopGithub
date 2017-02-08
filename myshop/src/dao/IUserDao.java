package dao;

import bean.User;

public interface IUserDao {
	public void addUser(User u);
	public User select(String name);
}
