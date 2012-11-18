// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  $("#posts th a, #posts .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#posts_search input").keyup(function() {
    $.get($("#posts_search").attr("action"), $("#posts_search").serialize(), null, "script");
    return false;
  });

  // menu dinámico
  var distancia = 200;
  var bar = $('#menu-dinamico');
  var top = bar.css('top');
  $(window).scroll(function() {
      if($(this).scrollTop() > distancia) {
          bar.stop().animate({'top' : '0px'}, 500);
      } else {
          bar.stop().animate({'top' : top}, 500);
      }
  });

 
  // active menu
  $('.menu a').click(function () {
    var $this = $(this);
    $('.menu a').removeClass('active');
    $this.addClass('active');

    // click en main menu activa el item en el menu dinamico
    $('#menu-dinamico .menu li:eq(' + $this.parent().index() + ') a').addClass('active');   
  })

  // active menu en los botones del portafolio
  $('#portafolio-botones a').click(function () {
    var $this = $(this);
    $('#portafolio-botones a').removeClass('active');
    $this.addClass('active');
  })


});


// automatic addition of active class in menu when scrolling page 
$(document).scroll(function(){
    var menu_dinamico = $('#menu-dinamico .menu li a'),
        body = $('.menu li a'),
        laposta = $('#menu-dinamico .menu li:eq(' + 1 +') a'),
        servicios = $('#menu-dinamico .menu li:eq(' + 2 +') a'),
        portafolio  = $('#menu-dinamico .menu li:eq(' + 3 +') a'),
        consultas  = $('#menu-dinamico .menu li:eq(' + 4 +') a');

        body_region = $('body').offset().top - $(document).scrollTop();
        laposta_region = $('#laposta').offset().top - $(document).scrollTop();
        servicios_region = $('#servicios').offset().top - $(document).scrollTop();
        portafolio_region = $('#postafolio').offset().top - $(document).scrollTop();
        consultas_region = $('#consultas').offset().top - $(document).scrollTop();


    if (body_region == 0){
        body.removeClass('active');
    } 

    if (laposta_region  < 200 ){
        menu_dinamico.removeClass('active');
        laposta.addClass('active');
    } 

    if (servicios_region  < 200 ){
        menu_dinamico.removeClass('active');
        servicios.addClass('active');
    }
 
    if (portafolio_region  < 200 ){
        menu_dinamico.removeClass('active');
        portafolio.addClass('active');
    } 

    if (consultas_region  < 200 ){
        menu_dinamico.removeClass('active');
        consultas.addClass('active');
    }
});
