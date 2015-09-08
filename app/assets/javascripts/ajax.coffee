init = ->
  $('#ajax_form').on 'ajax:success', (e, data) ->
    $('#result').empty()

    $.each data.array, ->
      url = "http://www.books.or.jp/ResultDetail.aspx?isbn=#{@isbn}"

      $('#result').append(
        $('<li></li>').append($('<a></a>').attr('href', url).append(@title))
      )

$(document).ready(init)
$(document).on('page:change', init)
