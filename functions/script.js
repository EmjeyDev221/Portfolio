document.addEventListener('DOMContentLoaded', () => {

    // Mobile navigation
    const menu = document.querySelector('.menu-toggle');
    const nav = document.querySelector('.nav-links');

    if (menu && nav) {

        menu.addEventListener('click', () => {

            const isOpen = nav.classList.toggle('open');

            menu.setAttribute(
                'aria-expanded',
                isOpen ? 'true' : 'false'
            );

        });

        nav.querySelectorAll('a').forEach(link => {

            link.addEventListener('click', () => {

                nav.classList.remove('open');

                menu.setAttribute(
                    'aria-expanded',
                    'false'
                );

            });

        });

    }


    // Scroll reveal animation
    const revealElements = document.querySelectorAll('.reveal');

    const observer = new IntersectionObserver(
        (entries) => {

            entries.forEach(entry => {

                if (entry.isIntersecting) {

                    entry.target.classList.add('visible');

                    observer.unobserve(entry.target);

                }

            });

        },
        {
            threshold: 0.12
        }
    );


    revealElements.forEach(element => {

        observer.observe(element);

    });

});