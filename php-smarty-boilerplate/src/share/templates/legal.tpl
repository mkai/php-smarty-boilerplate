{extends file="base.tpl"}

{block name=title}Legal notice{/block}
{block name=description}{/block}
{block name=nav}{$smarty.block.parent}{/block}

{block name=additional_scripts}{$smarty.block.parent}{/block}
{block name=additional_stylesheets}{$smarty.block.parent}{/block}

{block name=content}
    <h3 class="first {$ACTION_NAME}">Legal notice</h3>
{/block}

{block name=sidebar}{$smarty.block.parent}{/block}
{block name=footer}{$smarty.block.parent}{/block}
