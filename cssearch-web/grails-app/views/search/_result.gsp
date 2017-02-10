 <h4>Found ${data.size()} results:</h4>
 <g:each in="${data}">
    <h5><a href='${it.appUrl}' target='_'>${it.appName}</a></h5>
    <p>${it.appUrl}</p>
 </g:each>

