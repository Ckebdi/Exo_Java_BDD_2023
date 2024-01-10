<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les tableaux</h1>
<form action="#" method="post">
    <p>Saisir au minimu 3 chiffres à la suite, exemple : 6 78 15 <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>

    <%-- Division de la chaîne de chiffres séparés par des espaces --%>
    <% String[] tableauDeChiffres = chaine.split("\\s+"); %>
    <p>La tableau contient <%= tableauDeChiffres.length %> valeurs</br>
    Chiffre 1 : <%= Integer.parseInt(tableauDeChiffres[0]) %></br>
    Chiffre 2 : <%= Integer.parseInt(tableauDeChiffres[1]) %></br>
    Chiffre 3 : <%= Integer.parseInt(tableauDeChiffres[2]) %></p>
    
<h2>Exercice 1 : La carré de la première valeur</h2>
<p>Ecrire un programme afin d'afficher le carré de la première valeur</p>

<h2>Exercice 1</h2>
<%
// Vérifie si le tableau contient au moins une valeur
if (tableauDeChiffres.length > 0) {
    // Récupère la première valeur du tableau
    int premiereValeur = Integer.parseInt(tableauDeChiffres[0]);
    // Calcule le carré de la première valeur
    int carrePremiereValeur = premiereValeur * premiereValeur;
%>
    <p>Le carré de la première valeur est : <%= carrePremiereValeur %></p>
<%
} else {
%>
    <p>Veuillez entrer une valeur.</p>
<%
}
%>

<h2>Exercice 2 : La somme des 2 premières valeurs</h2>
<p>Ecrire un programme afin d'afficher la somme des deux premières valeurs</p>

<h2>Exercice 2</h2>
<%
// Vérifier si le tableau contient au moins deux valeurs
if (tableauDeChiffres.length >= 2) {
    // Récupère les deux premières valeurs du tableau
    int premiereValeur = Integer.parseInt(tableauDeChiffres[0]);
    int deuxiemeValeur = Integer.parseInt(tableauDeChiffres[1]);
    // Calcule la somme des deux premières valeurs
    int sommeDeuxPremieresValeurs = premiereValeur + deuxiemeValeur;
%>
    <p>La somme des deux premières valeurs est : <%= sommeDeuxPremieresValeurs %></p>
<%
} else {
%>
    <p>Veuillez entrer les deux premières valeurs.</p>
<%
}
%>

<h2>Exercice 3 : La somme de toutes les valeurs</h2>
<p>L'utilisateur peut à présent saisir autant de valeurs qu'il le souhaite dans champs de saisie.</br>
Ecrire un programme afin de faire la somme de toutes les valeurs saisie par l'utilisateur</p>

<h2>Exercice 3</h2>
<%
// Vérifie si le tableau contient au moins une valeur
if (tableauDeChiffres.length >= 1) {
    // Initialise une variable pour stocker la somme
    int somme = 0;

    // Parcours du tableau et addition des valeurs
    for (String valeur : tableauDeChiffres) {
        somme += Integer.parseInt(valeur);
    }
%>
    <p>La somme de toutes les valeurs est : <%= somme %></p>
<%
} else {
%>
    <p>Aucune valeur n'a été saisie. La somme ne peut pas être effectuée.</p>
<%
}
%>

<h2>Exercice 4 : La valeur maximum</h2>
<p>Ecrire un programme pour afficher la valeur maximale saisie par l'utilisateur</p>

<h2>Exercice 4</h2>
<%
// Vérifie si le tableau contient au moins une valeur
if (tableauDeChiffres.length >= 1) {
    // Initialise une variable pour stocker la valeur maximale
    int max = Integer.parseInt(tableauDeChiffres[0]);

    // Parcours du tableau pour trouver la valeur maximale
    for (String valeur : tableauDeChiffres) {
        int nombre = Integer.parseInt(valeur);
        if (nombre > max) {
            max = nombre;
        }
    }
%>
    <p>La valeur maximale est : <%= max %></p>
<%
} else {
%>
    <p>Aucune valeur n'a été saisie pour trouver la valeur maximale.</p>
<%
}
%>

<h2>Exercice 5 : La valeur minimale</h2>
<p>Ecrire un programme pour afficher la valeur minimale saisie par l'utilisateur</p>

<h2>Exercice 5</h2>
<%
// Vérifie si le tableau contient au moins une valeur
if (tableauDeChiffres.length >= 1) {
    // Initialise une variable pour stocker la valeur minimale
    int min = Integer.parseInt(tableauDeChiffres[0]);

    // Parcours du tableau pour trouver la valeur minimale
    for (String valeur : tableauDeChiffres) {
        int nombre = Integer.parseInt(valeur);
        if (nombre < min) {
            min = nombre;
        }
    }
%>
    <p>La valeur minimale est : <%= min %></p>
<%
} else {
%>
    <p>Aucune valeur n'a été saisie pour trouver la valeur minimale.</p>
<%
}
%>

<h2>Exercice 6 : La valeur le plus proche de 0</h2>
<p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>

<h2>Exercice 6</h2>
<%
// Vérifie si le tableau contient au moins une valeur
if (tableauDeChiffres.length >= 1) {
    // Initialise une variable pour stocker la valeur la plus proche de 0
    int plusProcheDeZero = Integer.parseInt(tableauDeChiffres[0]);

    // Parcours du tableau pour trouver la valeur la plus proche de 0
    for (String valeur : tableauDeChiffres) {
        int nombre = Integer.parseInt(valeur);
        // Comparaison de la distance absolue entre la valeur et 0
        if (Math.abs(nombre) < Math.abs(plusProcheDeZero)) {
            plusProcheDeZero = nombre;
        }
    }
%>
    <p>La valeur la plus proche de 0 est : <%= plusProcheDeZero %></p>
<%
} else {
%>
    <p>Aucune valeur n'a été saisie pour trouver la valeur la plus proche de 0.</p>
<%
}
%>

<h2>Exercice 7 : La valeur le plus proche de 0 (2° version)</h2>
<p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>
<p>En cas d'égalité entre un chiffre positif et négatif, affichez le chiffre positif</p>

<h2>Exercice 7</h2>
<%
// Vérifie si le tableau contient au moins une valeur
if (tableauDeChiffres.length >= 1) {
    // Initialise une variable pour stocker la valeur la plus proche de 0
    int plusProcheDeZero = Integer.parseInt(tableauDeChiffres[0]);

    // Parcours du tableau pour trouver la valeur la plus proche de 0
    for (String valeur : tableauDeChiffres) {
        int nombre = Integer.parseInt(valeur);
        
        // Comparaison de la distance absolue entre la valeur et 0
        // En cas d'égalité, on privilégie la valeur positive
        if (Math.abs(nombre) < Math.abs(plusProcheDeZero) || (Math.abs(nombre) == Math.abs(plusProcheDeZero) && nombre > 0)) {
            plusProcheDeZero = nombre;
        }
    }
%>
    <p>La valeur la plus proche de 0 (dans le cas d'une égalité, nous garderons la valeur positive) est : <%= plusProcheDeZero %></p>
<%
} else {
%>
    <p>Aucune valeur n'a été saisie pour trouver la valeur la plus proche de 0.</p>
<%
}
%>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
