<?php

return [
	'mode'                  => 'utf-8',
	// 'format'                => 'A4',
	'format'                => 'FOLIO',
	'author'                => '',
	'subject'               => '',
	'keywords'              => '',
	'creator'               => 'Laravel Pdf',
	'display_mode'          => 'fullpage',
	'tempDir'               => base_path('../temp/'),
	'pdf_a'                 => false,
	'pdf_a_auto'            => false,
	'icc_profile_path'      => '',
	'font_path' => base_path('/resources/fonts/'),
	'font_data' => [
		'examplefont' => [
			'R'  => 'BookmanOldStyle.ttf',    // regular font
			'B'  => 'bookman-old-style-bold.ttf',       // optional: bold font
			'I'  => 'BookmanOldStyle.ttf',     // optional: italic font
			'BI' => 'bookman-old-style-bold.ttf.ttf' // optional: bold-italic font
			//'useOTL' => 0xFF,    // required for complicated langs like Persian, Arabic and Chinese
			//'useKashida' => 75,  // required for complicated langs like Persian, Arabic and Chinese
		]
		// ...add as many as you want.
	]
];
