<?php
class PolicyPage extends Page {

	private static $db = array(
	);

	private static $has_one = array(

	);

	private static $has_many = array(
	);

	static $singular_name = 'Policy';

	static $plural_name = 'Policies';

	public function getCMSFields() {
		$f = parent::getCMSFields();

		$f->removeByName("StoryBy");
		$f->removeByName("StoryByEmail");
		$f->removeByName("StoryByTitle");
		$f->removeByName("StoryByDept");
		$f->removeByName("PhotosBy");
		$f->removeByName("PhotosByEmail");
		$f->removeByName("ExternalURL");
		$f->removeByName("Image");

		return $f;
	}
}
class PolicyPage_Controller extends Page_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array(
	);

	public function init() {
		parent::init();

	}

}