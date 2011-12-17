<?php
function smarty_function_url($params, $template) {
    if (!isset($params['action'])) { trigger_error('url: you need to give at least an "action" option.', E_USER_ERROR); }
    if (!isset($params['controller'])) { $params['controller'] = ''; }
    
    $config = $template->getTemplateVars('CONFIG');
    if ($config['fancy_urls'] == true) {
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
