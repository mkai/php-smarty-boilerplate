{extends file=$BASE_TEMPLATE_NAME}

{block name=title}Page not found{/block}
{block name=description}{/block}
{block name=nav}{$smarty.block.parent}{/block}

{block name=content}
    <h1>Page not found</h1>
    <p>The page you asked for could not be found.</p>
{/block}

{block name=sidebar}{$smarty.block.parent}{/block}
{block name=footer}{$smarty.block.parent}{/block}

{block name=additional_scripts}{$smarty.block.parent}{/block}
{block name=additional_styles}{$smarty.block.parent}{/block}