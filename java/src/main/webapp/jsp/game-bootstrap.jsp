<%@ include file="/WEB-INF/taglibs.jspp"%>
<stripes:layout-render name="/jsp/layout/main.jsp" title="${actionBean.loadedGame.tagLineDescription}">

<stripes:layout-component name="html_head">
	<link rel="stylesheet" href="${contextPath}/css/jquery.h5-lightbox.css">
	<script src="${contextPath}/js/jquery.h5-lightbox.js"></script>
</stripes:layout-component>



<stripes:layout-component name="contents">

	<h3>${actionBean.loadedGame.mainTitle}</h3>
	
	<span class="game_subtitle"> <strong>Available titles:</strong><c:forEach
			items="${actionBean.loadedGame.gameTitleList}" var="gameTitle"
			varStatus="status">
				${gameTitle.title}<c:if test="${not status.last}">, </c:if>
		</c:forEach> </span>
	<br />
	
	<span class="game_subtitle"><strong>Tag line description:</strong> ${actionBean.loadedGame.tagLineDescription}</span>
	<br/>
	
	<span class="game_subtitle"><strong>Description:</strong> ${actionBean.loadedGame.description}</span>
	<br/>
	
	<br/>
	
	<div class="tabbable">
		<ul class="nav nav-tabs" style="font-weight: bold;">
			<c:forEach items="${actionBean.loadedGame.systemToReleaseGroupMap}" var="mapEntry" varStatus="status">
				<c:set var="active" value="" />
				<li ${status.first ? 'class="active"' : ''}><a href="#tab${status.count}" data-toggle="tab">${mapEntry.key}</a></li>
			</c:forEach>
		</ul>
			<div class="tab-content">
				<c:forEach items="${actionBean.loadedGame.systemToReleaseGroupMap}"
					var="mapEntry" varStatus="systemStatus">
					<div class="tab-pane ${systemStatus.first ? 'active' : ''}" id="tab${systemStatus.count}">

						<c:forEach items="${mapEntry.value}" var="releaseGroup" varStatus="releaseGroupStatus">
							<table class="table">
								<tr>
									<td>
										Release Group: ${releaseGroup.name} 
										<span style="font-size: 80%;">${releaseGroup.releaseGroupType}</span>
										
										<c:if test="${!empty releaseGroup.screenshotList}">
											<div class="accordion" id="accordion_screenshot${systemStatus.count}_${releaseGroupStatus.count}">
												<div class="accordion-group">
													<div class="accordion-heading">
														<a class="accordion-toggle" data-toggle="collapse"
															data-parent="#accordion_screenshot${systemStatus.count}_${releaseGroupStatus.count}" href="#collapse_screenshot${systemStatus.count}_${releaseGroupStatus.count}">
															Screenshots</a>
													</div>
													<div id="collapse_screenshot${systemStatus.count}_${releaseGroupStatus.count}" class="accordion-body collapse">
														<div class="accordion-inner">
															<c:forEach items="${releaseGroup.screenshotList}" var="screenshot" varStatus="screenshotStatus">
																<c:if test="${(screenshotStatus.index)%6==0  && status.index>0}">
																	<br/>
																</c:if>
																<img
																	style="width:100px; padding: 2pt;"
																	src="${contextPath}/images/screenshots/${screenshot.fileName}"
																	data-large-src="${contextPath}/images/screenshots/${screenshot.fileName}"
																	title="${screenshot.description} (${screenshot.screenshotType}) [${screenshot.fileName}]"
																>
															</c:forEach>
														</div>
													</div>												
												</div>
											</div>
										</c:if>	
																				
									</td>
								</tr>
								<tr>
									<td>
									
									<div class="accordion" id="accordion_system${systemStatus.count}">
										<div class="accordion-group">
											<c:forEach items="${releaseGroup.releaseList}" var="release" varStatus="releaseStatus">
												<div class="accordion-heading">
													<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_system${systemStatus.count}" href="#collapse_system${systemStatus.count}_release${releaseStatus.count}">
														Release: ${release.description}, ${release.distribution}  </a>
												</div>
												<div id="collapse_system${systemStatus.count}_release${releaseStatus.count}" class="accordion-body collapse">
													<div class="accordion-inner">
														<c:if test="${!empty release.countryReleaseList}">
															<c:forEach
																items="${release.countryReleaseList}" var="country" varStatus="countryStatus">
																${country.country}: ${country.yearOfRelease}
																<c:if test="${not countryStatus.last}">, </c:if>
															</c:forEach>													
															<br/>
														</c:if>
													
														<c:if test="${!empty release.photoList}">
															Photos (${fn:length(release.photoList)})
															<br/>
															<c:forEach items="${release.photoList}" var="photo" varStatus="photoStatus">
																<c:if test="${(photoStatus.index)%6==0  && status.index>0}">
																	<br/>
																</c:if>
																<img
																	style="width:100px; padding: 2pt;"
																	src="${contextPath}/images/photos/${photo.fileName}"
																	data-large-src="${contextPath}/images/photos/${photo.fileName}"
																	title="${photo.description} (${photo.type}) [${photo.fileName}]"
																>
															</c:forEach>
														</c:if>	
														<c:if test="${!empty release.screenshotList}">
															Screenshots (${fn:length(release.screenshotList)})
															<br/>
															<c:forEach items="${release.screenshotList}" var="screenshot" varStatus="screenshotStatus">
																<c:if test="${(screenshotStatus.index)%6==0  && status.index>0}">
																	<br/>
																</c:if>
																<img
																	style="width:100px; padding: 2pt;"
																	src="${contextPath}/images/screenshots/${screenshot.fileName}"
																	data-large-src="${contextPath}/images/screenshots/${screenshot.fileName}"
																	title="${screenshot.description} (${screenshot.screenshotType}) [${screenshot.fileName}]"
																>
															</c:forEach>
														</c:if>	
													</div>
												</div>
											</c:forEach>
										</div>
									</div>

