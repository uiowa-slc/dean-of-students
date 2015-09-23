    <div class="main-bg"></div>
        
    <section class="container content-wrapper clearfix">
        
        <section class="main-content">

            <article>
                $Breadcrumbs
                <h1 class="postTitle">$Title</h1>
                <!-- <p class="authorDate"><% _t('POSTEDBY', 'Posted by') %> $Author.XML <% _t('POSTEDON', 'on') %> $Date.Long</p> -->
                <% if Tags %>
                    <p class="tags">
                         <% _t('TAGS', 'Tags:') %> 
                        <% loop Tags %>
                            <a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Title</a><% if not Last %>,<% end_if %>
                        <% end_loop %>
                    </p>
                <% end_if %>

                $Content        

            </article>
        </section>
        
        
    </section>

    <% include TopicsAndNews %>