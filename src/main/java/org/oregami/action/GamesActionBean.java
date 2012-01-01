package org.oregami.action;

import java.util.List;

import net.sourceforge.stripes.action.ActionBean;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

import org.oregami.data.App;
import org.oregami.data.GameDAO;
import org.oregami.entities.Game;
import org.oregami.util.BaseActionBean;

@UrlBinding("/games")
public class GamesActionBean extends BaseActionBean implements ActionBean {

	private List<Game> gameList = null;
	
	public Resolution defaultHandler() {
		
		App.ensureDatabaseIsFilled();
		
		gameList = GameDAO.getAllGames();
		return new ForwardResolution("/jsp/gameslist.jsp");

		//return new RedirectResolution("/game");
	}

	public List<Game> getGameList() {
		return gameList;
	}
	
}