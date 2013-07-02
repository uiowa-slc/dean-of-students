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
        <h1>$Title</h1>
				<% if SelectedTag %>
					<div class="selectedTag">
						<em>
						<% _t('VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'
						</em>
					</div>
				<% else_if SelectedDate %>
					<div class="selectedTag">
						<em>
						<% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedNiceDate
						</em>
					</div>
				<% end_if %>
				
				<% if BlogEntries %>
					<% loop BlogEntries %>
						<% include BlogSummary %>
					<% end_loop %>
				<% else %>
					<p><% _t('NOENTRIES', 'There are no blog entries with this tag.') %></p>
				<% end_if %>
				
				<% include BlogPagination %>
        </section>
        <section class="sec-content hide-print">
        	<%-- include SideNav --%>
        	<% include BlogSideBar %>
        </section>
    </section>
</div>
<% include TopicsAndNews %>
        
    