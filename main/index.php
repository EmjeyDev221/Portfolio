<?php
$pageTitle = 'Mark Joseph Sol | Portfolio';
require_once __DIR__ . '/includes/header.php';
require_once __DIR__ . '/includes/navbar.php';
require_once __DIR__ . '/includes/sidebar.php';

$sections = [
    __DIR__ . '/home.php',
    __DIR__ . '/about/index.php',
    __DIR__ . '/skills/index.php',
    __DIR__ . '/projects/index.php',
    __DIR__ . '/experience/index.php',
    __DIR__ . '/resume/index.php',
    __DIR__ . '/contact/index.php',
    __DIR__ . '/hire/index.php',
];

foreach ($sections as $section) {
    if (file_exists($section)) {
        require $section;
    }
}

require_once __DIR__ . '/includes/footer.php';
