# Jquery-SVG-HTML-Lines
Drawing Lines between DIV elements by using SVG  and Jquery plugin
This is a POC project for Drawing Lines between multiple DIV elments by using SVG and JQUERY Plugin (jquery.html-svg-connect). The beauty of this plugin is, no need to define the positions of arrows, we can draw lines by using DIV id element like source and destination. This is also called as Paths. Look at the below code,
```js
path : {
  start : "#<Source DIV Id>",
  end : "#<Destination DIV Id>"
}
```
If we have multiple paths to define, we can use array[] declaration with the separation of coma(,). Look at the below code,
```js
paths : [{
  start : "#<Source DIV Id>",
  end : "#<Destination DIV Id>"
},
{
  start : "#<Source DIV Id>",
  end : "#<Destination DIV Id>"
},
{
  start : "#<Source DIV Id>",
  end : "#<Destination DIV Id>"
}]
```
To connect this paths, we will use the function of HTMLSVGconnect().
```js
$("#svgContainer").HTMLSVGconnect({

});
```
```jquery.html-svg-connect.js``` is part of the ```jQuery-Plugin-To-Connect-HTML-Elements-with-Lines-HTML-SVG-Connect``` peoject which you can download from the online or you can reuse the uploaded file. I have declared the downloaded ```jquery.html-svg-connect.js``` file under the package of ```WebContent/js/jquery.html-svg-connect.js``` and we need link the same in our JSP/HTML file.

Here is the complete code of my JSP page which I have linked few DIV's.
```jsp
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
			paths : [{
				start : "#red",
				end : "#green",
				strokeWidth : 5
			},
			{
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
			}]
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
```
As per my source code you will see the output like below,
![DrawLines](https://github.com/Nallamachu/Jquery-SVG-HTML-Lines/blob/master/drawing-line-between-div-elements.PNG)
