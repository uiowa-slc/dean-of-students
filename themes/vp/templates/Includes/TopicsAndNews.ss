  		<section class="topics hide-print">
            <div class="container">
                <div class="colgroup">
                    <div class="col-1-2 mod">
                        <h3 class="mod-title">Assessment Reports</h3>
                        <ul class="grid-justify">
                        	<li><a href="#">Critical MASS</a></li>
                        	<li><a href="#">Healthy Hawk Challenge</a></li>
                        	<li><a href="#">Health Iowa</a></li>
                        	<li><a href="#">Implicit Bias Workshop</a></li>
                        	<li><a href="#">LeaderShape Institute</a></li>
                        	<li><a href="#">My IOWA</a></li>
                        	<li><a href="#">Red Watch Band</a></li>
                        	<li><a href="#">SDS Foundations</a></li>
                        	<li><a href="#">Student Employment</a></li>
                        	<li><a href="#">Tutoring</a></li>

                        	<!--<% with Page("self-help") %>
	                        	<% loop $Entries('8') %>
	                        		<li><a href="$Link">$MenuTitle</a></li>
	                            <% end_loop %>
                            <% end_with %>
                            -->
                        </ul>
                    </div>
                    <div class="col-1-4 mod mod-news">
                    	<h3 class="mod-title">Initiatives</h3>
				        <ul class="unstyled">
				        	<li><a href="#">Collegiate Readership Program</a></li>
				        	<li><a href="#">Iowa GROW</a></li>
				        	<li><a href="#">Multiculturalism and Diversity</a></li>
				        	<li><a href="#">Partnership for Alcohol Safety</a></li>
				        	<li><a href="#">(USLSP) Task Force</a></li>
				        </ul>
				        <!--
                    	<% with Page(news) %>
							<% if $Entries %>
						        <h3 class="mod-title">Initiatives</h3>
						        <ul class="unstyled">
						        	<% loop $Entries('3') %>
							        	<li><a href="$Link">$MenuTitle</a>
							        		<% if $Date %><small>$Date.Format('M. j')</small><% end_if %>
							        	</li>
						        	<% end_loop %>
						        	<li><a href="$Link">View all News</a></li>
						        </ul>
							<% end_if %>
						<% end_with %>
						-->
                    </div>
                    <div class="col-1-4 mod">
                    	<h3 class="mod-title">For Staff</h3>
				        <ul class="unstyled">
				        	<li><a href="#">Staff Directory</a></li>
				        	<li><a href="#">News</a></li>
				        	<li><a href="#">Thought Starters</a></li>
				        	<li><a href="#">Faces Behind the Scenes</a></li>
				        </ul>
				        <!--
	                    <% with Page(news) %>
							<% if $Entries('','event') %>
						        <h3 class="mod-title">For Staff</h3>
						        <ul class="unstyled">
						        	<% loop $Entries('3','event') %>
						        		<li><a href="$Link">$MenuTitle</a></li>
						        	<% end_loop %>
						        	<li><a href="{$Link}tag/event">View all Events</a></li>
						        </ul>
							<% end_if %>
						<% end_with %>
						-->
                    </div>
                </div>
            </div>
        </section>
