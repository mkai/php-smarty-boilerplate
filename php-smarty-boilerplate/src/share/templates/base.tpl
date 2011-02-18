<!DOCTYPE html>  
<!--[if lt IE 7 ]> <html class="no-js old-ie ie6"> <![endif]-->
<!--[if IE 7 ]>    <html class="no-js old-ie ie7"> <![endif]-->
<!--[if IE 8 ]>    <html class="no-js old-ie ie8"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <link rel="stylesheet" href="{$MEDIA_URL}stylesheets/all.css?1">
        {block name=additional_stylesheets}{/block}

        <title>{block name=title}Title{/block} | {$APP_TITLE}</title>
        <meta name="description" content="{block name="description"}Description{/block}">
  
        <script src="{$MEDIA_URL}scripts/libs/modernizr/modernizr-1.6.min.js"></script>
    </head>

    <body lang="en">
        <div id="page" class="{$ACTION_NAME}">
            <header>
                <hgroup>
                    <h1><a href="./">{$APP_TITLE}</a></h1>
                </hgroup>
                
                {block name=nav}
                <nav>
                    <ul class="group">
                        <li id="index"{if $ACTION_NAME == 'index'} class="active"{/if}><a href="./">Index</a></li>
                    </ul>
                </nav>
                {/block}
            </header>
    
            <div id="main" class="group">
                <div id="content">
                    {block name=content}
                    
                    {/block}
                </div> <!-- end #content -->
                
                <div id="sidebar">                    
                    {block name=sidebar}
                    
                    {/block}
                </div> <!-- end #sidebar -->
            </div> <!-- end #main -->
    
            <footer>
                {block name=footer}
                    <a href="index.php?action=legal">Legal notice</a>
                {/block}
            </footer>
        </div> <!-- end #page -->

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script> 
        <script>!window.jQuery && document.write(unescape('%3Cscript src="{$MEDIA_URL}scripts/libs/jquery/1.5.0/jquery.min.js"%3E%3C/script%3E'))</script>
        {block name=additional_scripts}{/block}

        <!--[if lt IE 7 ]>
            <script src="{$MEDIA_URL}scripts/libs/dd_belatedpng/dd_belatedpng.js"></script>
            <script>DD_belatedPNG.fix('img, .trans-bg');</script>
        <![endif]-->

        {if $CONFIG.analytics.enabled}
        <script>
            var googleAnalyticsId = '{$CONFIG.analytics.google_analytics_id}';
            {literal}var _gaq=[['_setAccount', googleAnalyticsId],['_trackPageview']];
            (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
                g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
                s.parentNode.insertBefore(g,s)}(document,'script'));{/literal}
        </script>
        {/if}
    </body>
</html>
