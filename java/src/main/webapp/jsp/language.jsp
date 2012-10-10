<%@ include file="/WEB-INF/taglibs.jspp"%>
<stripes:layout-render name="/jsp/layout/main.jsp" title="${sitename}">
	<stripes:layout-component name="contents">

		<h2>
			<fmt:message key="navLanguage" />
		</h2>

		<c:if test="${actionBean.context.locale=='de'}">
			<stripes:link href="" class="btn btn-success">
				<stripes:param name="locale" value="de" />
				de
			</stripes:link>
			<stripes:link href="" class="btn">
				<stripes:param name="locale" value="en" />
				en
			</stripes:link>			
		</c:if>
				
		<c:if test="${actionBean.context.locale=='en'}">
			<stripes:link href="" class="btn">
				<stripes:param name="locale" value="de" />
				de
			</stripes:link>	
			<stripes:link href="" class="btn btn-success">
				<stripes:param name="locale" value="en" />
				en
			</stripes:link>
		</c:if>
				
	</stripes:layout-component>
</stripes:layout-render>
