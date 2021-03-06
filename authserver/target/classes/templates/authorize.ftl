<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<div class="row">
    <div class="col-md-4"></div>
    <div class="col-xs-12 col-md-4">
        <div class="jumbotron login-jumbotron">
            <div class="container">
                <h2>Please Confirm</h2>

                <p>
                    Do you authorize "${authorizationRequest.clientId}" at "${authorizationRequest.redirectUri}" to
                    access your protected resources
                    with scope ${authorizationRequest.scope?join(", ")}.
                </p>
                <form id="confirmationForm" name="confirmationForm"
                      action="../oauth/authorize" method="post">
                    <input name="user_oauth_approval" value="true" type="hidden"/>
                    <input type="hidden" id="csrf_token" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <button class="btn btn-greeny" type="submit">Approve</button>
                </form>
                <form id="denyForm" name="confirmationForm"
                      action="../oauth/authorize" method="post">
                    <input name="user_oauth_approval" value="false" type="hidden"/>
                    <input type="hidden" id="csrf_token" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <button class="btn btn-greeny" type="submit">Deny</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>