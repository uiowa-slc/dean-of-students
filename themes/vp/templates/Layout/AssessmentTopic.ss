<div class="content-bg">
<section class="container content-wrapper clearfix">
    $Breadcrumbs
    <section class="main-content">

     <article>
		<h1 class="postTitle">$Title</h1>
		<% if TagsCollection %>
			<p class="tags">
				 <% _t('TAGS', 'Tags:') %>
				<% control TagsCollection %>
					<a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
				<% end_control %>
			</p>
		<% end_if %>

		$Content

    </section>

    <section class="sec-content">
    	<%-- include SideNav --%>
    	<% include BlogSideBar %>
   </section>
   </article>
</section>
</div>
<% include TopicsAndNews %>



