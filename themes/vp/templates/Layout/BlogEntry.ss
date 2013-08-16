<div style="background: #fafafa;position: relative;" class="news">
    <div class="img-fifty"></div>
    <section class="container content-wrapper clearfix">
        <!-- $Breadcrumbs -->
        <section class="main-content">
            <article>    
                <% if $Image %>
                    <img src="$Image.CroppedImage(765,512).URL" alt="">
                <% end_if %>
                	<h1 class="postTitle">$Title</h1>
                	                	
	                $Content  
                
                    <% if TagsCollection %>
                    <p class="tags">
                         <% _t('TAGS', 'Tags:') %> 
                        <% control TagsCollection %>
                            <a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
                        <% end_control %>
                    </p>
                <% end_if %>      

            </article>
        </section>
        
        <section class="sec-content hide-print">
            <%-- include SideNav --%>
            <% include BlogSideBar %>
        </section>
    </section>
</div>

<%-- <% include TopicsAndNews %> --%>
    


