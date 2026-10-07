<?php

require_once __DIR__ . '/../config/db.php';

$profile = [
    'full_name' => 'Mark Joseph Sol',
    'professional_title' => 'BSIT Student | Web Developer',
    'tagline' => 'Web Developer / App Developer',
    'introduction' => 'I build clean, functional, and user-focused web applications while continuously improving my technical skills.'
];

try {

    $stmt = $pdo->query(
        "SELECT * FROM profile ORDER BY id ASC LIMIT 1"
    );

    $dbProfile = $stmt->fetch();

    if ($dbProfile) {
        $profile = array_merge($profile, $dbProfile);
    }

} catch (PDOException $e) {

    // Use default information if database is unavailable.

}

?>

<div class="container home-layout">

    <div class="home-copy reveal">

        <p class="eyebrow">
            Hi! I'm
        </p>

        <h1>
            <?= htmlspecialchars($profile['full_name']) ?>
        </h1>

        <h2>
            <?= htmlspecialchars($profile['professional_title']) ?>
        </h2>

        <p class="home-tagline">
            <?= htmlspecialchars($profile['tagline']) ?>
        </p>

        <p class="home-intro">
            <?= htmlspecialchars($profile['introduction']) ?>
        </p>

        <div class="home-actions">

            <a
                class="btn btn-primary"
                href="#projects"
            >
                See My Projects
            </a>

            <a
                class="btn btn-outline"
                href="#contact"
            >
                Contact Me
            </a>

        </div>

    </div>


    <div class="home-photo reveal">

        <div class="photo-frame">

            <img
                src="images/profile.jpg"
                alt="<?= htmlspecialchars($profile['full_name']) ?>"
                onerror="this.src='images/profile-placeholder.svg';"
            >

        </div>

    </div>

</div>


<div class="services container reveal">

    <div class="section-heading centered">

        <span>What I Do</span>

        <h2>
            Services
        </h2>

    </div>


    <div class="service-grid">

        <article class="service-card">

            <div class="service-icon">
                01
            </div>

            <h3>
                Web Development
            </h3>

            <p>
                Responsive and functional websites using PHP,
                HTML, CSS and JavaScript.
            </p>

        </article>


        <article class="service-card">

            <div class="service-icon">
                02
            </div>

            <h3>
                Backend Development
            </h3>

            <p>
                Database-driven applications with PHP,
                MySQL and practical API integration.
            </p>

        </article>


        <article class="service-card">

            <div class="service-icon">
                03
            </div>

            <h3>
                System Development
            </h3>

            <p>
                Academic and personal management systems
                focused on usability and reliability.
            </p>

        </article>

    </div>

</div>