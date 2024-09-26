+++
title = 'TP2'
date = 2024-09-13T22:52:58+02:00
draft = false
+++
<a href="" download>Version PDF</a>

# Compte-rendu du TP 2 : Commandes de Base Sous Linux

## Objectifs

- Découvrir le Système de Gestion de Fichiers Linux et ses  commandes de base.

## Partie 1 : utilisation de la commande ls

### Quelles sont les informations affichées dans l’invite de commandes (le prompt) ?

L'utilisateur, la machine et le repertoire actuel.

### Exécutez la commande ls . Quel est le résultat de cette commande ?

Cette commande ne renvoie rien.

### Exécutez la commande ls /  . Quel est le résultat de cette commande ?

Cette commande affiche le contenu de la racine Root du disque. 

### Exécutez la commande ls -l / . Quel est le résultat de cette commande ?

Cette commande affiche egallement le contenu de la racine Root du disque, ainsi que des informations concernant les droits, la taille, la date et autres de chaque fichier ou repertoire.

###Sortir de la session root avec la commande : exit

```
exit
```

### Ouvrir une connexion avec votre compte pnom. Vous arrivez dans votre espace de travail personnel (working dir) situé dans le dossier home/pnom
```
[ebarroca@localhost ~]$
```

### Exécutez les commandes suivantes et essayez d'en interpréter le résultat :

### A quoi sert le double-point .. ? 	A quoi sert le point seul . ?

Le double point sert a aller en arriere d'un "etage" dans l'arbre, a l'inverse le simple point se refere au repertoire actuel. 

### Exécutez la commande pwd, De quoi en est composé le résultat ? Notez-le pour la suite.

Le resultat est le "Working Directory" c'est a dire le repertoire ou l'utilisateur se situe actuellement, dans notre cas "/home/ebarroca".

## Partie 2 : utilisation de la commande cd

### Quel est l'effet de la commande  cd Documents ?

La commande cd Documents nous emene dans le repertoire Documents que nous venons de creer a l'aide de la commande suivante ;
```
$ mkdir Documents
```
### A quoi sert la commande pwd ?

La commande pwd sert a afficher le repertoire ou l'utilisateur se situe actuellement.

### Quel est l'effet de la commande cd .. ?

La commande cd .. nous fais remonter d'un niveau dans la hierarchie des repertoires.






Puis il suffit d'installer le logiciel a l'aide de cette commande :

```
sudo apt install codium
```

Une fois le logiciel installer on peut le lancer :

```
codium
```

## Paramettrer un EDI 

### Langue

A notre arrive sur le logiciel la langue par defaut est probablement l'Anglais. Pou changer ce paramettre dans Visual Studio Code il suffit d'appuyer sur F1 et de saisir Display Language puis de choisir Install Aditional Languages et de selectionner French Language. 

### Tests

Pour verifier que les fonctionalitees de bases marchent, on peut essayer de creer le programme suivant en Python :

```
print('Hello World')
```

Cependant il est probable d'obtenir un message d'erreur indiquant que python n'est pas encore installe. Pour installer python il faut telecharger son extenstion depuis l'onglet Extensions dans VS Code : https://open-vsx.org/vscode/item?itemName=ms-python.python

Une fois cette operation realisee il suffit de relancer le programme original qui affichera donc Hello World dans la console. 

