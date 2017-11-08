$Header
<main class="main-content__container" id="main-content__container">

	<!-- Background Image Feature -->
	<% if $BackgroundImage %>
		<% include FeaturedImage %>
	<% end_if %>
	$Breadcrumbs
	
<% if not $BackgroundImage %>
	<div class="column row">
		<div class="main-content__header">
			<h1>$Title</h1>
		</div>
	</div>
<% end_if %>

$BlockArea(BeforeContent)

<div class="row">

	<article role="main" class="main-content main-content--with-padding <% if $SiteConfig.ShowExitButton %>main-content--with-exit-button-padding <% end_if %> main-content--with-sidebar">
		$BlockArea(BeforeContentConstrained)
		<% if $MainImage %>
			<img class="main-content__main-img" src="$MainImage.ScaleMaxWidth(500).URL" alt="" role="presentation"/>
		<% end_if %>
		<div class="main-content__text policy">
			<% if $PolicyYear %>
	    		<% include PolicyArchiveNav %>
	    	<% end_if %>
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
		</div>
		$BlockArea(AfterContentConstrained)
		$Form
		<% if $ShowChildPages %>
			<% include ChildPages %>
		<% end_if %>
	</article>
	<aside class="sidebar">
		<% include SideNav %>
		<% if $SideBarView %>
			$SideBarView
		<% end_if %>
		$BlockArea(Sidebar)
	</aside>
</div>
$BlockArea(AfterContent)

</main>
