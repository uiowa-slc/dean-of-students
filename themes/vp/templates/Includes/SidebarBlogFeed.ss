<div class="sec-blog-posts">
	<nav class="sec-nav">
	<ul class="second-level">
		<% with $BlogPage %>
			<% if $Entries %>
				<% loop $Entries('3',$Top.Tag) %>
					<li><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle on $Date.NiceUS</a></li>
		    	<% end_loop %>
			<% end_if %>
		<% end_with %>
	</ul>
	</nav>
</div>
