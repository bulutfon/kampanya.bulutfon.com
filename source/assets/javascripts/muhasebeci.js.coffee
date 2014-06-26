#= require bootstrap
#= require vendor/retina-1.1.0.min
#= require _common

$ ->
  generateNumbers = ->
    a = Math.floor(Math.random() * 11) + 1
    b = Math.floor(Math.random() * 11) + 1
    c = a + b
    $(".calculator li:nth-child(1)").html(a).css(opacity: 1).animate
      top: 0
      opacity: "0"
    , 500, ->
      $(".calculator li:nth-child(2)").html(b).css(opacity: 1).animate
        top: 0
        opacity: "0"
      , 500, ->
        $(".calculator li:nth-child(3)").html(c).css(opacity: 1).animate
          top: 0
          opacity: "0"
        , 500, ->
          $(".calculator li").css top: "150px"


  setInterval (->
    generateNumbers()
  ), 3000


