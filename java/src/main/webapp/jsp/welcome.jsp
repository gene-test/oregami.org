<%@ include file="/WEB-INF/taglibs.jspp"%>
<stripes:layout-render name="/jsp/layout/main.jsp" title="${sitename}">
	<stripes:layout-component name="contents">

		<h2>
			<fmt:message key="welcomeTitle" />
		</h2>

		<fmt:message key="welcomeMessage" />

	</stripes:layout-component>
</stripes:layout-render>
