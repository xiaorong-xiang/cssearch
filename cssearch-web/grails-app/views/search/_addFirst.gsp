<div class="ui four column grid">
  <div class="column">
  <i class="add circle icon"></i>
  </div>
    <div class="column">
    <select name="concept" class="ui dropdown">
      <option value="">Choose Concept</option>
      <g:each in="${concepts}">
        <option value="${it}">${it}</option>
      </g:each>
    </select>
    </div>

    <div class="column">
    =
    </div>
    <div class="column">
    <div class="ui search">
      <div class="ui left icon input">
        <input class="prompt" name="conceptV" type="text" placeholder="JAK1">
      </div>
    </div>
    </div>


</div>
