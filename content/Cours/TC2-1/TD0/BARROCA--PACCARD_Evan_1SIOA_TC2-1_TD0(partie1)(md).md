+++
title = "TD0 (partie 1)"
date = 2024-09-13T22:52:58+02:00
draft = false 
+++

# Compte-rendu du TD 0 : Découverte de la base de données de la société InfoDev

## Objectifs

- Decouverte des principes de base des Bases de Donnees
- Decouverte des principales commandes SQL

# Partie 1 : Étude de la base de données

## 1.1 Rechercher des informations dans une base de données

#### Le client « Mateaud Récup » est implanté à Villegats : Vrai
Justification : Adresse ; 94, cours Pline l’ancien, 16700 a Villegats

#### Mme LACOSTE  a participé à 3 projets durant le premier semestre 2023 : Faux
Justification : Une activite, la 6 du 21/05 au 05/05 et seulement une autre activite, la 5 du 24/04 au 18/05

#### Le projet réalisé pour le client « Jouet & Cie » a été réalisé par le pôle développement : Faux
Justification : Le projet P050306 (Jouet  et Cie) a ete realise par le pole 2 (reseau)

#### Mme Tania Regnier a travaillé sur l’activité de « Test » du projet « ResHermioneSTG1 » : Vrai
Justification : 102109 est au pole 2 (reseau), sur le projet P050309 qui a ete fait avec le pole 2

### Comment se traduit au niveau de la base de données, la réponse à un appel d’offres pour un client déjà existant ?

Lors d’un appel d’offre pour un ancien client, on utilise son numero client et ses informations que l’on ajoute a un nouveau projet avec un nouveau code de projet. 

### Quels seront les changements observables dans la table PROJET ?

Une nouvelle collone avec le code P050314 ou le nom et le numero client seront déjà remplis depuis la Table CLIENT. 

### Combien de clients résident dans le département 16 ?

5 clients au total ; Fromage de A a Z (16600), Mateaud Recup (16700), Parfumerie Lanvin (16100), Jouet et Cie (16700), Korrigan Services (16400). 


### Comment faire pour ne retenir que les clients résidant dans le département 16 ?

```
	SELECT * 
	FROM CLIENT 
	WHERE CP LIKE 16% ;
```
On selectionne seulement les informations des clients ou la colonne CP debute par le chiffre 16.


### Comment trouver les projets réalisés pour ces clients ?

```
	SELECT CLIENT.num, PROJET.nom
	FROM CLIENT
	FULL JOIN PROJET
	ON CLIENT.num = PROJECT.numClient
	WHERE CP LIKE 16% ;
```

Tout en gardant seulement les clients selectionnes, on fait correspondre leur numero client (num dans la Table CLIENT) avec la colonne numClient dans la Table PROJET et pour chaque resultat correspondant on met le numero du projet (code dans la Table PROJET) de cote. 

### Citer les numéros de projets trouvés.

P050306, P050307, P050313

### Combien de projets ont été réalisés par le pôle Développement ?

Le pole developpement a realise 4 projets ; P050308, P050310, P050311 et P050313. 

### De quelles tables vous êtes vous servis pour répondre à la question précédente ? Et de quel champ en particulier ?

Dans la Table POLE des champs de « code » et de « libelle » mis en relation dans la table PROJET avec le champ « codePole » pour savoir si le pole developpement a travaille sur le projet et le champ « code » pour savoir de quel projet il s’agit. 

### Combien d’activités comprend le projet réalisé par la société InfoDev pour le lycée Hermione, qui a débuté le 25 mars 2023 ?

Le projet comprends au total 7 activites ; les activites du numero 1 a 7 sont associes au codeProjet P050309 qui correspond au code du projet ResHermionesSTG1 dans la Table PROJET. 

## 1.2 Comprendre la structure relationnelle

### Quelle information de la table PROJET permet d’identifier de manière unique les caractéristiques d’un projet ? 

C’est la clee primaire c’est a dire dans ce cas-ci « code » (voir annexe 1). 

### La table ACTIVITE contient-elle un champ permettant de définir de manière unique une activité ?

Oui, c’est la colonne « num » de la Table ACTIVITE (voir Annexe 1).

## 1.3 Comprendre les contraintes d’intégrité

