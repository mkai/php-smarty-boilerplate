<?php
function smarty_function_url($params, $template) {
    $config = $template->getTemplateVars('CONFIG');
    
    if (!isset($params['action'])) { trigger_error('url: you need to give at least an "action" option.', E_USER_ERROR); return; }
    if (!isset($params['controller'])) { $params['controller'] = ''; }
    if ($params['action'] == $config['default_action'] && in_array($params['controller'], array('', $config['default_controller']))) {
        return $config['base_url'];
    }
    
    if ($config['fancy_urls']) {
        if (trim($params['controller']) != '') {
            $params['controller'] .= '/';
        }
        return sprintf('%s%s%s/', $config['base_url'], $params['controller'], $params['action']);
    }
    
    if (trim($params['controller']) != '') {
        $params['controller'] = sprintf('controller=%s&amp;', $params['controller']);
    }
    return sprintf('%sindex.php?%saction=%s', $config['base_url'], $params['controller'], $params['action']);
}
?>
