+++
title = "Tableurs"
date = 2024-09-13T22:52:58+02:00
draft = false 
+++

# Compte-rendu d'AP : Les Tableurs

## Objectifs

- ­Se familiariser avec l’utilisation des tableurs.
- Découvrir/revoir des commandes de base d’utilisation des tableurs.
- S’habituer a des situations réelles d’utilisation des tableurs en entreprise.

# Exercice 1 :

## 2.1 Les requêtes monotables

Le prix de vente d'un article est de 263€ ht
Le taux de TVA est de 19,6%

![image info](/AP/tabl1.png)

Pour calculer le montant de la TVA a 19,6 % nous effectuons la commande suivante ; 
```
= D6 * 0,196
= prix HT * 0,196
```

Puis pour calculer le prix TTC nous additionnons les deux valeurs ;
```
= D6 +D7
= prix HT + montant TVA
```

Le prix de vente d'un article est de 143,5€ ttc
Le taux de TVA est de 19,6%

![image info](/AP/tabl2.png)

Pour calculer le montant de la TVA a partir du prix TTC de l’article nous effectuons la commande suivante ;
```
= D15 - (D15/(1+0,196))
= prix ttc – ( prix ttc / ( 1 + 0.196 ) )
```

Puis pour calculer le prix HT de l’article nous soustrayons la TVA au prix TTC ; 
```
= D15 -D14
= prix TTC – prix TVA
```

# Exercice 2 :

MANQUE LE GRAPHIQUE

![image info](/AP/tabl3.png)
![image info](/AP/tabl4.png)

Pour calculer les moyennes des eleves il est possible d’utiliser la formule par defaut pour calculer une moyenne c’est a dire AVERAGE(__:__), puis il suffira de la descendre pour calculer le reste des moyennes ;

```
=AVERAGE(E11:H12)
```

Puis pour calculer le minimum nous utiliserons egallement une formule par defaut (MIN(__ :__), de meme pour la formule MAX(__ :__) qui permet d’obtenir le maximum. 

Enfin pour obtenir le nombre de notes superieurs ou egalles a 0 il faut utiliser la formule COUNTIF( __ :__ ; « condition a verifier » ) ;
```
=COUNTIF(__ :__ ; « condition a verifier » )
=COUNTIF(E12:E21 ; ">=10")
```
Si l’on souhaite limiter le nombre de décimales il suffit d’utiliser l'icone .OO avec une petite croix.

# Exercice 3 :

![image info](/AP/tabl6.png)

Pour le prix total HT ;
```
= (nombre * prix unitaire HT)
```

Pour la TVA a 7% ; 
```
= (prix total HT * 0.07)
```

Pour le prix total TTC ; 
```
=SUM(prix total HT, TVA)
```

Pour le Total TTC ;
```
=SUM(de tout les prix totaux TTC)
```

Les resultats des prix totaux sont donc les suivants :
- TVA 7% : 150,87
- TVA 5.5% : 148,755
- TVA 19.6% : 168,636


# Exercice 4 :

![image info](/AP/tabl5.png)

Apres avoir remplis le tableau avec des valeurs il faut integrer des formules de calcule ;

Pour le total RECETTES ; 
```
=SUM(Salaires, Alocations, Bourses, Divers)
```

Pour le total DEPENSES ;
```
=SUM(Loyer, Taxe... Imprevus)
```

Pour le total SOLDES ;
```
=(RECETTES - DEPENSES)
```

Pour afficher le solde en rouge il faut selectionner la case et lui ajouter une condition qui lorsque le montant est inferieur a 0 transforme la case en rouge et s'il est negatif la transforme en vert.

# Exercice 5 :


