<!-- <div class="main-bg"></div> -->
<% if $BackgroundImage %>
      <div class="img-container" style="background: #000 url($BackgroundImage.URL) no-repeat center top;"></div>
    <% else %>
      <div class="img-container" style="background: #000 url({$ThemeDir}/images/img-test.jpg) no-repeat center top;"></div>
<% end_if %>
<div style="position: relative;">
      <!-- <div class="img-fifty"></div> -->
      <section class="container content-wrapper clearfix">
            <!-- $Breadcrumbs -->
            <section class="staff-content">
            	$Form
            	$Content
            	<% loop StaffTeams %>
                        
            	     <h2 class="staff-title">$Title</h2>

                        <ul class="staff-list">
                        <% loop $StaffPages %>
                              <li>
                                    <% if $Photo %>
                                    <a href="$Link" class="staff-link">
                                          
                                          <img src="$Photo.SetWidth(350).URL" alt="$FirstName $LastName" class="staff-img">
                                    </a>
                                    <% else %>
                                    <a href="$Link" class="staff-link">
                                          
                                          <img src="{$ThemeDir}/images/dosl.png" alt="$FirstName $LastName" class="staff-img">
                                    </a>
                                    <% end_if %>
                                    <p class="staff-name">
                                          <a href="$Link">$FirstName $LastName</a>
                                          <% if $Position %><small class="staff-position">$Position</small><% end_if %>
                                    </p>
                              </li>
                        <% end_loop %>
                              <li class="filler"></li>
                              <li class="filler"></li>
                        </ul>
                        
            	<% end_loop %>
            	
            </section>
      </section>
</div>
<% include TopicsAndNews %>
