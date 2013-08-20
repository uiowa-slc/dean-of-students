<div class="gradient">
      <section class="container clearfix">
            <div class="white-cover"></div>
            <section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">
            	<h1>$Title</h1>
            	<% if $Photo %>
            		<img src="$Photo.CroppedImage(765,512).URL" alt="$FirstName $LastName">
            	<% end_if %>
            	$Content
            </section>
            <section class="sec-content">
            	<% include SideNav %>
            </section>
      </section>
</div>
<%-- <% include TopicsAndNews %> --%>
