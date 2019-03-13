<?php

use SilverStripe\Security\PasswordValidator;
use SilverStripe\Security\Member;
use SilverStripe\Control\Director;
use SilverStripe\Forms\HTMLEditor\HtmlEditorConfig;
// remove PasswordValidator for SilverStripe 5.0
$validator = new PasswordValidator();

$validator->minLength(8);
$validator->checkHistoricalPasswords(6);
Member::set_password_validator($validator);
HtmlEditorConfig::get('cms')->setOption(
	'extended_valid_elements', "img[class|src|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name|usemap],#iframe[src|name|width|height|align|frameborder|marginwidth|marginheight|scrolling],object[width|height|data|type],param[name|value],map[class|name|id],area[shape|coords|href|target|alt],i[class|aria-hidden|style]"
);
if(Director::isLive()) {
	Director::forceSSL();
}