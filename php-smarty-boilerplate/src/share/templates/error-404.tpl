{extends file="base.tpl"}

{block name=title}Seite nicht gefunden{/block}
{block name=description}{$smarty.block.parent}{/block}
{block name=nav}{$smarty.block.parent}{/block}

{block name=additional_scripts}{$smarty.block.parent}{/block}
{block name=additional_stylesheets}{$smarty.block.parent}{/block}

{block name=content}
    <h3 class="{$page_name}">Seite nicht gefunden</h3>
    <p>Die angeforderte Seite konnte nicht gefunden werden.</p>
{/block}

{block name=sidebar}{$smarty.block.parent}{/block}
{block name=footer}{$smarty.block.parent}{/block}
