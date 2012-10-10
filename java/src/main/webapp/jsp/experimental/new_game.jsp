<%@ include file="/WEB-INF/taglibs.jspp"%>

<stripes:layout-render name="/jsp/layout/main.jsp">

<stripes:layout-component name="html_head">
<link rel="stylesheet" href="${contextPath}/css/easy-accordion.css" />
<script src="${contextPath}/js/jquery-1.7.1.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
});
</script> 
</stripes:layout-component>


<stripes:layout-component name="contents">

<div class="row well">

<div class="span6">
<stripes:form class="form-horizontal" beanclass="org.oregami.action.experimental.NewGameActionBean">
	<div class="control-group">
		<label class="control-label">mainTitle:</label>
		<div class="controls">
			<stripes:text name="game.mainTitle" class="required"/>
			<br/>
			<stripes:errors field="game.mainTitle"></stripes:errors>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label">description:</label>
		<div class="controls">
			<stripes:text name="game.description" class="required"/>
		</div>
		<stripes:errors field="game.description"></stripes:errors>
	</div>
	<div class="control-group">
		<div class="controls">
			<!-- <button type="submit" class="btn"><fmt:message key="aktualisieren"/></button> -->
			<stripes:submit class="btn" name="update"><fmt:message key="aktualisieren"/></stripes:submit>
		</div>
	</div>
	<!--<stripes:submit name="update"><fmt:message key="aktualisieren"/></stripes:submit>-->
</stripes:form>
</div>

</div>

<hr/>
<textarea style="width:100%;height:100px;">${actionBean.debugString}</textarea>

</stripes:layout-component>
</stripes:layout-render>