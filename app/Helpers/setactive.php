<?php

function set_active( $route ) {
    if( is_array( $route ) ){
        return in_array(Request::path(), $route) ? 'menu-item-active menu-item-open' : '';
    }
    return Request::path() == $route ? 'menu-item-active menu-item-open' : '';
}



// function set_active($uri, $output = 'menu-item-active')
// {
//  if( is_array($uri) ) {
//    foreach ($uri as $u) {
//      if (Route::is($u)) {
//        return $output;
//      }
//    }
//  } else {
//    if (Route::is($uri)){
//      return $output;
//    }
//  }
// }
?>