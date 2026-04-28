document.addEventListener("DOMContentLoaded", function () {

    const form = document.getElementById("contactForm");

    form.addEventListener("submit", function (e) {
    e.preventDefault();

    const nom = document.getElementById("nom").value.trim();
    const email = document.getElementById("email").value.trim();
    const message = document.getElementById("message").value.trim();

    if (!nom || !email || !message) {
        alert("Veuillez remplir tous les champs !");
        return;
    }

    alert("Message envoyé avec succès !");
});
    }

});