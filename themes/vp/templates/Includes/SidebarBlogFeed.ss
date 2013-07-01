<div class="sec-blog-posts">
	<nav class="feed-nav">
	<ul>
		<% with $BlogPage %>
			<% if $Entries %>
				<% loop $Entries('3',$Top.Tag) %>
					<li><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a><br />posted on $Date.Format('F n')<span class="read-more"> <a href="$Link">More</a></span><div class="clearfix"></div></li>
		    	<% end_loop %>
			<% end_if %>
		<% end_with %>
	</ul>
	</nav>
</div>
