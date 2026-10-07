<?php

$pageTitle = 'Mark Joseph Sol | Portfolio';

require_once __DIR__ . '/includes/header.php';
require_once __DIR__ . '/includes/navbar.php';
require_once __DIR__ . '/includes/sidebar.php';

?>

<main id="main-content">

    <!-- HOME -->
    <section id="home" class="portfolio-section">
        <?php require __DIR__ . '/home/index.php'; ?>
    </section>

    <!-- ABOUT -->
    <section id="about" class="portfolio-section">
        <?php require __DIR__ . '/about/index.php'; ?>
    </section>

    <!-- SKILLS -->
    <section id="skills" class="portfolio-section">
        <?php require __DIR__ . '/skills/index.php'; ?>
    </section>

    <!-- PROJECTS -->
    <section id="projects" class="portfolio-section">
        <?php require __DIR__ . '/projects/index.php'; ?>
    </section>

    <!-- EXPERIENCE -->
    <section id="experience" class="portfolio-section">
        <?php require __DIR__ . '/experience/index.php'; ?>
    </section>

    <!-- RESUME -->
    <section id="resume" class="portfolio-section">
        <?php require __DIR__ . '/resume/index.php'; ?>
    </section>

    <!-- CONTACT -->
    <section id="contact" class="portfolio-section">
        <?php require __DIR__ . '/contact/index.php'; ?>
    </section>

    <!-- HIRE ME -->
    <section id="hire" class="portfolio-section">
        <?php require __DIR__ . '/hire/index.php'; ?>
    </section>

</main>

<?php require_once __DIR__ . '/includes/footer.php'; ?>