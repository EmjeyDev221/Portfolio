<?php
require_once __DIR__ . '/../config/db.php';

$projects = [];

try {
    $stmt = $pdo->query("SELECT * FROM projects WHERE is_active = 1 ORDER BY display_order ASC, id ASC");
    $projects = $stmt->fetchAll();
} catch (PDOException $e) {
}

if (!$projects) {
    $projects = [
        [
            'title' => 'Facilities & Administrative Management System',
            'description' => 'A web-based management system for facilities, visitors, documents, contracts, legal records, permits, retention, compliance, dashboards and reporting.',
            'technologies' => 'PHP, MySQL, JavaScript, Docker',
            'project_type' => 'Capstone Project'
        ],
        [
            'title' => 'Integrated Enrollment & Learning Management System',
            'description' => 'An integrated web application designed to support enrollment workflows and learning management functionalities.',
            'technologies' => 'PHP, MySQL, HTML, CSS',
            'project_type' => 'Academic Project'
        ],
        [
            'title' => 'Personal Portfolio Website',
            'description' => 'A responsive personal portfolio focused on presenting skills, experience, projects and resume information in one place.',
            'technologies' => 'PHP, CSS, JavaScript, GitHub',
            'project_type' => 'Personal Project'
        ]
    ];
}
?>

<div class="projects-section">

    <div class="section-heading">
        <span></span>
        <h2>PROJECTS</h2>
        <span></span>
    </div>

    <div class="projects-grid">

        <?php foreach ($projects as $i => $project):

            $techText = $project['technologies'] ?? $project['tech_stack'] ?? '';

            $techs = preg_split(
                '/\s*,\s*/',
                trim($techText),
                -1,
                PREG_SPLIT_NO_EMPTY
            );

        ?>

            <article class="project-card reveal">

                <div class="project-top">
                    <span class="project-number">
                        <?= str_pad((string)($i + 1), 2, '0', STR_PAD_LEFT) ?>
                    </span>

                    <span class="project-type">
                        <?= htmlspecialchars($project['project_type'] ?? 'Project') ?>
                    </span>
                </div>

                <?php if (!empty($project['image'])): ?>
                    <div class="project-image">
                        <img
                            src="images/<?= htmlspecialchars($project['image']) ?>"
                            alt="<?= htmlspecialchars($project['title']) ?>"
                        >
                    </div>
                <?php endif; ?>

                <div class="project-content">

                    <h3><?= htmlspecialchars($project['title']) ?></h3>

                    <p><?= htmlspecialchars($project['description']) ?></p>

                    <?php if ($techs): ?>
                        <div class="tech-list">

                            <?php foreach ($techs as $tech): ?>
                                <span class="tech-tag">
                                    <?= htmlspecialchars($tech) ?>
                                </span>
                            <?php endforeach; ?>

                        </div>
                    <?php endif; ?>

                    <div class="project-links">

                        <?php if (!empty($project['github_url'])): ?>
                            <a
                                class="project-link"
                                href="<?= htmlspecialchars($project['github_url']) ?>"
                                target="_blank"
                                rel="noopener"
                            >
                                GitHub ↗
                            </a>
                        <?php endif; ?>

                        <?php if (!empty($project['live_url'])): ?>
                            <a
                                class="project-link"
                                href="<?= htmlspecialchars($project['live_url']) ?>"
                                target="_blank"
                                rel="noopener"
                            >
                                Live Demo ↗
                            </a>
                        <?php endif; ?>

                    </div>

                </div>

            </article>

        <?php endforeach; ?>

    </div>

</div>
