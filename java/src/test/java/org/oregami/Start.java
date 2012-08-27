package org.oregami;

import org.eclipse.jetty.http.ssl.SslContextFactory;
import org.eclipse.jetty.security.HashLoginService;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.bio.SocketConnector;
import org.eclipse.jetty.server.ssl.SslSocketConnector;
import org.eclipse.jetty.util.resource.Resource;
import org.eclipse.jetty.webapp.WebAppContext;

public class Start {
	public static void main(String[] args) throws Exception {
		Server server = new Server();
		SocketConnector connector = new SocketConnector();

		// Set some timeout options to make debugging easier.
		connector.setMaxIdleTime(1000 * 60 * 60);
		connector.setSoLingerTime(-1);
		connector.setPort(8080);
		server.addConnector(connector);

		Resource keystore = Resource.newClassPathResource("/keystore");
		if (keystore != null && keystore.exists()) {
			connector.setConfidentialPort(8443);

			SslContextFactory factory = new SslContextFactory();
			factory.setKeyStoreResource(keystore);
			factory.setKeyStorePassword("oregami");
			factory.setTrustStore(keystore);
			factory.setKeyManagerPassword("oregami");
			SslSocketConnector sslConnector = new SslSocketConnector(factory);
			sslConnector.setMaxIdleTime(1000 * 60 * 60);
			sslConnector.setPort(8443);
			sslConnector.setAcceptors(4);
			server.addConnector(sslConnector);

			System.out.println("SSL access to the quickstart has been enabled on port 8443");
			System.out.println("You can access the application using SSL on https://localhost:8443");
			System.out.println();
		}

		WebAppContext bb = new WebAppContext();
		bb.setServer(server);
		bb.setContextPath("/");
		bb.setWar("src/main/webapp");

		// add security realm support
		HashLoginService dummyLoginService = new HashLoginService("TEST-SECURITY-REALM", "src/test/resources/test-realm.properties");
		bb.getSecurityHandler().setLoginService(dummyLoginService);

		server.setHandler(bb);

		try {
			System.out.println(">>> STARTING EMBEDDED JETTY SERVER, PRESS ANY KEY TO STOP");
			server.start();
			System.in.read();
			System.out.println(">>> STOPPING EMBEDDED JETTY SERVER");
			server.stop();
			server.join();
		} catch (Exception e) {
			e.printStackTrace();
			System.exit(1);
		}
	}
}
