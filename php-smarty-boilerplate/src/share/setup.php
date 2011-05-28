<?php
require_once('config.php');
require_once('util.php');

// configure error reporting and PHP stuff
ini_set('error_reporting', E_ALL | E_STRICT);
ini_set('display_errors', ($config['debug'] ? 1 : 0));
ini_set('log_errors', ($config['debug'] ? 0 : 1));
ini_set('error_log', $config['logfile']);

// use W3C-conforming URLS when parameters are appended
ini_set('arg_separator.output', '&amp;');

// Session support
if ($config['sessions_enabled']) {
    // fall back to using URL for session ID when cookies disabled
    ini_set('session.use_trans_sid', '1');

    // start session    
    session_start();
}

// set up smarty template engine
require_once('libs/Smarty-3.0.6/libs/Smarty.class.php');

$template = new Smarty();
$template->template_dir = $config['smarty']['template_dir'];
$template->compile_dir = $config['smarty']['template_compile_dir'];
$template->cache_dir = $config['smarty']['template_cache_dir'];

// assign server variables to base template
$template->assign('REQUEST_URL', $config['request_url']);
$template->assign('MEDIA_URL', $config['media_url']);
$template->assign('CACHE_BUSTER', $config['cache_buster']);

// assign app variables to base template
$template->assign('APP_NAME', $config['app_name']);
$template->assign('APP_TITLE', $config['app_title']);

// make config variables usable in template
$template->assign('CONFIG', $config);
?>
