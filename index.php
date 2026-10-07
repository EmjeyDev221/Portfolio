<?php

$pageTitle = 'Mark Joseph Sol | Portfolio';

require_once __DIR__ . '/includes/header.php';
require_once __DIR__ . '/includes/navbar.php';
require_once __DIR__ . '/includes/sidebar.php';

?>

<main id="main-content">

    <!-- =========================
         HOME
         ========================= -->
    <section id="home" class="portfolio-section">

        <div class="container home-layout">

            <div class="home-copy reveal">

                <p class="eyebrow">
                    Hi! I'm
                </p>

                <h1>
                    Mark Joseph Sol
                </h1>

                <h2>
                    BSIT Student | Web Developer
                </h2>

                <p class="home-tagline">
                    Web Developer / App Developer
                </p>

                <p class="home-intro">
                    I build clean, functional, and user-focused
                    web applications while continuously improving
                    my technical skills.
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
                        alt="Mark Joseph Sol"
                        onerror="this.src='images/profile-placeholder.svg';"
                    >

                </div>

            </div>

        </div>


        <!-- SERVICES -->

        <div class="services container reveal">

            <div class="section-heading centered">

                <span>
                    What I Do
                </span>

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
                        Responsive and functional websites
                        using PHP, HTML, CSS and JavaScript.
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
                        Database-driven applications using
                        PHP, MySQL and practical API integration.
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

    </section>


    <!-- =========================
         ABOUT
         ========================= -->
    <section id="about" class="portfolio-section">

        <?php require __DIR__ . '/about/index.php'; ?>

    </section>


    <!-- =========================
         SKILLS
         ========================= -->
    <section id="skills" class="portfolio-section">

        <?php require __DIR__ . '/skills/index.php'; ?>

    </section>


    <!-- =========================
         PROJECTS
         ========================= -->
    <section id="projects" class="portfolio-section">

        <?php require __DIR__ . '/projects/index.php'; ?>

    </section>


    <!-- =========================
         EXPERIENCE
         ========================= -->
    <section id="experience" class="portfolio-section">

        <?php require __DIR__ . '/experience/index.php'; ?>

    </section>


    <!-- =========================
         RESUME
         ========================= -->
    <section id="resume" class="portfolio-section">

        <?php require __DIR__ . '/resume/index.php'; ?>

    </section>


    <!-- =========================
         CONTACT
         ========================= -->
    <section id="contact" class="portfolio-section">

        <?php require __DIR__ . '/contact/index.php'; ?>

    </section>


    <!-- =========================
         HIRE ME
         ========================= -->
    <section id="hire" class="portfolio-section">

        <?php require __DIR__ . '/hire/index.php'; ?>

    </section>

</main>


<?php

require_once __DIR__ . '/includes/footer.php';

?>