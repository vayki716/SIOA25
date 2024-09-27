+++
title = "TD0 (Partie 2)"
date = 2024-09-13T22:52:58+02:00
draft = false 
+++

# Compte-rendu du TD 0 : Decouverte de la base de donnees de la societe InfoDev

## Objectifs

- Decouverte des principes de base des Bases de Donnees
- Decouverte des principales commandes SQL

# Partie 2 : Exploitation de la base de données

## 2.1 Les requêtes monotables

### 1. Exécuter la requête « Liste des établissements scolaires de Charente ». Sous quelle forme se présente le résultat de cette requête ?

Cette requete renvoie un tableau avec seulement les informations recherchees. 

### 1. Observer le langage SQL :
### 1.1 Étudier la syntaxe et le résultat de la requête. Quels sont les opérateurs relationnels utilisés ? A votre avis, que veux dire le mot ‘LIKE’ en langage SQL ?

On utilise ici les operateurs relationels de %, le mot LIKE peut etre compare a un = dans le language courant.

### 1.2 Compléter ci-dessous la phrase expliquant le traitement réalisé par la requête « Liste des établissements scolaires ». :

"Cette requête sélectionne les etablissements scolaires de la table Client dont le nom contient College ou Lycee et qui sont situe dans le departement de Charente."

### 1.3 Pourquoi utilise-t-on les opérateurs OR et AND dans la clause Where de la requête précédente ?

Cela permet de verifier a la fois que l'etablissement et bien un college ou un lycee ET qu'il est situe dans le departement de Charente, tout cela dans une seule requete.

### 2. En vous aidant du schéma relationnel et du mémento SQL fournis en annexes, écrire les requêtes suivantes en SQL puis les exécuter avec le SGBD.

SELECT num, mom, rue
FROM CLIENT
WHERE CP like '16%';
