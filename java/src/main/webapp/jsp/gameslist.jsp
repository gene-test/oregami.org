<%@ include file="/WEB-INF/taglibs.jspp" %> 
<stripes:layout-render name="/jsp/layout/main.jsp">
<stripes:layout-component name="contents">

	<h2><fmt:message key="all_games"/></h2>
	<ol>
		<c:forEach items="${actionBean.gameList}" var="game">
			<li>
				<span>${game.mainTitle}</span> 
				<ul>
					<li><stripes:link href="/game/${game.id}">Prototyp-View</stripes:link></li>
					<li><stripes:link href="/tree/${game.id}">Tree-View</stripes:link></li>
				</ul>
			</li>
		</c:forEach>
	</ol>
	
<%@ include file="/loginbox.jsp" %> 	
	
</stripes:layout-component>
</stripes:layout-render>
