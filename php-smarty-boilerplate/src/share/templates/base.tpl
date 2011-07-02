<!DOCTYPE html>  
<!--[if lt IE 7 ]> <html class="no-js old-ie ie6"> <![endif]-->
<!--[if IE 7 ]>    <html class="no-js old-ie ie7"> <![endif]-->
<!--[if IE 8 ]>    <html class="no-js old-ie ie8"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <!--[if IE]><![endif]-->
        <link rel="stylesheet" href="{$MEDIA_URL}stylesheets/all.css{$CACHE_BUSTER}">
        {block name=additional_stylesheets}{/block}

        <title>{block name=title}Title{/block} | {$APP_TITLE}</title>
        <meta name="description" content="{block name="description"}Description{/block}">
  
        <script src="{$MEDIA_URL}scripts/libs/modernizr/1.7/modernizr.min.js"></script>
        <script>document.documentElement.className+=navigator.platform.indexOf("Win32")!=-1||navigator.platform.indexOf("Win64")!=-1?" platform-windows":navigator.platform.indexOf("Linux")!=-1?" platform-linux":navigator.userAgent.indexOf("Mac OS X")!=-1||navigator.userAgent.indexOf("MSIE 5.2")!=-1||navigator.platform.indexOf("Mac")!=-1?" platform-mac":" platform-other";</script>
    </head>

    <body lang="{$CONFIG.lang}">        
        <div id="page" class="{$ACTION_NAME}">
            <header>
                <hgroup>
                    <h1><a href="./">{$APP_TITLE}</a></h1>
                </hgroup>
                
                {block name=nav}
                <nav>
                    <ul>
                        <li id="index"{if $ACTION_NAME == 'index'} class="active"{/if}><a href="./">Index</a></li>
                    </ul>
                </nav>
                {/block}
            </header>
    
            <div id="main">
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

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script> 
        <script>!window.jQuery && document.write(unescape('%3Cscript src="{$MEDIA_URL}scripts/libs/jquery/1.6.1/jquery.min.js"%3E%3C/script%3E'))</script>
        {block name=additional_scripts}{/block}

        <!--[if lt IE 7 ]>
            <script src="{$MEDIA_URL}scripts/libs/dd_belatedpng/dd_belatedpng.js"></script>
            <script>DD_belatedPNG.fix('img, .alpha');</script>
        <![endif]-->

        {if $CONFIG.analytics.enabled}
        <script>
            var googleAnalyticsId = '{$CONFIG.analytics.google_analytics_id}';
            {literal}var _gaq=[['_setAccount', googleAnalyticsId],['_trackPageview'],['_trackPageLoadTime']];
            (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
                g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
                s.parentNode.insertBefore(g,s)}(document,'script'));{/literal}
        </script>
        {/if}
    </body>
</html>
