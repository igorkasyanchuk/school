window.App = {}
window.App.fn = {}

window.App.fn.init_klass_member_association_form = -> 
  q = $('#q')
  q.typeahead 
    source: (process, query) ->
      console.log "#{q.attr("data-from")} filter #{query}"
      $.get q.attr("data-from"),
        query: query
      , (data) ->
        process.process data

    onselect: (item) ->
      console.log item