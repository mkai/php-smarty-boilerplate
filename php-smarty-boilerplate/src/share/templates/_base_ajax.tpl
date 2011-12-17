<title>{block name=title}Page title{/block} | {$APP_TITLE}</title>

<section role="main" class="content" data-controller="{$CONTROLLER_NAME}" data-action="{$ACTION_NAME}">
    {block name=content}
    
    {/block}
</section> <!-- end .content -->

{block name=additional_scripts}{/block}
{block name=additional_styles}{/block}
