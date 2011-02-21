{extends file="base.tpl"}

{block name=title}Server error{/block}
{block name=description}{/block}
{block name=nav}{$smarty.block.parent}{/block}

{block name=additional_scripts}{$smarty.block.parent}{/block}
{block name=additional_stylesheets}{$smarty.block.parent}{/block}

{block name=content}
    <h3 class="first {$ACTION_NAME}">Server error</h3>
    <p>A server error occured while trying to load your page.</p>
{/block}

{block name=sidebar}{$smarty.block.parent}{/block}
{block name=footer}{$smarty.block.parent}{/block}
