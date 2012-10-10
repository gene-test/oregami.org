<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="stripes"
	uri="http://stripes.sourceforge.net/stripes.tld"%>

<stripes:layout-definition>
<!DOCTYPE html>
	<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<!-- Bootstrap -->
		<link href="${contextPath}/css/bootstrap.min.css" rel="stylesheet">
		 <script src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="${contextPath}/js/bootstrap.min.js"></script>
		
		<link rel="stylesheet" href="${contextPath}/css/style.css" />
		
		<title>${title}</title>
		<stripes:layout-component name="html_head" />
	</head>

	<body>
		<div class="container">
			<stripes:layout-component name="header">
				<jsp:include page="/jsp/layout/_header.jsp" />
			</stripes:layout-component>

		<stripes:layout-component name="contents" />
		</div>

	<stripes:layout-component name="footer">
		<jsp:include page="/jsp/layout/_footer.jsp" />
	</stripes:layout-component>
</body>
	</html>
</stripes:layout-definition>