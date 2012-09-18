package org.oregami.data;

import org.oregami.entities.Game;
import org.springframework.stereotype.Component;

@Component
public class GameDaoManagerImpl extends AbstractDaoManager<Game> implements GameDaoManager {

	@Override
	public Class<Game> getEntityClass() {
		return Game.class;
	}

}
