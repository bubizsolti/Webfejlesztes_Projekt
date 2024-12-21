document.addEventListener('DOMContentLoaded', function () {
    const parfumList = document.getElementById('parfumList');

    // Parfümök lekérése a backendről
    function fetchParfums() {
        const url = `/parfums`;  // Backend API URL
    
        fetch(url)
            .then(response => {
                if (!response.ok) {
                    return response.text().then(text => {
                        console.error("Hiba történt:", text);
                        throw new Error(`Error: ${response.status} - ${text}`);
                    });
                }
                return response.json();  // JSON válasz
            })
            .then(data => {
                console.log("Received data:", data);
                if (Array.isArray(data)) {
                    displayParfums(data);
                } else {
                    console.error("Nem tömböt kaptunk:", data);
                    parfumList.innerHTML = '<p>Hiba történt a parfümök megjelenítése közben. Kérjük, próbálja újra később.</p>';
                }
            })
            .catch(error => {
                console.error('Hiba a parfümök lekérése közben:', error);
                parfumList.innerHTML = '<p>Hiba történt a parfümök megjelenítése közben. Kérjük, próbálja újra később.</p>';
            });
    }

    // Parfümök megjelenítése
    function displayParfums(parfums) {
        console.log("Megjelenítendő parfümök:", parfums);

        parfumList.innerHTML = '';  // Ürítsük ki a listát

        if (parfums.length === 0) {
            parfumList.innerHTML = '<p>Nincs elérhető parfüm.</p>';
            return;
        }

        parfums.forEach(parfum => {
            const div = document.createElement('div');
            div.classList.add('parfum');

            div.innerHTML = `
                <h3>${parfum.name}</h3>
                <p>Gender: ${parfum.gender}</p>
                <p>Price: ${parfum.price} Ft</p>
            `;

            parfumList.appendChild(div);
        });
    }

    // Alapértelmezett parfümök betöltése
    fetchParfums();
});
