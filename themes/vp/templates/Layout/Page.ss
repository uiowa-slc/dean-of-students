<!-- <div class="main-bg"></div> -->
    <% if $BackgroundImage %>
    	<div class="img-container" style="background: #000 url($BackgroundImage.URL) no-repeat center top;"></div>
    <% else %>
    	<div class="img-container" style="background: #000 url({$ThemeDir}/images/img-test.jpg) no-repeat center top;"></div>
    <% end_if %>
    <div style="background: #fafafa;position: relative;">
    	<div class="img-fifty"></div>
		<section class="container content-wrapper clearfix">
		    
		    <section class="main-content">
				<!-- $Breadcrumbs -->
		    	$Form
		    	$Content
		    	
		    </section>
		    <section class="sec-content hide-print">
		    	<% include SideNav %>
		    </section>
		</section>
	</div>
<% include TopicsAndNews %>

