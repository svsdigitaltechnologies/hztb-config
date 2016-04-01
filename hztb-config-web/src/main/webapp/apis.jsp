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
		<h1>Webservices API</h1>

		<div align="right"><a href="index.html">Home</a></div>
		<div class="section grid grid15">
			<h2>Common Conventions in all API's</h2>
			<ul>
				<li><a href="#requests">Requests</a></li>
				<li><a href="#responses">Responses</a></li>
				<li><a href="#errorResponse">Error Response Entity</a></li>
				<li><a href="#errorCodes">Error Response Codes</a></li>



			</ul>
		</div>

		<div class="section grid grid15">
			<h2>User Related API's</h2>
			<ul>
				<li><a href="registerUser.jsp">1.registerUser</a></li>
				<li><a href="validateOTP.jsp">2.validate OTP</a></li>
				<li><a href="getOTP.jsp">3.get OTP</a></li>
				<li><a href="getUserProfile.jsp">4.getUserProfile</a></li>
				<li><a href="editUserProfile.jsp">5.updateUserProfile</a></li>


			</ul>
		</div>

		<div class="section grid grid15">
			<h2>Opinion Related to User API's</h2>
			<ul>
				<li><a href="requestOpinion.jsp">6.requestOpinion</a></li>
				<li><a href="getOpinionList.jsp">7.getOpinionList</a></li>
				<li><a href="#getOpinionDetail">8.getOpinionDetail -
						Optional</a></li>
				<li><a href="#getOpinionSelfie">9.getOpinionSelfie -
						Optional</a></li>
				<li><a href="#updateOpinionSelfie">10.updateOpinionSelfie</a></li>
			</ul>
		</div>

		<div class="section grid grid15">
			<h2>Opinion Related to Others API's</h2>
			<ul>
				<li><a href="#respondOpionion">11.respondOpinion</a></li>
				<li><a href="#getOpinionListOfOthers">12.getOpinionListOfOthers</a></li>
				<li><a href="#getOpinionListOfOthers">13.getOpinionDetailOfOthers
						- Optional</a></li>
			</ul>
		</div>

		<div class="section grid grid15">

			<a id="requests">
				<h2>Common Conventions</h2>
				<h3>Requests</h3>
				<p>All requests should have the following regardless of whether
					they are POST or GET</p>

				<h4>HTTP Headers</h4>

				<table border="1" style="border-collapse: collapse">
					<tr>
						<th>Header Name</th>
						<th>Required</th>
						<th>Data Type</th>
						<th>Description</th>
					</tr>
					<tr>
						<td>Accept</td>
						<td>Optional</td>
						<td>String</td>
						<td>If it is not sent, it MUST be set to: "application/json"</td>
					</tr>
					<tr>
						<td>Cache-Control</td>
						<td>Optional</td>
						<td>String</td>
						<td>If it is not sent, it MUST be set to: "no-store"</td>
					</tr>
					<tr>
						<td>REQUEST_ID</td>
						<td>Mandatory</td>
						<td>String</td>
						<td>A unique identifier generated by the agent. <br />
							Assigned by the requestor and must conform to the following
							pattern "^([A-Za-z0-9-]{1,64})$"
						</td>
					</tr>
					<tr>
						<td>TIMESTAMP</td>
						<td>Optional</td>
						<td>String</td>
						<td>The timestamp must be provided in UTC and conform to the
							ISO 8601 UTC specification. <br /> Pattern Specification
							"^([0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(Z|[+-]{1}[0-9]{2}:[0-9]{2}))$"
						</td>
					</tr>
					<tr>
						<td>X-Pagination-Per-Page</td>
						<td>Optional</td>
						<td>String</td>
						<td>Assigned by the requestor and must conform to the
							following patter. <br /> Pattern Specification
							"^([1-9]{1}[0-9]{1,2})$"
						</td>
					</tr>
				</table>


				<p style="color: blue;">The X-Pagination-Per-Page enables the
					client to specify the number of records to return per invocation of
					the service. There will be am upper limit of 20 records</p>
			</a> <a id="responses">
				<h3>Responses:</h3>


				<p style="color: blue;">The response status is described in the
					HTTP Status Code field of the response header.</p>
				<h4>Http Headers</h4>
				<table border="1" style="border-collapse: collapse">
					<tr>
						<th>Header Name</th>
						<th>Required</th>
						<th>Data Type</th>
						<th>Description</th>
					</tr>
					<tr>
						<td>Status-Code</td>
						<td>Mandatory</td>
						<td>String</td>
						<td>200 - The API is invoked succesfullt; otherwise, error
							occurs. See error description section.</td>
					</tr>
					<tr>
						<td>Content-Type</td>
						<td>Mandatory</td>
						<td>String</td>
						<td>Must be set to" "application/json"</td>
					</tr>
					<tr>
						<td>REQUEST_ID</td>
						<td>Mandatory</td>
						<td>String</td>
						<td>A unique identifier generated by the agent. <br />
							Assigned by the requestor and must conform to the following
							pattern "^([A-Za-z0-9-]{1,64})$"
						</td>
					</tr>
					<tr>
						<td>X-Pagination-Per-Page</td>
						<td>Optional</td>
						<td>String</td>
						<td>Assigned by the requestor and must conform to the
							following patter. <br /> Pattern Specification
							"^([1-9]{1}[0-9]{1,2})$"
						</td>
					</tr>
				</table>
				<h2>Http Status Codes:</h2>

				<p style="color: blue;">
					The Status-Code of 200 indicates that the request was successfully
					processed; a response entity will be included in the body of the
					message. <br> <br> All other status codes indicate some
					form of processing error was encountered, in this situation a
					response error entity can be provided in the message body
				</p>

				<p>The below table details supported Status-Codes</p>
				<table border="1" style="border-collapse: collapse">
					<tr>
						<th>Status Code</th>
						<th>Raised in following situations</th>
						<th>Entity</th>
					</tr>
					<tr>
						<td>200</td>
						<td>No issues were encountered, bith the request and response
							were successfully processed.</td>
						<td>Service Response Entity</td>
					</tr>
					<tr>
						<td>400</td>
						<td>Mandatory header fields omitted.<br> Malformed
							header fields. <br> Mandatory entity fields omitted. <br>
							Malformed entity fields
						</td>
						<td>Error Entity</td>
					</tr>
					<tr>
						<td>403</td>
						<td>Forbidden.</td>
						<td>Error Entity</td>
					</tr>
					<tr>
						<td>404</td>
						<td>Resource not found.</td>
						<td>Error Entity</td>
					</tr>
					<tr>
						<td>415</td>
						<td>Response Entity media type not supported. <br /> raised
							if the Accept is not set to "application/json"
						</td>
						<td>Error Entity</td>
					</tr>
					<tr>
						<td>500</td>
						<td>Internal Error</td>
						<td>Error Entity</td>
					</tr>
				</table>
			</a> <a id="errorResponse">
				<h2>Error Response Entity</h2>
				<p>
					The error entity is presented as a JSON document <br> <b>Example
						Error Entity JSON Document </b> <br> <br>
				<pre>
		{ 
			"header": {
				"requestId": "1212", 
				"status": "400", 
				"errors": [ { 
				"message":"Mandatory document/field missing - The field phoneNumber is
				mandatory", 
				"status": "90001" 
				} ] 
			} 
		}
</pre>
			</a> <a id="errorCodes">
				<h2>Error Response Status</h2>
				<p>To - Do. will document during development.</p>
			</a>
		</div>

	</div>
</body>
</html>


