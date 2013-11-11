<% if $BackgroundImage %>
	<div class="img-container" style="background-image: url($BackgroundImage.URL);">
		<div class="img-fifty-top"></div>
	</div>
<% end_if %>
<div class="gradient">
	<div class="container clearfix">
		<div class="white-cover"></div>
	    <section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">
	    	$Form
	    	$Content
	    </section>
	    <section class="sec-content hide-print">
			<% with $SearchForm %>
	    	 <form $FormAttributes>
	            <label>Search</label>
	            <input type="search" placeholder="Search" results="5" name="Search" class="">
	            <input type="submit" class="">
	        </form>
	        <% end_with %>
			<% include BlogSideBar %>
	    </section>
	</div>
</div>
<%-- <% include TopicsAndNews %> --%>