### A quoi correspond, dans la table PROJET, chaque en-tête de colonne du tableau ci-dessus ?

- code = c’est l’identifiant unique de chaque projet de la Table
- nom = c’est le nom du projet
- num Client = c’est l’identifiant unique du client derriere le projet, obtenu depuis la Table CLIENT
- code Pole = c’est l’identifiant unique du pole de competences de la SSII en charge du projet, obtenu depuis la Table POLE
- description = c’est un champ permettant d’expliquer quelques brefs details sur le projet.
- origine = c’est un champ permettant de connaître l’origine du projet ; « Marche » pour une reponse a un appel d’offres et « Devis » pour une reponse a une demande de devis.
- Date Reponse = c’est la date a laquelle une reponse a ete envoye au client. 
- Date Debut = c’est la date a partir de laquelle le client a commence a travailler avec la societe InfoDev
- Date Fin = c’est la date a laquelle le contract du client va ou a déjà pris fin.
- Etat = c’est un champ permettant de connaître l’etat actuel du client. 
         
### Analyser les erreurs en complétant le tableau ci-dessous :

Projet P050311 : Lors de l'ajout le nom et le numClient sont identique au projet P050322
Contrainte de type cle primaire, la solution est d'ajouter le numero de projet comme identifiant unique (clee primaire).

Projet P050321 : Lors de l'ajout de la date, celle-ci n'est pas au format de date classique. 
Contrainte de type de domaine, il suffit d'ajouter la possibilitee d'entrer du texte dans la categorie de date de reponse.

Projet P050322 : Lors de l'ajout du Pole celui-ci n'existe pas.
Contrainte de type de reference, il suffit de creer un Pole puis d'utiliser son code Pole dans la Table Projet.

### En déduire l’objectif de chacun des types de contraintes d’intégrité vus ci-dessus :
Les contraintes d’intégrité :
- clé primaire permettent d’assurer que chaque entree est identifiable de facon unique.
- de domaine : permettent d’assurer la correspondance de la valeure avec ce qui est attendu de cette partie de la base de donne.
- de référence ou référentielle : permettent de vérifier que la cle etrangere est de meme type et de meme taille que la clee primaire.
- Les champs mis en relation doivent etres identifies par une clee primaire unique et non nulle

### Comment peut-on retrouver le nom du client ayant commandé le projet P050309 ?

On utilise le numero du client present dans la Table Projet que l'on va rechercher dans la Table Client ce qui nous renvoie avec le code client 786 le Lycee L'Hermione.

### Quel est le rôle du champ Numéro de client (champ num de la table CLIENT et numClient de la table PROJET) ?

Ce Numero est un code unique attribue a chaque client, il permet d'ajouter des clients ayant le meme nom par exemple.

### Dans quelle table ce champ est-il clé primaire ?

Il est cle primaire dans la Table Client.

### Quel rôle joue-t-il dans la table PROJET ?

Il permet de creer plusieurs projets au nom d'un meme client.

### Combien de clés primaires peut posséder une table ?

Autant que necessaire.

### Combien de clés étrangères peut posséder une table ?

Autant que necessaire.

Connaissant les opérations relationnelles (projection, restriction et jointure), répondre aux questions suivantes :
                
### Citer quels types d’opérations ont été effectués pour répondre aux questions 5 et 6.

?

### Citer les opérations qui ont été effectuées pour répondre à la question 8.

?

### Citer les opérations qui ont été effectuées pour répondre à la  question 10.

?

### Sur la base de vos observations dites à quoi sert l’opération de jointure.

L'opperation de jointure JOIN permet de lier plusieurs Tables afin d'utiliser des informations dans une Table ou elles n'etaient pas a l'origine. 

### Comment se traduit au niveau de la base de données, la réponse à un appel d’offres pour un nouveau client ? L’ordre de remplissage des tables a-t-il de l’importance ? Pourquoi ?

Oui l'ordre est important, il ne sera pas possible de renseigner certaines clees primaires si un certain ordre n'est pas respecte. 
Ainsi, il faut tout d'abord ajouter les informations du client dans la Table Client avant de creer un nouveau projet avec ce client dans la Table Projet, le reste des Tables seront remplies au fur et a mesure (Activite, Intervenant, Pole, Participer).
