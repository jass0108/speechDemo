<%@ include file="common/header.jspf"%>
<div class="container">
	<table class="table table-striped">
		<h2>Registration Successful</h2>
		<br><br><br>
		<thead>
			<tr>
				<th>Field</th>
				<th>Value</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Full Name</td>
				<td>${success.fullName}</td>
			</tr>
			<tr>
				<td>User Name</td>
				<td>${success.uname}</td>
			</tr>
			<tr>
				<td>Age</td>
				<td>${success.age}</td>
			</tr>
			<tr>
				<td>Email</td>
				<td>${success.email}</td>
			</tr>
			<tr>
				<td>Mobile Number</td>
				<td>${success.phone}</td>
			</tr>
		</tbody>
	</table>
	<div>
		<a class="button" href="/registerNew">New</a>
	</div>
</div>
<%@ include file="common/footer.jspf"%>