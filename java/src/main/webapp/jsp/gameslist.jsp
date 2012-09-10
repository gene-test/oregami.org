<%@ include file="/WEB-INF/taglibs.jspp" %> 

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/> 
<link rel="stylesheet" href="${contextPath}/css/style.css" />
<title><fmt:message key="all_games"/></title>
</head>

<body>
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

</body>
</html>
