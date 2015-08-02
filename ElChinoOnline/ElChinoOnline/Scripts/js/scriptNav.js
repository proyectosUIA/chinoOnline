$(document).ready(function () {
    $(".dropdown-button").dropdown();
    $('.button-collapse').sideNav({ menuWidth: 240, activationWidth: 70 });
    $(".button-collapse").sideNav();
    $(".slider").slider({
        interval: 15000,
        height: 560
    });
    $('textarea#TxtDireccion').characterCounter();
});