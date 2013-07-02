<!-- <div class="main-bg"></div> -->
<% if $BackgroundImage %>
    <div class="img-container" style="background: #000 url($BackgroundImage.URL) no-repeat center top;"></div>
<% else %>
    <div class="img-container" style="background: #000 url({$ThemeDir}/images/img-test.jpg) no-repeat center top;"></div>
<% end_if %>
<div style="background: #fafafa;position: relative;">
    <div class="img-fifty"></div>
    <section class="container content-wrapper clearfix">
        <!-- $Breadcrumbs -->
        <section class="main-content">

            <article>
                <h1 class="postTitle">$Title</h1>
                <!-- <p class="authorDate"><% _t('POSTEDBY', 'Posted by') %> $Author.XML <% _t('POSTEDON', 'on') %> $Date.Long</p> -->
                <% if TagsCollection %>
                    <p class="tags">
                         <% _t('TAGS', 'Tags:') %> 
                        <% control TagsCollection %>
                            <a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
                        <% end_control %>
                    </p>
                <% end_if %>

                $Content        

            </article>
        </section>
        
        <section class="sec-content hide-print">
            <%-- include SideNav --%>
            <% include BlogSideBar %>
        </section>
    </section>
</div>

<% include TopicsAndNews %>
    


