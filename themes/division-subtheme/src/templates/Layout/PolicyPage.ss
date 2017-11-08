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

    <div class="row column">

        <article role="main" class="main-content main-content--with-padding <% if $SiteConfig.ShowExitButton %>main-content--with-exit-button-padding <% end_if %> main-content--with-sidebar">
            $BlockArea(BeforeContentConstrained)
            <% if $MainImage %>
                <img class="main-content__main-img" src="$MainImage.ScaleMaxWidth(500).URL" alt="" role="presentation"/>
            <% end_if %>
            <div class="main-content__text">
                <% if $Image %>
                    <img src="$Image.CroppedImage(765,512).URL" alt="$Title">
                <% end_if %>
                <% with $Parent %>
                    <% if $PolicyYear %>
                         <% include PolicyArchiveNav %>
                    <% end_if %>
                <% end_with %>
                <% if $StoryBy %>
                    <p>
                        Story by <a href="mailto:$StoryByEmail">$StoryBy</a> <% if $StoryByTitle %> // $StoryByTitle <% end_if %> <% if $StoryByDept %> - $StoryByDept <% end_if %>
                    </p>
                <% end_if %>
                                        
                    $Content  
                
                    <% if TagsCollection %>
                    <p class="tags">
                         <% _t('TAGS', 'Tags:') %> 
                        <% loop TagsCollection %>
                            <a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
                        <% end_loop %>
                    </p>
                <% end_if %>
            </div>
            $BlockArea(AfterContentConstrained)
            $Form
            <% if $ShowChildPages %>
                <% include ChildPages %>
            <% end_if %>
        </article>
        <aside class="sidebar">
        <% with $Parent %>
            <div class="policy">
                $Policies
            </div>
        <% end_with %>
            $BlockArea(Sidebar)
        </aside>
    </div>
    $BlockArea(AfterContent)

</main>
