<!DOCTYPE html>
<!--[if lt IE 7]>      <html lang="{$LANGUAGE}" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="{$LANGUAGE}" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="{$LANGUAGE}" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="{$LANGUAGE}" class="no-js"> <!--<![endif]-->

<head>
	{* Meta *}
	<meta charset="utf-8" />
	<meta name="generator" content="Fork CMS" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	{$meta}
	{$metaCustom}

	<title>{$pageTitle}</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

	{* Stylesheets *}
	{iteration:cssFiles}
	<link rel="stylesheet" href="{$cssFiles.file}" />
	{/iteration:cssFiles}

	{* HTML5 Javascript *}
	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Favicon -->
	<link rel="apple-touch-icon-precomposed" sizes="57x57" href="{$THEME_URL}/apple-touch-icon-57x57-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="{$THEME_URL}/apple-touch-icon-72x72-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="{$THEME_URL}/apple-touch-icon-114x114-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="{$THEME_URL}/apple-touch-icon-144x144-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" href="{$THEME_URL}/apple-touch-icon-precomposed.png" />
	<link rel="apple-touch-icon" href="{$THEME_URL}/apple-touch-icon.png" />
	<link rel="shortcut icon" href="{$THEME_URL}/favicon.ico" />

	<!-- Humans -->
	<link rel="author" href="{$THEME_URL}/humans.txt" />

	{* Site wide HTML *}
	{$siteHTMLHeader}
</head>
