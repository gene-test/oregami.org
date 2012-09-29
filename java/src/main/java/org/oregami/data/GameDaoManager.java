package org.oregami.data;

import java.util.List;

import org.oregami.entities.Game;

public interface GameDaoManager extends BasicDaoManager<Game> {

	List<Game> getAllGames();

	Integer countAllGames();

}
