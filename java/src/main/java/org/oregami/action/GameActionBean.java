/*******************************************************************************
 * Copyright (C) 2012  Oregami.org, Germany http://www.oregami.org
 * 
 * 	This program is free software: you can redistribute it and/or modify
 * 	it under the terms of version 3 or any later version of the
 * 	GNU Affero General Public License as published by the Free Software 
 * 	Foundation.
 * 	
 * 	This program is distributed in the hope that it will be useful,
 * 	but WITHOUT ANY WARRANTY; without even the implied warranty of
 * 	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * 	GNU Affero General Public License for more details.	
 * 	
 * 	You should have received a copy of the GNU Affero General Public License
 * 	along with this program. If not, see <http://www.gnu.org/licenses/>.
 ******************************************************************************/
package org.oregami.action;

import net.sourceforge.stripes.action.ActionBean;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

import org.oregami.data.GameDaoManager;
import org.oregami.entities.Game;
import org.oregami.util.BaseActionBean;
import org.springframework.beans.factory.annotation.Autowired;

@UrlBinding("/game/{gameId=2}")
public class GameActionBean extends BaseActionBean implements ActionBean {

	private Game loadedGame = null;
	private String gameId;

	@Autowired
	private GameDaoManager gameDaoManager;

	public Resolution defaultHandler() {

		loadedGame = gameDaoManager.getEntityById(Long.parseLong(gameId));
		return new ForwardResolution("/jsp/game.jsp");
	}

	public String getGameId() {
		return gameId;
	}

	public void setGameId(String gameId) {
		this.gameId = gameId;
	}

	public Game getLoadedGame() {
		return loadedGame;
	}
}
