


<div class="gradient">
    <div class="container clearfix">
       
        <div class="white-cover"></div>
        <section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">
             $Breadcrumbs("20", "false", "false", "true")
            <article>    
                <% if $Image %>
                    <img src="$Image.CroppedImage(765,512).URL" alt="$Title">
                <% end_if %>
                <% with $Parent %>
                    <% if $PolicyYear %>
                         <% include PolicyArchiveNav %>
                    <% end_if %>
                <% end_with %>
                	<h1>$Title</h1>
                <% if $StoryBy %>
                	<p>
						Story by <a href="mailto:$StoryByEmail">$StoryBy</a> <% if $StoryByTitle %> // $StoryByTitle <% end_if %> <% if $StoryByDept %> - $StoryByDept <% end_if %>
                	</p>
			    <% end_if %>
                	                	
	                $Content  
                
                    <% if TagsCollection %>
                    <p class="tags">
                         <% _t('TAGS', 'Tags:') %> 
                        <% loop TagsCollection %>
                            <a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
                        <% end_loop %>
                    </p>
                <% end_if %>      

            </article>
        </section>
        
        <section class="sec-content hide-print">
            <%-- include SideNav --%>


            <% include BlogSideBar %>
            <nav class="sec-nav">
                <ul class="first-level">
                    <li><a href="policies/">Policies Index</a></li>
                </ul>
            </nav>
            <div class="policy mod">
                <% with $Parent %>
                    <% if $PolicyYear %>
                         <% include PolicyArchiveNav %>
                    <% end_if %>
                    $Policies
                <% end_with %>
            </div>
        </section>
    </div>
</div>

<%-- <% include TopicsAndNews %> --%>
    


