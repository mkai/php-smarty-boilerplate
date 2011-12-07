<?php
require_once('../share/setup.php');
require_once('../share/util.php');

// set defaults (used when no param is given)
$default_controller = 'default';
$default_action = 'index';

// get controller name and action from GET params
$controller = (isset($_GET['controller']) && trim($_GET['controller'] != '') ? $_GET['controller'] : $default_controller);
$action = (isset($_GET['action']) && trim($_GET['action'] != '') ? $_GET['action'] : $default_action);

// if this is an ajax request, emit only a template fragment
$compile_id = is_ajax() ? 'ajax' : 'full';
$cache_id = ($config['smarty']['template_caching_enabled'] ? $compile_id : null);
$base_template_name = (is_ajax() ? 'base_ajax.tpl' : 'base.tpl');

// assign to template
$template->assign('CONTROLLER_NAME', $controller);
$template->assign('ACTION_NAME', $action);
$template->assign('BASE_TEMPLATE_NAME', $base_template_name);

// load and render template
try {   
    $template->display((isset($template_prefix) ? $template_prefix : '').$action.'.tpl', $cache_id, $compile_id);
}

catch (SmartyException $e) {    
    $template->display('error-404.tpl', $cache_id, $compile_id);
}

catch (Exception $e) {
    $template->display('error-500.tpl', $cache_id, $compile_id);
}
?>
