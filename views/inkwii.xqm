module namespace inkwi = "inkwi";

import module namespace funct="funct" at "../functions/functions.xqm";
import module namespace config="app/config" at "../functions/config.xqm";

declare 
  %rest:GET
  %rest:path( "/inkwi" )
  %output:method( "html" )
  %output:doctype-public( "www.w3.org/TR/xhtml11/DTD/xhtml11.dtd" )
function inkwi:main(){
       let $params :=    
       map{
        'header' : '',
        'content' : funct:tpl2( 'login', map{ 'параметр2' : 'ДРУГОЕ ЗНАЧЕНИЕ'} ),
        'footer' : funct:tpl2( 'footer', map{} )
      }
    return
      funct:tpl2( 'main', $params )
};