<!-- 
										<div class="accordion" id="accordion2">
											<div class="accordion-group">
												<div class="accordion-heading">
													<a class="accordion-toggle" data-toggle="collapse"
														data-parent="#accordion2" href="#collapseOne">
														Collapsible Group Item #1 </a>
												</div>
												<div id="collapseOne" class="accordion-body collapse in">
													<div class="accordion-inner">Anim pariatur cliche...
													</div>
												</div>
											</div>
											<div class="accordion-group">
												<div class="accordion-heading">
													<a class="accordion-toggle" data-toggle="collapse"
														data-parent="#accordion2" href="#collapseTwo">
														Collapsible Group Item #2 </a>
												</div>
												<div id="collapseTwo" class="accordion-body collapse">
													<div class="accordion-inner">Anim pariatur cliche...
													</div>
												</div>
											</div>
										</div> 
 -->										
										
<!-- 
										<table class="table-striped">
											<c:forEach items="${releaseGroup.releaseList}" var="release">
												<tr>
													<td><strong>Release:</strong> ${release.description},
														${release.distribution} <c:forEach
															items="${release.countryReleaseList}" var="country"
															varStatus="status">
															<c:if test="${status.first}">
																<td style='padding-left: 10px;'>
															</c:if>
														${country.country}: ${country.yearOfRelease}
														<c:if test="${not status.last}">, </c:if>
														</c:forEach>
													</td>
												</tr>
												
												<c:if test="${!empty release.photoList}">
													Photos (${fn:length(release.photoList)})
													<br/>
													<c:forEach items="${release.photoList}" var="photo" varStatus="status">
														<c:if test="${(status.index)%6==0  && status.index>0}">
															<br/>
														</c:if>

														<img
															xonmouseover="showScreenshot('${contextPath}/images/photos/${photo.fileName}')"
															xonmouseout="hideScreenshot('${contextPath}/images/photos/${photo.fileName}')"
															style="width:100px; padding: 2pt;"
															src="${contextPath}/images/photos/${photo.fileName}"
															title="${photo.description} (${photo.type}) [${photo.fileName}]"
														>

													</c:forEach>
												</c:if>												
											</c:forEach>
										</table>
 -->										
										
										
									</td>
								</tr>
							</table>
						</c:forEach>

					</div>
				</c:forEach>

			</div>
		</div>
	
	<br/>
	<!-- 
	<div class="tabbable">
		<ul class="nav nav-tabs">
			<li class="active"><a href="#tabb1" data-toggle="tab">Section
					1</a></li>
			<li><a href="#tabb2" data-toggle="tab">Section 2</a></li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane active" id="tabb1">
				<p>I'm in Section 1.</p>
			</div>
			<div class="tab-pane" id="tabb2">
				<p>Howdy, I'm in Section 2.</p>
			</div>
		</div>
	</div>
 -->
 
 <!-- 
		<c:forEach items="${actionBean.loadedGame.systemToReleaseGroupMap}" var="mapEntry" varStatus="status">
			<h4>${mapEntry.key}</h4>
			
		<c:forEach items="${mapEntry.value}" var="releaseGroup">
			<table class="table">
				<tr>
					<td><strong>Release Group:</strong> 
						${releaseGroup.name} <span style="font-size: 80%;">${releaseGroup.releaseGroupType}</span>
					</td>
				</tr>
				<tr>
					<td>
						<table class="table-striped">
							<c:forEach items="${releaseGroup.releaseList}" var="release">
								<tr>
									<td>
										<strong>Release:</strong>
										${release.description}, ${release.distribution}

										<c:forEach items="${release.countryReleaseList}" var="country" varStatus="status">
											<c:if test="${status.first}">
												<td style='padding-left: 10px;'>
											</c:if>
											${country.country}: ${country.yearOfRelease}
											<c:if test="${not status.last}">, </c:if>
										</c:forEach>
									</td>
								</tr>
							</c:forEach>
						</table></td>
				</tr>
			</table>
		</c:forEach>			
			
		</c:forEach>
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
 -->

</stripes:layout-component>
</stripes:layout-render>
