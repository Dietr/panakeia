<!-- Header -->
<header class="container header">
  {* Toggle for responsive nav *}
  <a href="#navigation" class="toggleMainNav">Menu</a>
  {* Navigation *}
  <nav id="navigation" role="navigation" class="mainNav">
    {$var|getnavigation:'page':0:1}
  </nav>

  {* Chromeframe *}
<!--[if lt IE 8]>
  <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true" class="link">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->
</header>
