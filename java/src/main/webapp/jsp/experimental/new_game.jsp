<%@ include file="/WEB-INF/taglibs.jspp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="${contextPath}/css/style.css" />
<link rel="stylesheet" href="${contextPath}/css/easy-accordion.css" />
<script src="${contextPath}/js/jquery-1.7.1.min.js"></script>
<title>New Game</title>

<script type="text/javascript">
$(document).ready(function() {
});
</script> 


</head>

<body>

<%@ include file="/loginbox.jsp"%>

<stripes:form beanclass="org.oregami.action.experimental.NewGameActionBean">
<table class="form">
	<tr>
		<td>
			mainTitle: <stripes:text name="game.mainTitle" class="required"/> 
		</td>
		<td>
			<stripes:errors field="game.mainTitle"></stripes:errors>
		</td>
	</tr>
	<tr>
		<td>
			description: <stripes:text name="game.description"/>
		</td>
	</tr>
	
	<tr>
		<td colspan="1">
			<stripes:submit name="update"><fmt:message key="aktualisieren"/></stripes:submit>
		</td>
	</tr>

<!-- 
<c:if test="${actionBean.game != null}">	
	<br/>
	<stripes:submit name="save">Speichern</stripes:submit>
</c:if>
 -->
</table>
</stripes:form>


<hr/>
<textarea style="width:100%;height:100px;">${actionBean.debugString}</textarea>


</body>
</html>
