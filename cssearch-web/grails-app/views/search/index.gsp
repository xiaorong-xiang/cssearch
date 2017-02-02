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
  <button class="ui green button" type="submit">Go</button>
</g:form>
            </div>

                        <div class="column">
            <g:form action="advancedQ" class="ui form">

  <div class="ui four column grid">
  <div class="column">
  <i class="add circle icon" id="addconcept"></i>
  </div>
    <div class="column">
    <select name="concept" class="ui dropdown" id="select">
      <option value="">Concept</option>
      <g:each in="${concepts}">
        <option value="${it}">${it}</option>
      </g:each>
    </select>
    </div>
    <div class="column">
    =
    </div>
    <div class="column">
    <input type="text" name="conceptV" placeholder="value">
    </div>
  </div>
  <button class="ui blue button" type="submit">Go</button>
            </g:form>
                        </div>

        </div>

    </body>
</html>