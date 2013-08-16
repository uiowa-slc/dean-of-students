<?php



class BlogFieldExtension extends DataExtension {

    static $has_one = array(
        'Image' => 'Image',
        'StoryBy' => 'TextField',
        'StoryByEmail' => 'TextField',
        'PhotosBy' => 'TextField',
        'PhotosByEmail' => 'TextField',
    );
    
    public function getCMSFields() {
      $this->extend('updateCMSFields', $fields);
      
      return $fields;
    }


    public function updateCMSFields(FieldList $fields) {
      $fields->addFieldToTab("Root.Main", new UploadField('Image', 'Main Image'), 'Content');
      $fields->addFieldToTab("Root.Main", new TextField('StoryBy', 'Story author'), 'Content');
      $fields->addFieldToTab("Root.Main", new UploadField('StoryByEmail', 'Author email address'), 'Content');
      $fields->addFieldToTab("Root.Main", new UploadField('PhotosBy', 'Photos or video by'), 'Content');
      $fields->addFieldToTab("Root.Main", new UploadField('PhotosByEmail', 'Photographer email address'), 'Content');
      $fields->removeByName("Author");
	  
      if($this->owner->ClassName == "BlogEntry"){
        $fields->removeByName("Date");
      }else {

        $fields->renameField("Date", "Published Date");
      }

  }



}