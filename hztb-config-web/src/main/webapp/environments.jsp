<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<title>hztb - environments</title>
<link rel="stylesheet" href="styles/styles.css" type="text/css"
	media="screen">
</head>
<body>

	<div id="content" class="container">
		<br />
		<h1>Environments</h1>

		<div class="section grid grid15">
			<h2>Contents</h2>
			<ul>
				<li><a href="#infrastructure">1.Infrastructure</a></li>
				<li><a href="#dev">2.Dev</a></li>
				<li><a href="#qa">3.QA</a></li>
				<li><a href="#bm">4.Bench Marking</a></li>
				<li><a href="#prod">5.Production</a></li>
			</ul>
		</div>

		<div class="section grid grid15">

			<a id="infrastructure">
				<h2>Infrastructure</h2>
				<h4>Git Hub - Source Control</h4>
				<ul>
					<li>Web Services -
						https://github.com/svsdigitaltechnologies/hztb</li>
					<li>Configuration -
						https://github.com/svsdigitaltechnologies/hztb-config</li>
					<li>Android UI</li>
					<li>iOS UI</li>
				</ul>
			</a>

		</div>


		<div class="section grid grid15">

			<a id="dev">
				<h2>Dev</h2>
				<h4>Applications</h4>
				<table border="1" BORDERCOLOR="800080">
					<tr>
						<th>App Name</th>
						<th>Type</th>
						<th>URL</th>
						<th>Port</th>
					</tr>
					<tbody>
						<tr>
							<td>hztb webservices</td>
							<td>url</td>
							<td>http://hztb-dev.us-east-1.elasticbeanstalk.com/</td>
							<td></td>
						</tr>
						<tr>
							<td>hztb webservices</td>
							<td>Tomcat</td>
							<td>ec2-user@ec2-52-200-127-89.compute-1.amazonaws.com/</td>
							<td>22</td>
						</tr>
					</tbody>
				</table>

				<h4>Database</h4>
				<table border="1" BORDERCOLOR="800080">
					<tr>
						<th>Database Name</th>
						<th>Schema</th>
						<th>Host</th>
						<th>Port</th>
						<th>User Id</th>
					</tr>
					<tbody>
						<tr>
							<td>hztb dev</td>
							<td>ebdb</td>
							<td>aa1cei5qizt3m3t.cpfd8ctlatld.us-east-1.rds.amazonaws.com</td>
							<td>3306</td>
							<td>hztbdev</td>
						</tr>
					</tbody>
				</table>

			</a>
		</div>
		<div class="section grid grid15">

			<a id="qa">
				<h2>QA</h2>
				<h4>Applications</h4>
				<table border="1" BORDERCOLOR="800080">
					<tr>
						<th>App Name</th>
						<th>Type</th>
						<th>URL</th>
						<th>Port</th>
					</tr>
					<tbody>
						<tr>
							<td>hztb webservices</td>
							<td>url</td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>hztb webservices</td>
							<td>Tomcat</td>
							<td></td>
							<td>22</td>
						</tr>
					</tbody>


				</table>

				<h4>Database</h4>
				<table border="1" BORDERCOLOR="800080">
					<tr>
						<th>Database Name</th>
						<th>Schema</th>
						<th>Host</th>
						<th>Port</th>
						<th>User Id</th>
					</tr>
					<tbody>
						<tr>
							<td>hztb dev</td>
							<td>ebdb</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>

			</a>
		</div>
		<div class="section grid grid15">

			<a id="bm">
				<h2>Bench Marking</h2>
				<h4>Applications</h4>
				<table border="1" BORDERCOLOR="800080">
					<tr>
						<th>App Name</th>
						<th>Type</th>
						<th>URL</th>
						<th>Port</th>
					</tr>
					<tbody>
						<tr>
							<td>hztb webservices</td>
							<td>url</td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>hztb webservices</td>
							<td>Tomcat</td>
							<td></td>
							<td>22</td>
						</tr>
					</tbody>


				</table>

				<h4>Database</h4>
				<table border="1" BORDERCOLOR="800080">
					<tr>
						<th>Database Name</th>
						<th>Schema</th>
						<th>Host</th>
						<th>Port</th>
						<th>User Id</th>
					</tr>
					<tbody>
						<tr>
							<td>hztb bench marking</td>
							<td>ebdb</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>

			</a>
		</div>
		<div class="section grid grid15">

			<a id="prod">
				<h2>Production</h2>
				<h4>Applications</h4>
				<table border="1" BORDERCOLOR="800080">
					<tr>
						<th>App Name</th>
						<th>Type</th>
						<th>URL</th>
						<th>Port</th>
					</tr>
					<tbody>
						<tr>
							<td>hztb webservices</td>
							<td>url</td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>hztb webservices</td>
							<td>Tomcat</td>
							<td></td>
							<td>22</td>
						</tr>
					</tbody>


				</table>

				<h4>Database</h4>
				<table border="1" BORDERCOLOR="800080">
					<tr>
						<th>Database Name</th>
						<th>Schema</th>
						<th>Host</th>
						<th>Port</th>
						<th>User Id</th>
					</tr>
					<tbody>
						<tr>
							<td>hztb Prod</td>
							<td>ebdb</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>

			</a>
		</div>


	</div>
</body>
</html>