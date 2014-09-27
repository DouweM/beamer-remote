// Initialize your app
var myApp = new Framework7({
    cache: false,
    animateNavBackIcon: true
});

// Export selectors engine
var $$ = Dom7;

// Add view
var mainView = myApp.addView('.view-main', {
    // Because we use fixed-through navbar we can enable dynamic navbar
    dynamicNavbar: true
});