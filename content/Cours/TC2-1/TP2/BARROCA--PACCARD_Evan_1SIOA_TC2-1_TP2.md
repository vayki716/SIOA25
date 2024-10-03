+++
title = 'TP2'
date = 2024-09-13T22:52:58+02:00
draft = false
+++
<a href="" download>Version PDF</a>

# Compte-rendu du TP 2 : Jointures et Agregats

## Objectifs

- Comprendre le principe des jointures
- Savoir realiser des requetesutilisant des fonctions d'agregats, de regroupement


## Req 01

SELECT HABITANT.NOM
FROM HABITANT
INNER JOIN ACHAT_MENHIR AN ON HABITANT.ID = AN.IDHABITANT
WHERE AN.POIDS = 10
ORDER BY HABITANT.NOM ASC ;

## Req 02

SELECT HABITANT.NOM, F.LIBELLE
FROM HABITANT
INNER JOIN ACHAT_MENHIR AN ON HABITANT.ID = AN.IDHABITANT
INNER JOIN FUNCTION F ON HABITANT.IDFONCTION = F.ID
WHERE AN.POIDS = 10
ORDER BY HABITANT.NOM ASC ;

## Req 03

SELECT SUM(PRIX)
FROM ACHAT_MENHIR
WHERE IDHABITANT IS NOT NULL

## Req 04

W

## Req 05

```
```
