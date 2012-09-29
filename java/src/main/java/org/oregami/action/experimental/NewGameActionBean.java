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
package org.oregami.action.experimental;

import net.sourceforge.stripes.action.ActionBean;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;
import net.sourceforge.stripes.validation.Validate;
import net.sourceforge.stripes.validation.ValidateNestedProperties;

import org.oregami.entities.Game;
import org.oregami.util.BaseActionBean;

@UrlBinding("/experimental/new/game")
public class NewGameActionBean extends BaseActionBean implements ActionBean {

	private final static String JSP_NEWGAME = "/jsp/experimental/new_game.jsp";
	private Game game = null;
	
	@DefaultHandler
	public Resolution defaultHandler() {
		return new ForwardResolution(JSP_NEWGAME);
	}

	public Resolution update() {
		System.out.println("this.game: " + (this.game==null?"null":game.toWebString()));
		
		if (this.game!=null) {
			this.setDebugString(game.toWebString());
		}
		return new ForwardResolution(JSP_NEWGAME);
	}
	
	public Resolution save() {
		System.out.println("this.game: " + (this.game==null?"null":game.toWebString()));
		
		if (this.game!=null) {
			this.setDebugString(game.toWebString());
		}
		return new ForwardResolution(JSP_NEWGAME);
	}

	
	
	public Game getGame() {
		return game;
	}

	@ValidateNestedProperties({
		@Validate(field="mainTitle", required=true, on="update")
	})
	public void setGame(Game game) {
		this.game = game;
	}
	
}
