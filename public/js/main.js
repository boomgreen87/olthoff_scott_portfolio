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



    // SCROLL TO RULES

    let links = document.querySelectorAll(".menuBtn"),
        targetArea;

    console.log(links);

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
    for (var i=0; i < links.length; i++) {
        links[i].addEventListener("click", scrollLink);
    }



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
})();