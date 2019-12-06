const myVM = (() => {
    // MOBILE MENU RULES
    var menu            = document.querySelector("#menuContent"),
        menuBackground  = document.querySelector("#menuBackground"),
        line1           = document.querySelector("#line1"),
        line2           = document.querySelector("#line2"),
        line3           = document.querySelector("#line3"),
        menuButton      = document.querySelector("#menuButton");

    // Toggle menu background function
    function toggleMenuBackground() {
        menuBackground.classList.toggle("openMenu");
    }

    // Toggle fade out funcion
    function toggleFadeOut() {
        menuBackground.classList.toggle("fadeOut");
    }

    // Toggle menu function
    function toggleMenu() {
        // Shows/hides menu background overlay
        if (menuBackground.classList.contains("openMenu")) {
            toggleFadeOut();
            setTimeout(toggleMenuBackground, 250);
            setTimeout(toggleFadeOut, 250);
        } else {
            toggleMenuBackground();
        }

        // Toggles openMenu where applicable 
        menu.classList.toggle("openMenu");
        line1.classList.toggle("openMenu");
        line2.classList.toggle("openMenu");
        line3.classList.toggle("openMenu");
    }

    // Toggle menu event listener, listens for user click
    menuButton.addEventListener("click", toggleMenu);
    menuBackground.addEventListener("click", toggleMenu);





    // BACK TO TOP RULES

    // Menu button variables
    var toTop = document.querySelector("#backToTop");

    // Back to top function
    function backToTop(e) {
        e.preventDefault();
        TweenMax.to(window, 1, {scrollTo:0});
    }

    // Back to top on user click
    toTop.addEventListener("click", backToTop);





    // WINDOW RESIZE RULES

    // Window resize variables
    let mobileMenu = document.querySelector("#menuContent"),
        menuLinks = document.querySelectorAll("#mainNav ul li a"),
        timer = 0;

    // Stops the transitions on the menu
    function stopTransition() {
        mobileMenu.classList.add("stopTransition");
        menuLinks.forEach(link => link.classList.add("stopTransition"));
    }

    // Starts the transitions on the menu
    function startTransition() {
        mobileMenu.classList.remove("stopTransition");
        menuLinks.forEach(link => function() {
            menuLinks.forEach(link => link.classList.remove("stopTransition"));
        });
    }

    // Calls stopTransition intermittently instead of constantly while changing size of the window.
    // Calls startTransition after timeout / when user stops resizing
    function debounce() {
        if (timer) {
            clearTimeout(timer);
            timer = null;
        }
        else
            stopTransition();

        timer = setTimeout(() => {
            startTransition();
            timer = null;
        }, 500);
    }

    // Listens for window resize
    window.addEventListener('resize', debounce);





    // LOADING SCREEN RULES

    // Loading screen variables
    let loadingScreen = document.querySelector("#loadingScreen");

    // Adds closing class
    function addClose() {
        loadingScreen.classList.add("closed");
    }

    // Close loader function
    function closeLoader() {
        loadingScreen.classList.add("animateOut");
        setTimeout(addClose, 500);
    }

    // Closes loader when page has loaded
    window.addEventListener("load", closeLoader);





    // HOME PAGE RULES

    // SCROLL TO RULES

    let links = document.querySelectorAll(".menuBtn"),
        pageTest = document.querySelector("#homeSection"),
        targetArea;

    // Scroll to function
    function scrollLink(e) {
        // Closes menu
        if (menu.classList.contains("openMenu")) {
            toggleMenu();
        };

        // Scrolls to proper part of page
        e.preventDefault();
        targetArea = e.currentTarget.id.slice(0,-3);
        TweenMax.to(window, 1, {scrollTo:{y:`#${targetArea}Section`, offsetY: 55, autoKill:false}});
    }

    // Adds event listeners to each menu button
    if(pageTest !== null) {
        for (var i=0; i < links.length; i++) {
            links[i].addEventListener("click", scrollLink);
        }
    }

    


// Scrolls to offset when clicking on link on portfolio page
    window.addEventListener("load", function() {
        if (window.location.hash.length) {
            let anchorLink = document.querySelector(window.location.hash),
                offsetSize = document.querySelector("header").offsetHeight, // or clientHeight
                topTarget = anchorLink.offsetTop - offsetSize;
      
            window.scrollTo({
                top: topTarget,
                behavior: 'smooth'
            });
        }
    });
})();