<?php

class StaffPageExtension extends DataExtension {

	private static $db = array(
		'SecondaryTitle'       => 'Text',
	);

	public function getCMSFields() {
		$this->extend('updateCMSFields', $fields);

		return $fields;
	}

	public function updateCMSFields(FieldList $fields) {
		$fields->renameField('Position','Title');
		$fields->addFieldToTab('Root.Main', new TextField('SecondaryTitle'), 'EmailAddress');

	}

	public function FullTitle(){
		return $this->owner->Position.",".$this->owner->SecondaryTitle;
	}

}