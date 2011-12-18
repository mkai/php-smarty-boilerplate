<?php
require_once('../share/setup.php');
require_once('../share/util.php');

// get action and controller name from GET params or from URL if not given
$controller = (isset($_GET['controller']) && trim($_GET['controller'] != '') ? $_GET['controller'] : null);
$action = (isset($_GET['action']) && trim($_GET['action'] != '') ? $_GET['action'] : null);

// if fancy URLs are enabled and a fancy URL is requested, parse controller and action from the URL
if ($config['fancy_urls'] && strstr($_SERVER['REQUEST_URI'], 'index.php') === false) {        
    // to get the path, strip the site's base url and the query string from the request URL
    $path = str_replace(array($config['base_url'], '?'.$_SERVER['QUERY_STRING']), '', 'http://'.$_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI']);
    $components = array_filter(explode('/', $path));
    $action = array_pop($components);
    if (sizeof($components) == 1) {
        $controller = array_pop($components);
    }
}

// if no GET params were given or params couldn't be extracted from the URL,
// use the defaults
if (!$controller) { $controller = $config['default_controller']; }
if (!$action) { $action = $config['default_action']; }

// for a controller name other than 'default', try to open a template
// named '$controller_$action.tpl', otherwise use '$action.tpl'.
if ($controller != $config['default_controller']) {
    $template_prefix = $controller.'_';
}

// if this is an ajax request, emit only a template fragment
$compile_id = is_ajax() ? 'ajax' : 'full';
$cache_id = ($config['smarty']['template_caching_enabled'] ? $compile_id : null);
$base_template_name = (is_ajax() ? '_base_ajax.tpl' : '_base.tpl');

// assign to template
$template->assign('CONTROLLER_NAME', $controller);
$template->assign('ACTION_NAME', $action);
$template->assign('BASE_TEMPLATE_NAME', $base_template_name);

// load and render template
try {   
    if ($action[0] == '_') {
        // make sure that "system-reserved" templates cannot be displayed,
        // return a 404 response instead
        throw new SmartyException('Template names starting with an underscore are reserved for internal use.');
    }
    
    $template->display((isset($template_prefix) ? $template_prefix : '').$action.'.tpl', $cache_id, $compile_id);
}

catch (SmartyException $e) {
    if ($config['debug']) {
        echo sprintf('<pre>%s</pre>', $e);
        exit(1);
    }
    
    $template->display('_error-404.tpl', $cache_id, $compile_id);
}

catch (Exception $e) {
    if ($config['debug']) {
        echo sprintf('<pre>%s</pre>', $e);
        exit(1);
    }
    
    $template->display('_error-500.tpl', $cache_id, $compile_id);
}
?>
