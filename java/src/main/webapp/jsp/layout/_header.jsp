<%@ include file="/WEB-INF/taglibs.jspp"%>

<!-- <div id="logo"> -->
<%-- 	<a href="${pageContext.request.contextPath}/"><img --%>
<!-- 		src="/images/oregami_logo.png" border="0"></a> -->
<!-- </div> -->

<div class="navbar">
	<div class="navbar-inner">
		<a class="brand" href="${pageContext.request.contextPath}/">Oregami.dev</a>
		<ul class="nav">
			<li><a href="${contextPath}/games"><fmt:message key="navGameslist"/></a></li>
			<li><a href="${contextPath}/userservices"><fmt:message key="navUserservices"/></a></li>
			<li><a href="${contextPath}/site/language"><fmt:message key="navLanguage"/></a></li>

			<div class="span4"></div>
			
			<img src="/images/oregami_logo.png" border="0">
			
		</ul>
	</div>
</div>

