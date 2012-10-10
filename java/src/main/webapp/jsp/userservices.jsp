<%@ include file="/WEB-INF/taglibs.jspp"%>
<c:set var="title"><fmt:message key="userservicesTitle" /></c:set>
<stripes:layout-render name="/jsp/layout/main.jsp" title="${title}">

	<stripes:layout-component name="contents">

		<h2>
			<fmt:message key="userservicesTitle" />
		</h2>

		<p class="text-warning">
			<fmt:message key="comingSoon" />
		</p>
		
<%-- 		<stripes:link href="/register">register</stripes:link> --%>

	</stripes:layout-component>
</stripes:layout-render>
