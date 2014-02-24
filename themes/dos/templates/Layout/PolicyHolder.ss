<% if $BackgroundImage %>
	<div class="img-container" style="background-image: url($BackgroundImage.URL);">
		<div class="img-fifty-top"></div>
	</div>
<% end_if %>
<div class="gradient">
	<div class="container clearfix">
		<div class="white-cover"></div>
	    <section class="main-content policy <% if $BackgroundImage %>margin-top<% end_if %>">
	    	$Form
    		<% if SelectedTag %>
				<h3><% _t('BlogHolder_ss.VIEWINGTAGGED', 'Viewing policies tagged with') %> '$SelectedTag'</h3>
				<p><a href="$Link">View all policies</a></p>
				<% if BlogEntries %>
					<% loop BlogEntries %>
						<% include BlogSummary %>
					<% end_loop %>
				<% else %>
					<h2><% _t('BlogHolder_ss.NOENTRIES', 'There are no policies with this tag') %></h2>
				<% end_if %>	
			<% else %>			
				$Content
				$Policies
			<% end_if %>
	    	
	    </section>
	    <section class="sec-content hide-print">
			<% include BlogSideBar %>
	    </section>
	</div>
</div>
<%-- <% include TopicsAndNews %> --%>


