// Funkció a parfümök szűrésére
function filterParfums(gender) {
    // Minden parfüm elem
    var parfums = document.querySelectorAll('.parfum');
    
    // Ha 'all', akkor minden parfüm látható
    if (gender === 'all') {
        parfums.forEach(function(parfum) {
            parfum.style.display = 'block';
        });
    } else {
        // Szűrés a nemek alapján
        parfums.forEach(function(parfum) {
            var parfumGender = parfum.getAttribute('data-gender').toLowerCase();  // Itt lekérjük a data-gender attribútumot
            if (parfumGender === gender) {
                parfum.style.display = 'block'; // Megjeleníti
            } else {
                parfum.style.display = 'none';  // Elrejti
            }
        });
    }
}

// Alapértelmezett: összes parfüm megjelenítése
document.addEventListener('DOMContentLoaded', function() {
    filterParfums('all');
});
