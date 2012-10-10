<%@ include file="/WEB-INF/taglibs.jspp"%>
<stripes:layout-render name="/jsp/layout/main.jsp" title="${actionBean.loadedGame.mainTitle}">
<stripes:layout-component name="contents">

<!-- 
	<ul class="breadcrumb">
		<li><a href="${pageContext.request.contextPath}/">Home</a> <span class="divider">/</span></li>
		<li class="active">Bootstrap-View: ${actionBean.loadedGame.mainTitle}</li>
	</ul>
 -->
		<span class="game_header">${actionBean.loadedGame.mainTitle}</span>
	<span style="font-size: 60%;">${actionBean.loadedGame.description}</span>
	<br />
	<span class="game_subtitle"> <c:forEach
			items="${actionBean.loadedGame.titleList}" var="title"
			varStatus="status">
				${title.name}<c:if test="${not status.last}">, </c:if>
		</c:forEach> </span>
	<br /><br />
	
	
<table>
<tr><td valign="top">
	<div id="accordion">
	<dl>
		<c:forEach items="${actionBean.loadedGame.systemToReleaseGroupMap}" var="mapEntry" varStatus="status">
			<dt>${mapEntry.key}</dt>
			<dd>
			<!-- <img src="${contextPath}/text/${mapEntry.key}"/>-->
			
		<c:forEach items="${mapEntry.value}" var="releaseGroup">
			<table border="0" cellpadding="0" cellspacing="1" class="releaseGroup">
				<tr>
					<td class="game_subtitle">
						${releaseGroup.name} <span style="font-size: 80%;">${releaseGroup.releaseGroupType}</span>
					</td>
				</tr>
				<tr>
					<td>
						<table class="release" cellpadding="0" cellspacing="1">
							<c:forEach items="${releaseGroup.releaseList}" var="release">
								<tr>
									<td>${release.description}, ${release.distribution}</td>

									<c:forEach items="${release.countryReleaseList}" var="country" varStatus="status">
										<c:if test="${status.first}">
											<td style='padding-left: 10px;'>
										</c:if>
								${country.country}: ${country.yearOfRelease}
								<c:if test="${not status.last}">, </c:if>
										<c:if test="${status.last}">
											</td>
										</c:if>
									</c:forEach>
								</tr>
							</c:forEach>
						</table></td>
				</tr>
			</table>
		</c:forEach>			
			
			
			</dd>
		</c:forEach>
	</dl>
	</div>
</td>
</tr>
<tr>
<td valign="top">

	<span class="screenshots">Screenshots 2: <br/>
		<c:forEach
			items="${actionBean.loadedGame.screenshotList}" var="screenshot"
			varStatus="status">
			<img src="${contextPath}/images/screenshots/${screenshot.fileName}"
				title="${screenshot.description}" />
		</c:forEach>
	</span>

</td>
</tr>
</table>

</stripes:layout-component>
</stripes:layout-render>
