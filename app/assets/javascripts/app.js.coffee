window.App = {}
window.App.fn = {}

window.App.fn.init_klass_member_association_form = -> 
  q = $('#q')
  q.typeahead 
    source: (process, query) ->
      $.get q.attr("data-from"),
        query: query
      , (data) ->
        process.process data

    onselect: (item) ->
      q = $('#q')
      $.post q.attr("data-to"), 
        id: item.id

window.App.fn.init_sorting = ->
  $("ol.sortable").sortable
    cursor: 'crosshair',
    items: 'li',
    update: () ->
      $.ajax 
        url: $("ol.sortable").attr("data-update"), 
        type: 'post',
        data: $("ol.sortable").sortable('serialize'),
        complete: () ->
          $("ol.sortable").effect('highlight')