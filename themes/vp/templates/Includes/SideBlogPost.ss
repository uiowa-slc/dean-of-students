<div class="sec-blog-posts">
	    	<h3 class="section-title">Assessment News</h3>
	    	<nav class="sec-nav">
	    	<ul class="first-level">
		    	<% with Page('news') %>
					<% if $Entries('','assessment news') %>
						<% loop $Entries('3','assessment news') %>
				    		<li>
	<a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle on $Date.NiceUS</a>
</li>
				    	<% end_loop %>
					<% end_if %>
				<% end_with %>
			</ul>
			</nav>
		</div>
