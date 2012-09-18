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

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.jar.Attributes;
import java.util.jar.Manifest;

import net.sourceforge.stripes.action.ActionBean;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

import org.oregami.util.BaseActionBean;

@UrlBinding("/admin")
public class AdminActionBean extends BaseActionBean implements ActionBean {

	@DefaultHandler
	public Resolution defaultHandler() {
		String appServerHome = getContext().getServletContext().getRealPath("/");

		File manifestFile = new File(appServerHome, "META-INF/MANIFEST.MF");

		Manifest mf = new Manifest();
		try {
			mf.read(new FileInputStream(manifestFile));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		Attributes atts = mf.getMainAttributes();

		System.out.println("Version: " + atts.getValue("Implementation-Version"));
		System.out.println("Build: " + atts.getValue("Implementation-Build"));

		return new ForwardResolution("/jsp/admin/index.jsp");
	}

	public Resolution resetDatabase() {
		throw new RuntimeException("reset database needs to be reimpled");
		// GameDAO.deleteAllGames();
		// System.gc();
		// GameDAO.deleteAllUsers();
		// System.gc();
		// App.ensureDatabaseIsFilled();
		// System.gc();
		// return new ForwardResolution("/jsp/admin/index.jsp");

	}

	/*
	 * public Resolution deleteGames() { System.out.println("delete"); GameDAO.deleteAllGames(); GameDAO.deleteAllUsers(); return new ForwardResolution("/jsp/admin/index.jsp"); }
	 */

	public String getGameCount() {
		int gameCount = DaoManager.get().getGameDaoManager().countAllGames();
		String ret = "Momentan sind " + gameCount + " vorhanden";
		// boolean first = true;
		// for (Game game : games) {
		// if (!first)
		// ret += ", ";
		// ret += game.getId();
		// first = false;
		// }
		return ret;
	}

}
