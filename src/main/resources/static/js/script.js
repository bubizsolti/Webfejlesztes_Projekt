document.addEventListener('DOMContentLoaded', function () {
    const parfumList = document.getElementById('parfumList');
    const applyFilterButton = document.getElementById('applyFilter');
    const filters = {
        FÉRFI: document.getElementById('férfiFilter'),
        NŐI: document.getElementById('nőiFilter'),
        UNISEX: document.getElementById('unisexFilter'),
    };

    // Szűrés alkalmazása
    applyFilterButton.addEventListener('click', function () {
        const selectedGenders = Object.entries(filters)
            .filter(([_, checkbox]) => checkbox.checked)
            .map(([gender]) => gender.toUpperCase());

        // Ha nincs kiválasztás, minden parfüm
        if (selectedGenders.length === 0) {
            selectedGenders.push('FÉRFI', 'NŐI', 'UNISEX');
        }

        // Hívjuk a fetchParfums függvényt a kiválasztott szűrőkkel
        fetchParfums(selectedGenders);
    });

    // Parfümök lekérése a backendről (szűrők használatával)
    function fetchParfums(selectedGenders = ['FÉRFI', 'NŐI', 'UNISEX']) {
        // Ékezetek eltávolítása a gender értékekből
        const normalize = (str) => str.normalize("NFD").replace(/[\u0300-\u036f]/g, "");
        const normalizedGenders = selectedGenders.map(normalize);
    
        const url = `http://localhost:8080/parfums?genders=${normalizedGenders.join(',')}`;
    
        fetch(url)
            .then(response => {
                if (!response.ok) {
                    return response.text().then(text => {
                        console.error("Received text response:", text);
                        throw new Error(`Error: ${response.status} - ${text}`);
                    });
                }
                return response.json();
            })
            .then(data => {
                console.log("Received data:", data);
                if (Array.isArray(data)) {
                    displayParfums(data);
                } else {
                    console.error("Received data is not an array:", data);
                    parfumList.innerHTML = '<p>Hiba történt a parfümök lekérése közben. Kérjük, próbálja újra később.</p>';
                }
            })
            .catch(error => {
                console.error('Error fetching parfums:', error);
                parfumList.innerHTML = '<p>Hiba történt a parfümök lekérése közben. Kérjük, próbálja újra később.</p>';
            });
    }


    // Parfümök megjelenítése
    function displayParfums(parfums) {
        console.log("Display parfums:", parfums); // Debugging log

        parfumList.innerHTML = '';  // Ürítsük ki a listát

        if (parfums.length === 0) {
            parfumList.innerHTML = '<p>Nincs találat.</p>';
            return;
        }

        parfums.forEach(parfum => {
            const div = document.createElement('div');
            div.classList.add('parfum');

            div.innerHTML = `
                <h3>${parfum.name}</h3>
                <p>Gender: ${capitalize(parfum.gender)}</p>
                <p>Price: ${parfum.price} Ft</p>
            `;

            parfumList.appendChild(div);
        });
        console.log("Backend válasz formátuma:", data);

    }

    // Az első betű nagy betűsítésének segédfunkciója
    function capitalize(str) {
        return str && str.charAt(0).toUpperCase() + str.slice(1).toLowerCase();
    }

    // Alapértelmezett parfümök betöltése

    fetchParfums(); // Hívjuk meg a funkciót a profil név megjelenítésére
    displayParfums();


});
