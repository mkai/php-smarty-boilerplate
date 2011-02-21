{extends file="base.tpl"}

{block name=title}Page not found{/block}
{block name=description}{/block}
{block name=nav}{$smarty.block.parent}{/block}

{block name=additional_scripts}{$smarty.block.parent}{/block}
{block name=additional_stylesheets}{$smarty.block.parent}{/block}

{block name=content}
    <h3 class="first {$ACTION_NAME}">Page not found</h3>
    <p>The page you asked for could not be found.</p>
{/block}

{block name=sidebar}{$smarty.block.parent}{/block}
{block name=footer}{$smarty.block.parent}{/block}
