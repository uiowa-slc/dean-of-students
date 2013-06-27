<?php

public static function BlogFeedHandler($arguments,$caption= null,$parser = null){
		
		if (empty($arguments['url'])) {
		    return;
		}
		 
		$customise = array();
		/*** SET DEFAULTS ***/
		$customise['Link'] = $arguments['url'];
		$customise['Caption'] = $caption ? Convert::raw2xml($caption) : false;
		 
		//overide the defaults with the arguments supplied
		$customise = array_merge($customise,$arguments);
		 
		//get our YouTube template
		$template = new SSViewer('SidebarBlogFeed');
		 
		//return the customised template
		return $template->process(new ArrayData($customise));		
		
	}
?>