<%@ include file="/WEB-INF/taglibs.jspp" %> 
<stripes:layout-render name="/jsp/layout/main.jsp" title="gameslist__">
<stripes:layout-component name="contents" >

	<h2><fmt:message key="all_games"/></h2>
	<h4>Bootstrap-View</h4>
	<ol>
		<c:forEach items="${actionBean.gameList}" var="game">
			<li><stripes:link href="/game-bootstrap/${game.id}">${game.mainTitle}</stripes:link></li>
		</c:forEach>
	</ol>	
	
	<h4>Tree-View</h4>
	<ol>
		<c:forEach items="${actionBean.gameList}" var="game">
			<li><stripes:link href="/tree/${game.id}">${game.mainTitle}</stripes:link></li>
		</c:forEach>
	</ol>
	
	<h4>Accordeon-View</h4>
	<ol>
		<c:forEach items="${actionBean.gameList}" var="game">
			<li><stripes:link href="/game/${game.id}">${game.mainTitle}</stripes:link></li>
		</c:forEach>
	</ol>	

</stripes:layout-component>
</stripes:layout-render>
