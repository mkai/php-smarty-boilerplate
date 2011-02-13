<?php
// site configuration
$config = array();

// debug mode?
$config['deployment_hostnames'] = array('example.com', 'www.example.com');
$config['debug'] = !(in_array($_SERVER['SERVER_NAME'], $config['deployment_hostnames']));

// ...
$config['app_name'] = 'my-page';
$config['app_title'] = 'My page';

// server-related
$config['document_root'] = dirname(__FILE__).'/../public/';
$config['request_url'] = implode('/', array_slice(explode('/', 'http://'.$_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI']), 0, -1)).'/';
$config['media_url'] = str_replace('http:', '', $config['request_url'].'assets/');

// session support
$config['sessions_enabled'] = false;
$config['session_save_path'] = session_save_path();

// log file
$config['logfile'] = $config['document_root'].'/../../logs/'.$config['app_name'].($config['debug'] ? '_debug' : '').'.log';

// Smarty template engine
$config['smarty'] = array();
$config['smarty']['template_dir'] = dirname(__FILE__).'/templates/';
$config['smarty']['template_compile_dir'] = $config['smarty']['template_dir'].'compiled';
$config['smarty']['template_cache_dir'] = $config['smarty']['template_dir'].'cached';
?>
