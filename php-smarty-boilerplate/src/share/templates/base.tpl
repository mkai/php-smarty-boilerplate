<!DOCTYPE html>  
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="{$CONFIG.lang}"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="{$CONFIG.lang}"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="{$CONFIG.lang}"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <!--[if IE]><![endif]-->
        <link rel="stylesheet" href="{$MEDIA_URL}stylesheets/all.css{$CACHE_BUSTER}">
        {block name=additional_stylesheets}{/block}

        <title>{block name=title}Page title{/block} | {$APP_TITLE}</title>
        <meta name="description" content="{block name="description"}Site description.{/block}">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <script src="{$MEDIA_URL}scripts/libs/modernizr/2.0.6/modernizr.min.js"></script>
        <script>document.documentElement.className+=navigator.platform.indexOf("Win32")!=-1||navigator.platform.indexOf("Win64")!=-1?" platform-windows":navigator.platform.indexOf("Linux")!=-1?" platform-linux":navigator.userAgent.indexOf("Mac OS X")!=-1||navigator.userAgent.indexOf("MSIE 5.2")!=-1||navigator.platform.indexOf("Mac")!=-1?" platform-mac":" platform-other";</script>
    </head>

    <body>
        <div class="page {$ACTION_NAME}">
            <header>
                <h1><a href="./">{$APP_TITLE}</a></h1>                
                {block name=nav}
                <nav>
                    <ul>
                        <li class="index{if $ACTION_NAME == 'index'} active{/if}"><a href="./">Start page</a></li>
                    </ul>
                </nav>
                {/block}
            </header>
    
            <div class="main">
                <section class="content">
                    {block name=content}
                    
                    {/block}
                </section> <!-- end .content -->
                
                <aside>
                    {block name=sidebar}
                    
                    {/block}
                </aside>
            </div> <!-- end .main -->
    
            <footer>
                {block name=footer}
                    <a href="index.php?action=legal">Legal notice</a>
                {/block}
            </footer>
        </div> <!-- end .page -->

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script> 
        <script>!window.jQuery && document.write(unescape('%3Cscript src="{$MEDIA_URL}scripts/libs/jquery/1.7.0/jquery.min.js"%3E%3C/script%3E'))</script>
        {block name=additional_scripts}{/block}

        <!--[if lt IE 7 ]>
        <script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script>
        <script>{literal}window.attachEvent('onload',function(){CFInstall.check({mode:'overlay'})}){/literal}</script>
        <![endif]-->

        {if $CONFIG.analytics.enabled && !$CONFIG.debug}
		<script>
            var _gaq=[['_setAccount', '{$CONFIG.analytics.google_analytics_id}'],['_trackPageview'],['_trackPageLoadTime']];
            {literal}(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
                g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
                s.parentNode.insertBefore(g,s)}(document,'script'));{/literal}
        </script>
        {/if}
	</body>
</html>
