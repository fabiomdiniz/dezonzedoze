<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Carla e Fabio</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <!-- Le styles -->
    <link href="/static/css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
      body {
        padding-top: 200px;
        padding-bottom: 0px;
        background-image: url("/static/img/bg_pattern.jpg");
        background-repeat: repeat;
        background-position: top left;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="/static/css/bootstrap-responsive.css" rel="stylesheet" />

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="/static/ico/favicon.ico" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/static/ico/apple-touch-icon-144-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/static/ico/apple-touch-icon-114-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/static/ico/apple-touch-icon-72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" href="/static/ico/apple-touch-icon-57-precomposed.png" />
  </head>

  <body>


    <!---- NAV BAR ---->
    <div class="navbar navbar-fixed-top" id="header">

      <div class="navbar-inner">
        <div class="container-fluid">
          <div class="row-fluid">
            <div class="span4"></div>
            <div class="span4">
              <img id="logo" src="/static/img/logo.png" alt="">
            </div>
            <div class="span4"></div>
          </div>
          <div class="row-fluid">
            <ul class="nav" style="width:100%">
              <div class="span1"></div>

                <div class="span2"><li class="active smooth"><a href="#evento" class="smooth">O Evento</a></li></div>
                <div class="span2"><li class="smooth"><a href="#rsvp" class="smooth">Rsvp</a></li></div>
                <div class="span2"><img id="navbar_divisor" src="/static/img/divisor.png" style="margin-top: 8px;"></div>
                <div class="span2"><li class="smooth"><a href="#dicas" class="smooth">Dicas</a></li></div>
                <div class="span2"><li class="smooth"><a href="#presentes" class="smooth">Presentes</a></li></div>

              <div class="span1"></div>
            </ul>
          </div>

          <div class="row-fluid">
            <div class="span1"></div>
            <div class="span10 underline"></div>
            <div class="span1"></div>
          </div>

        </div>
      </div>
    </div>

    <div class="container-fluid" id="content">

      <!---- EVENTO ---->
      <div class="row-fluid subcontent" id="evento">
        <div class="span1"></div>
        <div class="span10">
          <h1 class="title">O evento</h1>
          <p>Após de 5 anos de namoro, o inevitável acontece: Carla e Fábio se casam no <strong>sábado, dia 10 de Novembro de 2012</strong> às <strong>15:30</strong> em Jacareí, à 100 km de São Paulo.</p>

<p>A união será celebrada na <strong>
Igreja Matriz Imaculada Conceição</strong>, localizada na <a href="http://goo.gl/maps/ZvN80" target='_blank'> Praça Padre Anchieta, 92.</a></p>

<p>Após a cerimônia religiosa, os noivos receberão os convidados no <strong>Hotel Piazza</strong>, localizado na <a href="http://goo.gl/maps/XJhnt" target='blank'> Rua Batista Scavone, 22</a>.</p>
        </div>
        <div class="span1"></div>
      </div> <!-- Evento -->


      <!---- rsvp ---->
      <div class="row-fluid subcontent" id="rsvp">
         <div class="span1"><img class="bg_flower" id="bgflower_left1" src="/static/img/flower2.png"></div>
        
        <div class="span10">
          <h1 class="title">Rsvp</h1>
          <p>Se você recebeu um convite, é muito importante que confirme se poderá ou não comparecer, pois somente desta forma conseguiremos preparar a festa para o número correto de convidados.</p>
          <p>Estamos fazendo tudo com muito carinho para que o nosso casamento seja um dia inesquecível que se completará com a presença de vocês lá.</p>
          <div>
              <form id="rsvp_form" method=post action="/">
                <div id="p-0">
                  <div class="row-fluid">
                    <div class="span3">
                      <label>Nome</label>
                      <input type="text" name="nome-0" placeholder="">
                    </div>
                    <div class="span3">
                      <label>Telefone</label>
                      <input type="text" name="telefone" placeholder="">
                    </div>
                    <div class="span3">
                      <label>E-mail</label>
                      <input type="text" name="email" placeholder="">
                    </div>
                    <div class="span3">
                      <label class="presenca_radio">
                        <input type="radio" name="presenca" id="confirma_radio" value="true" checked>
                          Confirmo a presença
                      </label>
                      <label class="presenca_radio">
                        <input type="radio" name="presenca" id="nao_confirma_radio" value="false">
                          Não poderei comparecer ;_;
                     </label>
                    </div>

                  </div>
                  
                </div>
                <ul class="nav nav-pills">
                  <li id="link_add_convidado"><a href="#1">Adicionar convidado</a></li>
                </ul>

                <button type="submit" class="btn">Enviar</button>
              </form>
            </div><!--/span-->
        </div>
        <div class="span1"><img class="bg_flower" id="bgflower_right1" src="/static/img/flower2.png"></div>

      </div><!--/rsvp-->

      <!---- dicas ---->
      <div class="row-fluid subcontent" id="dicas">
        <div class="span1"></div>
        <div class="span10">
          <h1 class="title">Dicas</h1>
          <p><strong>Como chegar</strong><br/>Se você não conhece Jacareí, veja este mapa</p>
          <p><strong>Hotéis</strong><br/A festa será no salão do Hotel Piazza e os convidados que quiserem se hospedar no próprio hotel têm desconto. É só informar na hora da reserva que são convidados do casamento.</p>
        </div>
        <div class="span1"></div>
      </div><!--/rsvp-->


    <!---- presentes ---->
      <div class="row-fluid subcontent" id="presentes">
        <div class="span1"></div>
        <div class="span10">
          <h1 class="title">Lista de Presentes</h1>
          <p>Como todos já sabem, nós juntamos os trapos há algum tempo e já temos a casa toda montada. Por isso, decidimos deixar a Lista de Presentes em formato de <strong>cotas de viagem</strong> para a nossa <strong>Lua de Mel</strong>, que será em Porto de Galinhas, Pernambuco.</p>
          <p>Aqui vai as cotas</p>
          <p>Após o depósito (ou transferência ou DOC) pedimos a gentileza de informar aqui mesmo ou por telefone.</p>

        </div>
        <div class="span1"></div>
      </div><!--/rsvp-->

      <hr>

      <footer>
        <p>Company 2012</p>
      </footer>

    </div><!--/.fluid-container-->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <script type="text/javascript">
      $(function(){
        var header_offset = 0;

        //Setup Smooth Scrolling
        $('a.smooth').on("click",function(){
          if ($(window).width() >= 980 ) {
            header_offset = $("#header").height();
          }
          else {
            header_offset = 0;
          }
          var _target = $(this).attr('href'),
            _targetElement = $(_target).offset().top;
          //$("html:not(:animated),body:not(:animated)").stop();
          $("html:not(:animated),body:not(:animated)").animate({
            scrollTop: _targetElement - header_offset
          },1100);

          $("li").removeClass("active");
          $(this).parent().addClass("active");

          return false;
        });


        $('.presenca_radio').click(function() {           
            if($("#confirma_radio").is(':checked'))  {
                $("#link_add_convidado").removeClass('disabled');
            } else {                              
                $("#link_add_convidado").addClass('disabled');
                $("#rsvp_form div:not(:first)").remove();
            }
        });

        $('#link_add_convidado').click(function() {
                if($("#link_add_convidado").hasClass('disabled')){
                  return;
                }
                var last_num = parseInt($("#rsvp_form > div:last").attr('id').split('-')[1]);
                var num = last_num + 1;
                // create the new element via clone(), and manipulate it's ID using newNum value
                var newElem = $('#p-0').clone().attr('id', 'p-' + num);
                newElem.children('* .presenca_radio').remove()
                newElem.children('* input').not(":first").remove();
                newElem.children('* label').not(":first").remove();
                newElem.children('* input').attr('placeholder', '').val('');
                newElem.children('* input').attr('name', 'nome-' + num);
                newElem.append('<a href="#1">Remover convidado</a>');
                newElem.children('a').click(function(){ $(this).parent().remove(); })
                $('#p-'+last_num).after(newElem);
 
                // insert the new element after the last "duplicatable" input field
//                $('#input' + num).after(newElem);
            });


      });


    </script>
  </body>
</html>
