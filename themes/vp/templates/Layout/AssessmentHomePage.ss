<div class="main-bg"></div>
    
<section class="container content-wrapper clearfix">
    $Breadcrumbs
    <section class="main-content">
    	$Form
    	$Content
    	
    	<% with Page(news) %>
    		<% loop BlogEntries %>
    			
    		<% end_loop %>
    		
    	
    	<% end_with %>
    	
    </section>
    <section class="sec-content hide-print">
    	<% include SideNav %>
    </section>
</section>

<% include TopicsAndNews %>

