<?php
// http://www.brucelawson.co.uk/2011/notes-on-adaptive-images-yet-again/
// 
// <picture alt="angry pirate">
// <source src=hires.png media="min-width:800px">
// <source src=midres.png media="network-speed:3g">
// <source src=lores.png>
//    <!-- fallback for browsers without support -->
//    <img src=midres.png alt="angry pirate">
// </picture>

function smarty_function_picture($params, $template) {    
    if (!isset($params['src'])) { trigger_error('picture: you need to give at least a "src" option.', E_USER_ERROR); return; }

    $src = $alt = $title = null;
    if (isset($params['src'])) { $src = $params['src']; unset($params['src']); }
    if (isset($params['alt'])) { $alt = $params['alt']; unset($params['alt']); }
    if (isset($params['title'])) { $title = $params['title']; unset($params['title']); }
    
    $image = sprintf('<img src="%s"%s%s>', $src, ($alt ? sprintf(' alt="%s"', $alt) : ''), ($title ? sprintf(' title="%s"', $title) : ''));
    if (sizeof($params) == 0) {
        // only one source given, return a "normal" image.
        return $image;
    }
    
    $html = sprintf('<noscript class="image" data-src="%s"%s%s', $src, ($alt ? sprintf(' data-alt="%s"', $alt) : ''), ($title ? sprintf(' data-title="%s"', $title) : ''));
    foreach ($params as $key => $value) {
        $arg = array_filter(explode('|', $value));
        if (sizeof($arg) != 2) {
            trigger_error('picture: please specify each image in the format <media query>|<image url>.', E_USER_ERROR);
        }
        $media = $arg[0];
        $src = $arg[1];        
        $html .= sprintf(' data-%s=\'{"%s": "%s"}\'', $key, $media, $src);
    }
    $html .= '>';
    $html .= $image;
    $html .= '</noscript>';
    return $html;
}
?>
