document.addEventListener('DOMContentLoaded', function () {
    const parfumList = document.getElementById('parfumList');
    const applyFilterButton = document.getElementById('applyFilter');
    const maleFilter = document.getElementById('maleFilter');
    const femaleFilter = document.getElementById('femaleFilter');
    const unisexFilter = document.getElementById('unisexFilter');

    // Szűrés alkalmazása
    applyFilterButton.addEventListener('click', function() {
        const selectedGenders = [];

        if (maleFilter.checked) {
            selectedGenders.push('FÉRFI');
        }
        if (femaleFilter.checked) {
            selectedGenders.push('NŐI');
        }
        if (unisexFilter.checked) {
            selectedGenders.push('UNISEX');
        }

        // Ha nem választottunk semmit, minden parfümöt mutatunk
        if (selectedGenders.length === 0) {
            selectedGenders.push('FÉRFI', 'NŐI', 'UNISEX');
        }

        // Kérjük le a parfümöket a szerverről a szűrők alapján
        fetchParfums(selectedGenders);
    });

    // Parfümök lekérése a backendről
    function fetchParfums(selectedGenders) {
        // URL: API végpont
        let url = '/parfums?genders=' + selectedGenders.join(',');

        fetch(url)
            .then(response => response.json())
            .then(data => {
                displayParfums(data);
            })
            .catch(error => console.error('Error fetching parfums:', error));
    }

    // Parfümök megjelenítése
    function displayParfums(parfums) {
        parfumList.innerHTML = '';  // Üresítsük ki a listát először

        parfums.forEach(parfum => {
            const div = document.createElement('div');
            div.classList.add('parfum');

            div.innerHTML = `
                <h3>${parfum.name}</h3>
                <p>Price: ${parfum.price} Ft</p>
                <p>Gender: ${parfum.gender}</p>
            `;

            parfumList.appendChild(div);
        });
    }

    // Alapértelmezett parfümök lekérése
    fetchParfums(['MALE', 'FEMALE', 'UNISEX']);
});
