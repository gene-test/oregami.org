<%@ include file="/WEB-INF/taglibs.jspp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="${contextPath}/css/style.css" />
<!--  <link rel="stylesheet" href="${contextPath}/css/tabs-accordion-horizontal.css" />-->
<script src="${contextPath}/js/jquery-1.7.1.min.js"></script>
<script src="${contextPath}/js/jquery.easyAccordion.js"></script>
<title>Game: ${actionBean.loadedGame.mainTitle}</title>
<style type="text/css">
		
		.easy-accordion{display:block;position:relative;overflow:hidden;padding:0;margin:0}
		.easy-accordion dt,.easy-accordion dd{margin:0;padding:0}
		.easy-accordion dt,.easy-accordion dd{position:absolute}
		.easy-accordion dt{margin-bottom:0;margin-left:0;z-index:5;/* Safari */ -webkit-transform: rotate(-90deg); /* Firefox */ -moz-transform: rotate(-90deg);-moz-transform-origin: 20px 0px;  /* Internet Explorer */ filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=3);cursor:pointer;}
		.easy-accordion dd{z-index:1;opacity:0;overflow:hidden}
		.easy-accordion dd.active{opacity:1;}
		.easy-accordion dd.no-more-active{z-index:2;opacity:1}
		.easy-accordion dd.active{z-index:3}
		.easy-accordion dd.plus{z-index:4}
		.easy-accordion .slide-number{position:absolute;bottom:0;left:10px;font-weight:normal;font-size:1.1em;/* Safari */ -webkit-transform: rotate(90deg); /* Firefox */ -moz-transform: rotate(90deg);  /* Internet Explorer */ filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=1);}

		 
		#accordion{width:700px;height:245px;padding:3px;background:#fff;border:1px solid #b5c9e8}
		#accordion h2{font-size:2.5em;margin-top:10px}
		#accordion dl{width:700px;height:245px}	
		
		#accordion dt{height:25px;text-align:left;padding:10px 10px 1px 10px;font-size:14px;font-weight:bold;font-family: Tahoma, Geneva, sans-serif;text-transform:uppercase;letter-spacing:1px;color:#26526c;
						/*background:#fff url(${contextPath}/images/accordion/slide-title-inactive-2.jpg) 0 0 no-repeat;*/

background: rgb(238,238,238); /* Old browsers */
background: -moz-linear-gradient(top,  rgba(238,238,238,1) 0%, rgba(238,238,238,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(238,238,238,1)), color-stop(100%,rgba(238,238,238,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  rgba(238,238,238,1) 0%,rgba(238,238,238,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  rgba(238,238,238,1) 0%,rgba(238,238,238,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  rgba(238,238,238,1) 0%,rgba(238,238,238,1) 100%); /* IE10+ */
background: linear-gradient(top,  rgba(238,238,238,1) 0%,rgba(238,238,238,1) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#eeeeee', endColorstr='#eeeeee',GradientType=0 ); /* IE6-9 */
border-top: 1px solid white;
border-bottom: 1px solid white;
						
						}
						
		#accordion dt.active{cursor:pointer;color:#fff;
		/*background:#fff url(${contextPath}/images/accordion/slide-title-active-2.jpg) 0 0 no-repeat*/
background: rgb(179,220,237); /* Old browsers */
background: -moz-linear-gradient(top,  rgba(179,220,237,1) 0%, rgba(41,184,229,1) 50%, rgba(188,224,238,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(179,220,237,1)), color-stop(50%,rgba(41,184,229,1)), color-stop(100%,rgba(188,224,238,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  rgba(179,220,237,1) 0%,rgba(41,184,229,1) 50%,rgba(188,224,238,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  rgba(179,220,237,1) 0%,rgba(41,184,229,1) 50%,rgba(188,224,238,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  rgba(179,220,237,1) 0%,rgba(41,184,229,1) 50%,rgba(188,224,238,1) 100%); /* IE10+ */
background: linear-gradient(top,  rgba(179,220,237,1) 0%,rgba(41,184,229,1) 50%,rgba(188,224,238,1) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#b3dced', endColorstr='#bce0ee',GradientType=0 ); /* IE6-9 */

		
		}
		#accordion dt.hover{color:#68889b;}
		#accordion dt.active.hover{color:#fff}
		
		
		#accordion dd{
		/*background:url(${contextPath}/images/accordion/slide.jpg) bottom left repeat-x;*/

background: rgb(254,255,255); /* Old browsers */
background: -moz-linear-gradient(top,  rgba(254,255,255,1) 0%, rgba(210,235,249,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(254,255,255,1)), color-stop(100%,rgba(210,235,249,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  rgba(254,255,255,1) 0%,rgba(210,235,249,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  rgba(254,255,255,1) 0%,rgba(210,235,249,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  rgba(254,255,255,1) 0%,rgba(210,235,249,1) 100%); /* IE10+ */
background: linear-gradient(top,  rgba(254,255,255,1) 0%,rgba(210,235,249,1) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#feffff', endColorstr='#d2ebf9',GradientType=0 ); /* IE6-9 */

		padding:15px;
		font-size:12px;
		border:1px solid #dbe9ea;border-left:0;margin-right:3px}
		#accordion .slide-number{color:#68889b;left:10px;font-weight:bold}
		#accordion .active .slide-number{color:#fff}
		#accordion a{color:#68889b}
		#accordion dd img{float:right;margin:0 0 0 30px;position:relative;top:-20px}
</style>
<script type="text/javascript">
$(document).ready(function() {
	$('#accordion').easyAccordion({ 
		autoStart: false,
		slideNum: false
	});	
});
</script> 


</head>

<body>
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
<!-- 
	<span class="screenshots">Screenshots: <br/>
		<c:forEach
			items="${actionBean.loadedGame.screenshotList}" var="screenshot"
			varStatus="status">
			<img src="${contextPath}/images/screenshots/${screenshot.fileName}"
				title="${screenshot.description}" />
		</c:forEach>
	</span>
 -->
</td>
</tr>
</table>


<%@ include file="/loginbox.jsp"%>

</body>
</html>
