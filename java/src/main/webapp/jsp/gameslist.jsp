<%@ include file="/WEB-INF/taglibs.jspp" %> 
<c:set var="title"><fmt:message key="navGameslist" /></c:set>
<stripes:layout-render name="/jsp/layout/main.jsp" title="${title}">
<stripes:layout-component name="contents" >

	<h2><fmt:message key="navGameslist"/></h2>

	<h4>Tree-View</h4>
	<ol>
		<c:forEach items="${actionBean.gameList}" var="game">
			<li><stripes:link href="/tree/${game.id}">${game.mainTitle}</stripes:link></li>
		</c:forEach>
	</ol>
	
	<!-- 
	<h4>Accordeon-View</h4>
	<ol>
		<c:forEach items="${actionBean.gameList}" var="game">
			<li><stripes:link href="/game/${game.id}">${game.mainTitle}</stripes:link></li>
		</c:forEach>
	</ol>	
	 -->
	
	<br/>
	<h4>Bootstrap-View</h4>
	<ol>
		<c:forEach items="${actionBean.gameList}" var="game">
			<li><stripes:link href="/game-bootstrap/${game.id}">${game.mainTitle}</stripes:link></li>
		</c:forEach>
	</ol>		

</stripes:layout-component>
</stripes:layout-render>
