package org.oregami.data;

import org.oregami.entities.User;
import org.springframework.stereotype.Component;

@Component
public class UserDaoManagerImpl extends AbstractDaoManager<User> implements UserDaoManager {

	@Override
	public Class<User> getEntityClass() {
		return User.class;
	}

}
