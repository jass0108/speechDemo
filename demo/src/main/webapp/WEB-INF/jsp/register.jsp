<%@ include file="common/header.jspf"%>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.1/css/font-awesome.min.css" />
<script type="text/javascript">
	var speechRecognizer = new webkitSpeechRecognition();
	speechRecognizer.continuous = true;
	speechRecognizer.interimResults = true;
	speechRecognizer.lang = 'en-IN';
	function startConverting(id) {
		if ('webkitSpeechRecognition' in window) {

			speechRecognizer.start();

			var finalTranscripts = '';

			speechRecognizer.onresult = function(event) {
				var interimTranscripts = '';
				for (var i = event.resultIndex; i < event.results.length; i++) {
					var transcript = event.results[i][0].transcript;
					transcript.replace("\n", "<br>");
					if (event.results[i].isFinal) {
						finalTranscripts += transcript;
					} else {
						interimTranscripts += transcript;
					}
				}
				document.getElementById(id).value = finalTranscripts
						+ interimTranscripts;
			};
			speechRecognizer.onerror = function(event) {
			};
		}
	}

	function stopConverting() {
		speechRecognizer.stop();
	}
</script>
<style type="text/css">
body {
	font-family: verdana;
}

.stop {
	font-size: 20px;
	top: 240px;
	left: 30%;
	margin-left: 10px;
}

.start {
	font-size: 20px;
	top: 240px;
	left: 50%;
	top: 240px;
	margin-left: 10px;
}

span.inblock {
	display: inline-flex;
}

.centerBlock {
	text-align: -webkit-center;
}

.innercenterBlock {
	text-align: -webkit-left;
	margin-left: 15%;
}
</style>
<div class="centerBlock">
	<h2 class="center">User Registration Form</h2>
	<br> <br> <br>
	<div class="innercenterBlock">
		<form:form method="post" commandName="register" action="/registration">
			<form:hidden path="id" />
			<fieldset class="form-group">
				<form:label path="fullName">Full Name</form:label>
				<span class="inblock" style="display: inline-flex;"> <form:input
						id="fullName" path="fullName" type="text"
						onclick="stopConverting();" class="form-control" maxlength="100" />
					<a class="start" onclick="startConverting('fullName');"> <i
						class="fa fa-microphone"></i>
				</a> <a class="stop" onclick="stopConverting();"> <i
						class="fa fa-stop"></i>
				</a>
				</span>
				<form:errors path="fullName" cssClass="text-warning" />
			</fieldset>
			<fieldset class="form-group">
				<form:label path="email">Email :</form:label>
				<span class="inblock" style="display: inline-flex;"> <span
					class="input-group-addon" style="width: auto;"><i
						class="glyphicon glyphicon-envelope"></i></span> <form:input id="email"
						path="email" type="email" onclick="stopConverting();"
						class="form-control" maxlength="100" /> <a class="start"
					onclick="startConverting('email');"> <i
						class="fa fa-microphone"></i>
				</a> <a class="stop" onclick="stopConverting();"> <i
						class="fa fa-stop"></i>
				</a>
				</span>
				<form:errors path="email" cssClass="text-warning" />
			</fieldset>

			<fieldset class="form-group">
				<form:label path="phone">Mobile Number :</form:label>
				<span class="inblock" style="display: inline-flex;"> <span
					class="input-group-addon" style="width: auto;"><i
						class="glyphicon glyphicon-phone"></i></span> <form:input id="phone"
						path="phone" type="tel" class="tel form-control" pattern="\d*"
						x-autocompletetype="tel" onclick="stopConverting();"
						maxlength="12" /> <a class="start"
					onclick="startConverting('phone');"> <i
						class="fa fa-microphone"></i>
				</a> <a class="stop" onclick="stopConverting();"> <i
						class="fa fa-stop"></i>
				</a>
				</span>
				<form:errors path="phone" cssClass="text-warning" />
			</fieldset>

			<fieldset class="form-group">
				<form:label path="age">Age (in years) :</form:label>
				<span class="inblock" style="display: inline-flex;"> <form:input
						id="age" path="age" type="number" class="form-control"
						onclick="stopConverting();"
						maxlength="3" /> <a class="start"
					onclick="startConverting('age');"> <i class="fa fa-microphone"></i>
				</a> <a class="stop" onclick="stopConverting();"> <i
						class="fa fa-stop"></i>
				</a>
				</span>
				<form:errors path="age" cssClass="text-warning" />
			</fieldset>

			<fieldset class="form-group">
				<form:label path="uname">Username :</form:label>
				<span class="inblock" style="display: inline-flex;"> <span
					class="input-group-addon" style="width: auto;"><i
						class="glyphicon glyphicon-user"></i></span> <form:input id="uname"
						path="uname" type="text" onclick="stopConverting();"
						class="form-control" maxlength="15" /> <a class="start"
					onclick="startConverting('uname');"> <i
						class="fa fa-microphone"></i>
				</a> <a class="stop" onclick="stopConverting();"> <i
						class="fa fa-stop"></i>
				</a>
				</span>
				<form:errors path="uname" cssClass="text-warning" />
			</fieldset>
			<fieldset class="form-group">
				<form:label path="password">Password :</form:label>
				<span class="inblock" style="display: inline-flex;"> <span
					class="input-group-addon" style="width: auto;"><i
						class="glyphicon glyphicon-lock"></i></span> <form:input id="password"
						path="password" type="password" class="form-control"
						maxlength="15" />
				</span>
				<form:errors path="password" cssClass="text-warning" />
			</fieldset>
			<button type="submit" class="btn btn-success centerBlock">Submit</button>
		</form:form>
	</div>
</div>
<%@ include file="common/footer.jspf"%>