document.addEventListener('DOMContentLoaded', function () {
    const parfumList = document.getElementById('parfumList');
    const applyFilterButton = document.getElementById('applyFilter');
    const genderFilters = document.querySelectorAll('.gender-filter');

    // A parfümök adatai
    const parfums = [
        { name: "Whoosh", gender: "UNISEX", description: "Friss citrusos parfüm.", price: 32000 },
        { name: "Valhalla", gender: "FÉRFI", description: "Erőteljes fás jegyekkel.", price: 36000 },
        { name: "Queen of Chambord", gender: "NŐI", description: "Édes, csábító illat.", price: 32000 },
        { name: "Sweet Darkness", gender: "UNISEX", description: "Intenzív dohány és balzsamos jegyek.", price: 36000 }
    ];

    // Parfümök megjelenítése
    function displayParfums(filteredParfums) {
        parfumList.innerHTML = '';
        filteredParfums.forEach(parfum => {
            const li = document.createElement('li');
            li.innerHTML = `
                <h3>${parfum.name}</h3>
                <p>${parfum.description}</p>
                <p>Ár: ${parfum.price} Ft</p>
            `;
            parfumList.appendChild(li);
        });
    }

    // Szűrő alkalmazása
    function applyFilter() {
        const selectedGenders = Array.from(genderFilters)
            .filter(input => input.checked)
            .map(input => input.id.toUpperCase());

        const filteredParfums = parfums.filter(parfum =>
            selectedGenders.length === 0 || selectedGenders.includes(parfum.gender)
        );

        displayParfums(filteredParfums);
    }

    applyFilterButton.addEventListener('click', applyFilter);

    // Alapértelmezett parfümök megjelenítése
    displayParfums(parfums);
});
