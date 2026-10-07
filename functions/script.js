document.addEventListener('DOMContentLoaded', function () {

    const menuToggle = document.querySelector('.menu-toggle');
    const navLinks = document.querySelector('.nav-links');
    const navbar = document.querySelector('.navbar');

    if (menuToggle && navLinks) {

        menuToggle.addEventListener('click', function () {

            navLinks.classList.toggle('active');

            const isActive =
                navLinks.classList.contains('active');

            menuToggle.setAttribute(
                'aria-expanded',
                isActive ? 'true' : 'false'
            );

        });

        navLinks.querySelectorAll('a').forEach(function (link) {

            link.addEventListener('click', function () {

                navLinks.classList.remove('active');

                menuToggle.setAttribute(
                    'aria-expanded',
                    'false'
                );

            });

        });

    }


    if (navbar) {

        window.addEventListener('scroll', function () {

            if (window.scrollY > 30) {

                navbar.classList.add('scrolled');

            } else {

                navbar.classList.remove('scrolled');

            }

        });

    }


    const revealElements =
        document.querySelectorAll('.reveal');

    if ('IntersectionObserver' in window) {

        const observer =
            new IntersectionObserver(
                function (entries) {

                    entries.forEach(function (entry) {

                        if (entry.isIntersecting) {

                            entry.target.classList.add('visible');

                            observer.unobserve(
                                entry.target
                            );

                        }

                    });

                },
                {
                    threshold: 0.15
                }
            );

        revealElements.forEach(function (element) {

            observer.observe(element);

        });

    } else {

        revealElements.forEach(function (element) {

            element.classList.add('visible');

        });

    }

});