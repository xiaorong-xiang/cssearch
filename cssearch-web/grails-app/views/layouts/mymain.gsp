<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="cssearch"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body>

    <div class="ui grid">
        <div class="row">
            <div class="two wide left floated column">
                    <g:img dir="images" file="cslogo.png" class="ui tiny image"/>
            </div>

            <div class="twelve wide centered column">
                <h1 class="ui green header">CS SEARCH </h1>
             </div>

            <div class="two wide right floated column">
                <i class="user icon"></i>
                ${request.getRemoteUser()}
            </div>
        </div>
    </div>


    <div class="ui inverted menu">

    </div>

    <g:layoutBody/>

    <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>
</body>
</html>
