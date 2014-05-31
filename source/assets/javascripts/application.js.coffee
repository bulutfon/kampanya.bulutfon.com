#= require bootstrap
$ ->
  bubble = undefined
  bubble = (div, delay, wh) ->
    setTimeout (->
      div.animate(
        top: 0
        "margin-top": "-10px"
      , 1000).animate(
        "margin-top": "-5px"
      , 300).animate
        "margin-top": "-100px"
        width: "40px"
        height: "40px"
        opacity: "0"
      , 1500, ->
        div.css
          width: wh
          height: wh
          "margin-top": 0
          top: 15
          opacity: 1

        return

      return
    ), delay
    return

  setInterval (->
    bubble $(".large"), 0, 10
    bubble $(".medium"), 500, 15
    bubble $(".normal"), 1000, 10
    return
  ), 3000
  return


