<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mymain" />
        <title>Search</title>
    </head>

    <body>
        <div class="ui one column doubling stackable grid container">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>

            <div class="column">

<g:form action="simpleQ" class="ui form">
  <div class="field">
    <label></label>
    <input type="text" name="simpleq" placeholder="What do you want to ask? e.g.">
  </div>
   <div class="ui center aligned container">
  <button class="ui green button" type="submit">Go</button>
  </div>
</g:form>
            </div>

            <div class="column">
<form class="ui form" id='formAdvancedQ'>
<div class="ui center aligned container" id="addrows">
    <g:render template="/search/addFirst" />
    </div>
  <div class="ui center aligned container">
    <button class="ui blue button" type="submit" id='submitAdvancedQ'>Go</button>
  </div>
</form>
             </div>

             <div class="column" id="dispResults">
             </div>
         </div>

    </body>
</html>