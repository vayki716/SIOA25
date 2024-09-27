---
title: "2024/2025 — BTS SIO : 1SIOA TC2-2 — TP1 "
author: [Evan Barroca -- Paccard]
date: "2024-10-24"
subject: "Markdown"
keywords: []
lang: "fr"
...

# Compte-rendu du TP 1 : Variables, affectations, Entrées et Sorties standard

## Objectifs

- Comprendre et utiliser des schémas algorithmique en utilisant le langage Python (version 3)

## Conditions de travail

- Auto-évaluation sur Caseine

\pagebreak


## Hello + nom

Ecrire un programme qui demande à l'utilisateur son nom puis qui affiche "Hello" suivi de son nom.

```
nom=input("Veuillez entrer votre nom:")
print("Hello ", nom, "!")
```
## Tools IP - Puissance de 2 (variables, E/S, opérateur)

Écrire un programme qui demande à l'utilisateur "Saisir un entier positif: " et affiche la puissance de 2 dont l'exposant correspondant à l'entier saisi.
```
intpos = int(input("Saisir un entier positif: "))
print("2 à la puissance de",intpos, "=", 2**intpos)
```
## Afficher la somme et la différence de deux entiers

Ecrire un programme qui demande à l'utilisateur deux entiers successivement, puis qui affiche la somme de ces deux entiers, puis qui affiche la différence entre le premier entier et le deuxième entier.

```
int1 = int(input("Premier entier: "))
int2 = int(input("Deuxième entier: "))
print("Somme :", int1+int2,".")
print("Différence :", int1-int2,".")
```
