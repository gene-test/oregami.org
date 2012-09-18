package org.oregami.action;

import org.oregami.data.GameDaoManager;
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
	public GameDaoManager gameDaoManager;

}
