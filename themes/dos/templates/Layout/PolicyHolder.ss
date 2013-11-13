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
	    	$Content
	    </section>
	    <section class="sec-content hide-print policy">
			<% with $SearchForm %>
	    	 <form $FormAttributes>
	            <label style="display: none;">Search</label>
	            <input type="search" placeholder="Search Policies" results="5" name="Search" class="">
	            <input type="submit" class="" style="float: left; margin: 5px 0;">
	        </form>
	        <hr>
	        <% end_with %>
			<% include BlogSideBar %>
	    </section>
	</div>
</div>
<%-- <% include TopicsAndNews %> --%>


