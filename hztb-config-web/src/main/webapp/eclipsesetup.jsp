<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<title>hztb - Eclipse Setup process</title>
<link rel="stylesheet" href="styles/styles.css" type="text/css"
	media="screen">
</head>
<body>

	<div id="content" class="container">
		<br />
		<h1>Eclipse setup process</h1>

		<div class="section grid grid15">
			<h2>Contents</h2>
			<ul>
				<li><a href="#overview">1.Overview</a></li>
				<li><a href="#download">2.Download Eclipse MARS</a></li>
				<li><a href="#gradle">3.Add Gradle Plugin to Eclipse</a></li>
				<li><a href="#import">4.Import hztb project into Eclipse</a></li>
			</ul>
		</div>

		<div class="section grid grid15">

			<a id="overview">
				<h2>1.Overview</h2>
				<p>This page explains the steps that are required to configure
					our web services project in Eclipse</p>

				<p style="color: blue;">Before coming to this page, you need to
					complete the git cloning for hztb repository as explained in
					previous steps</p>
			</a>

		</div>

		<div class="section grid grid15">

			<a id="download">
				<h2>2.Download Eclipse MARS</h2>
				<p>download eclipse mars from https://eclipse.org/mars/</p>
				<p>run the down loaded executable and opt the default options to
					complete the installation</p>
				<p>launch Eclipse</p>
			</a>

		</div>

		<div class="section grid grid15">

			<a id="gradle">
				<h2>3.Add Gradle Plugin to Eclipse</h2>
				<p>Add gradle plugin into eclipse refer to:
					http://www.vogella.com/tutorials/EclipseGradle/article.html
				<p style="color: blue;">Note: New versions of eclipse have
					gradle plugin by default. Restart eclipse after adding the gradle
					plugin</p>
			</a>

		</div>


		<div class="section grid grid15">

			<a id="import">
				<h2>4.Import hztb project into Eclipse</h2>
				<p>Import the hztb project into Eclipse. File -> Import ->
					Gradle STS/BuildShip Project</p>
			</a>

		</div>


	</div>
</body>
</html>


