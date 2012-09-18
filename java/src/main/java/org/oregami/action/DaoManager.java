package org.oregami.action;

import org.oregami.data.GameDaoManager;
import org.oregami.data.UserDaoManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class DaoManager {

	private static DaoManager daoManager;

	private DaoManager() {
		daoManager = this;
	}

	public static DaoManager get() {
		return daoManager;
	}

	@Autowired
	private GameDaoManager gameDaoManager;

	@Autowired
	private UserDaoManager userDaoManager;

	public GameDaoManager getGameDaoManager() {
		return gameDaoManager;
	}

	public void setGameDaoManager(GameDaoManager gameDaoManager) {
		this.gameDaoManager = gameDaoManager;
	}

	public UserDaoManager getUserDaoManager() {
		return userDaoManager;
	}

	public void setUserDaoManager(UserDaoManager userDaoManager) {
		this.userDaoManager = userDaoManager;
	}

}
