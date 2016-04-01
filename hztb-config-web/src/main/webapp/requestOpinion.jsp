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
		<h1>Request Opinion API</h1>
		<div align="right">
			<a href="index.html">Home</a>
		</div>

		<div class="section grid grid15">
			<a id="requestOpinion">
				<h2>1. Request Details</h2>
				<p style="color: blue;">This API is used to request an Opinion
					from the Buddies</p>
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
						<td>requestOpinion</td>
						<td>.../opinion/requestOpinion</td>
						<td>POST</td>
						<td>application/json</td>
						<td>application/json</td>
						<td>OpinionRequest</td>
						<td>OpinionResponse</td>
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
  "product": {
      "description": "A&F Holister T- Shirt white color",
      "title": "Blue Colored T -Shirt ",
      "url": "productUrl",
      "price": 12,
      "code" : "1234567890"
  },
  "retailer" : {
  		"id" : "1000"
  },
  "requesterPhoneNumber": 12102102102,
  "responderPhoneNumber": [
    2104178485,
    2104178486,
    2121312122,
    2104178585,
    2102102102
  ]
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
						<td>product</td>
						<td>Mandatory</td>
						<td>Object</td>
						<td></td>
						<td>Product object contains the product details for which the
							user requests for opinion</td>
					</tr>
					<tr>
						<td>code</td>
						<td>Mandatory</td>
						<td>String</td>
						<td><=15</td>
						<td>Product Code of the Product</td>
					</tr>
					<tr>
						<td>title</td>
						<td>Optional</td>
						<td>String</td>
						<td><=100</td>
						<td>Title</td>
					</tr>
					<tr>
						<td>description</td>
						<td>Optional</td>
						<td>String</td>
						<td><=300</td>
						<td>Description</td>
					</tr>
					<tr>
						<td>price</td>
						<td>Optional</td>
						<td>String</td>
						<td>10</td>
						<td>Description</td>
					</tr>
					<tr>
						<td>url</td>
						<td>Optional</td>
						<td>String</td>
						<td><=300</td>
						<td>URL</td>
					</tr>
					<tr>
						<td>retailer</td>
						<td>Mandatory</td>
						<td>Object</td>
						<td></td>
						<td>Retailer object</td>
					</tr>
					<tr>
						<td>id</td>
						<td>Mandatory</td>
						<td>String</td>
						<td><=3</td>
						<td>id of the retailer</td>
					</tr>
					<tr>
						<td>requesterPhoneNumber</td>
						<td>Mandatory</td>
						<td>String</td>
						<td><=15</td>
						<td>Opinion Requester's Phone Number</td>
					</tr>
					<tr>
						<td>responderPhoneNumber</td>
						<td>Mandatory</td>
						<td>Collection</td>
						<td></td>
						<td>Collection of responder's phone numbers</td>
					</tr>
					<tr>
						<td>responderPhoneNumber[index].ph</td>
						<td>Mandatory</td>
						<td>String</td>
						<td><=15</td>
						<td>responder's phone number</td>
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


