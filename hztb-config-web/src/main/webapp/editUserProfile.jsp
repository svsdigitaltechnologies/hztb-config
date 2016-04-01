<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<title>hztb - Webservices API</title>
<link rel="stylesheet" href="styles/styles.css" type="text/css"
	media="screen">
</head>
<body>

	<div id="content" class="container">
		<br />

		<h1>Edit User Profile API</h1>
		<div align="right">
			<a href="index.html">Home</a>
		</div>

		<div class="section grid grid15">
			<a id="editUserProfile">
				<h2>1. Request Details</h2>
				<p style="color: blue;">This API is used to update a user
					profile</p>
				<table border="1" style="border-collapse: collapse">
					<tr>
						<th>Method Name</th>
						<th>Request URI</th>
						<th>Http Method</th>
						<th>consumes</th>
						<th>produces</th>
						<th>Input</th>
						<th>Output</th>
					</tr>
					<tr>
						<td>updateUserProfile</td>
						<td>.../user/updateUserProfile</td>
						<td>POST</td>
						<td>application/json</td>
						<td>application/json</td>
						<td>UserRequest</td>
						<td>UserResponse</td>
					</tr>
				</table>
				<h3>1.1 Request Validation</h3>
				<p>The request must be validated in the following order. If an
					error is encountered validation will cease and an error response
					returned.</p>
				<p>1. HTTP Header Validation.</p>
				<p>2. HTTP Request Entity Validation(Payload).</p>

				<h3>1.2 Request Entity</h3>
				<p>The request entity is presented as a JSON document.</p>
				<h3>1.3 Example JSON Document</h3>
				<p>
				<pre>
{
  	"phoneNumber": 2102102102,
  	"name": "John Doe",
  	"emailId": "johndoe@gmail.com",
    "photo": "AAECAwQFBg=="
}
				</pre>
				</p>

				<h3>1.4 Document Field Definitions</h3>
				<table border="1" style="border-collapse: collapse">
					<tr>
						<th>Field</th>
						<th>Required</th>
						<th>Data Type</th>
						<th>Length</th>
						<th>Description</th>
					</tr>
					<tr>
						<td>phoneNumber</td>
						<td>Mandatory</td>
						<td>String</td>
						<td><=15</td>
						<td>Phone Number</td>
					</tr>
					<tr>
						<td>name</td>
						<td>Optional</td>
						<td>String</td>
						<td><=30</td>
						<td>Name of the user</td>
					</tr>
					<tr>
						<td>emailId</td>
						<td>Optional</td>
						<td>String</td>
						<td><=30</td>
						<td>Email Id</td>
					</tr>
					<tr>
						<td>photo</td>
						<td>Optional</td>
						<td>ByteArray</td>
						<td>2MB</td>
						<td>Profile Pic</td>
					</tr>
				</table>

				<h2>2. Response Details</h2>
				<h3>2.1 Status Codes</h3>
				<p>See Common Conventions.</p>
				<h3>2.2 HTTP headers</h3>
				<p>See Common Conventions</p>
				<h3>2.3 Status Codes</h3>
				<p>See Common Conventions</p>
				<h3>2.4 Service Entity</h3>
				<p>The service entity is presented as a JSON document.</p>
				<h3>2.5 Example Service Entity JSON Document</h3>
				<p>
				<pre>
{
	"phoneNumber": "2102102102"
}
				</pre>
				</p>
				<h3>2.6 Document Field Definitions</h3>
				<table border="1" style="border-collapse: collapse">
					<tr>
						<th>Field</th>
						<th>Required</th>
						<th>Data Type</th>
						<th>Length</th>
						<th>Description</th>
					</tr>
					<tr>
						<td>phoneNumber</td>
						<td>Mandatory</td>
						<td>String</td>
						<td><=15</td>
						<td>Phone Number</td>
					</tr>
				</table>

			</a>


		</div>
	</div>
</body>
</html>


