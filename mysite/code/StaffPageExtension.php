<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\DataExtension;

class StaffPageExtension extends DataExtension {

	private static $db = array(
		'SecondaryTitle' => 'Text',
	);

	public function getCMSFields() {
		$this->extend('updateCMSFields', $fields);

		return $fields;
	}

	public function updateCMSFields(FieldList $fields) {
		$fields->renameField('Position', 'Title');
		//$fields->addFieldToTab('Root.Main', new TextField('SecondaryTitle'), 'EmailAddress');

	}

}
