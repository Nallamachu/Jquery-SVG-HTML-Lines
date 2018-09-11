<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery HTML SVG Connect Plugin Demo</title>
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css"
	rel="stylesheet" type="text/css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.html-svg-connect.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$("#svgContainer").HTMLSVGconnect({
			stroke : "#000",
			strokeWidth : 8,
			orientation : "auto",
			paths : [ {
				start : "#red",
				end : "#aqua",
				strokeWidth : 5
			}, {
				start : "#purple",
				end : "#green",
				strokeWidth : 5
			}, {
				start : "#purple",
				end : "#aqua",
				strokeWidth : 5
			} , {
				start : "#aqua",
				end : "#green",
				strokeWidth : 5
			} ]
		});
	});
</script>
<style type="text/css">
#svgContainer {
	position: absolute;
}

.aqua {
	width: 5em;
	height: 5em;
	margin-left: 10%;
	background-color: aqua;
	margin-left: 10%;
}

.red {
	width: 6em;
	height: 4em;
	margin-left: 40%;
	padding: 4em 3em;
	background-color: red;
	height: 4em;
	margin-left: 40%;
	padding: 4em 3em;
}

.green {
	width: 5em;
	height: 7em;
	margin-top: 2em;
	margin-left: 70%;
	background-color: green;
	height: 7em;
	margin-top: 2em;
}

.purple {
	width: 9em;
	height: 5em;
	background-color: purple;
}
</style>
</head>
<body>
	<div id="svgContainer"></div>
	<div id="aqua" class="aqua"></div>
	<div id="red" class="red"></div>
	<div id="green" class="green"></div>
	<div id="purple" class="purple"></div>
</body>
</html>
