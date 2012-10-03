<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="stripes"
	uri="http://stripes.sourceforge.net/stripes.tld"%>

<stripes:layout-definition>
	<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<link rel="stylesheet" href="${contextPath}/css/style.css" />
		<title></title>
		<stripes:layout-component name="html_head" />
	</head>
	<body>
	<stripes:layout-component name="header">
		<jsp:include page="/jsp/layout/_header.jsp" />
	</stripes:layout-component>

	<div class="content">
		<stripes:layout-component name="contents" />
	</div>

	<stripes:layout-component name="footer">
		<jsp:include page="/jsp/layout/_footer.jsp" />
	</stripes:layout-component>
</body>
	</html>
</stripes:layout-definition>