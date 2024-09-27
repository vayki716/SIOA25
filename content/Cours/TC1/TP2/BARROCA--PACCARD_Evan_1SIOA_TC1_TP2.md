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

### Sortir de la session root avec la commande : exit

```
exit
```

### Ouvrir une connexion avec votre compte pnom. Vous arrivez dans votre espace de travail personnel (working dir) situé dans le dossier home/pnom
```
[ebarroca@localhost ~]$
```

### Exécutez les commandes suivantes et essayez d'en interpréter le résultat : 
### Notez les résultats, ils vous serviront plus tard …

- ls .. 
btssio ebarroca

- ls ../..
afs bin boot dev ect home lib lib64 media mnt opt proc root run sbin srv sys tmp usr var

- ls .
Cette commande ne renvoie rien car le repertoire /home/ebarroca est vide.

- ls ../home/pnom
ls: cannot access '../home/ebarroca': No such file or directory
Dans ce cas, nous voyons qu'il est impossible pour l'ordinateur d'acceder de cet facon a notre repertoire 'ebarroca', on peux par exemple utiliser la commande "ls ../../home/ebarroca" pour regler ce probleme, ou simplement "ls ." .

- ls ~
Cette commande ne renvoie rien car le repertoire /home/ebarroca est vide.

- ls /
afs bin boot dev ect home lib lib64 media mnt opt proc root run sbin srv sys tmp usr var

### A quoi sert le double-point .. ? 	A quoi sert le point seul . ?

Le double point sert a aller en arriere d'un "etage" dans l'arbre, a l'inverse le simple point se refere au repertoire actuel. 

### Exécutez la commande pwd, De quoi en est composé le résultat ? Notez-le pour la suite.

Le resultat est le "Working Directory" c'est a dire le repertoire ou l'utilisateur se situe actuellement, dans notre cas "/home/ebarroca".

## Partie 2 : utilisation de la commande cd

### Exécutez la commande mkdir Documents pour créer un nouveau répertoire nommé Documents  dans votre espace de travail.
```
$ mkdir Documents
```

### Exécutez la commande cd Documents puis la commande pwd et, tant que l'on y est ls
```
$ cd Documents
$ pwd
$ ls
```

### Quel est l'effet de la commande  cd Documents ?

La commande cd Documents nous emene dans le repertoire Documents que nous venons de creer. 

### A quoi sert la commande pwd ?

La commande pwd sert a afficher le repertoire ou l'utilisateur se situe actuellement.

### Exécutez la commande cd .. puis la commande pwd et, là aussi ls. Quel est l'effet de la commande cd .. ?
```
$ cd ..
$ pwd
$ ls
```

La commande cd .. nous fais remonter d'un niveau dans la hierarchie des repertoires.

### Avec la commande mkdir, créez un répertoire MesCours dans le répertoire Documents
```
$ mkdir MesCours
```

### Exécutez la commande cd MesCours puis la commande pwd. Conclusion ?
```
$ cd MesCours
$ pwd
```
La commande pwd ne renvoie rien car le repertoire MesCours est vide.


### Exécutez la commande cd ../.. puis la commande pwd. Conclusion ? Exécutez la commande cd  Documents/MesCours puis la commande pwd, ensuite cd, enfin pwd. Quel est l'effet de la commande cd utilisée seule ?
```
$ cd ../..
$ pwd
```
La commande cd ../.. nous fait remonter de deux niveaux au dessus d'ou elle est utilisee.

```
$ cd Documents/MesCours
$ pwd
$ cd
$ pwd
```
Tandis que la commande cd, lorsque utilisee seule nous renvoie au working directory c'est a dire /home/ebarroca.

### L'effet de la commande cd utilisée seule dépend-il de l'endroit où l'on se trouvait avant ?

La commande cd utilisee seule renvoie toujours au working directory.

### Gérer les répertoires

#### 1. Positionnez-vous sur le répertoire pnom/Documents.
#### Avec la commande adéquate, assurez-vous que vous êtes bien positionné sur ce répertoire. Affichez-en le contenu. #### Exécutez la commande suivante :  mkdir exemples. Exécutez la commande suivante :  mkdir exemple1. Affichez à nouveau le contenu du répertoire Documents. A quoi sert la commande mkdir ?

```
$ pwd
$ ls
```
La commande ls renvoie un resultat; le repertoire MesCours.
```
$ mkdir exemples
$ mkdir exemple1
$ ls
```
A present, la commande ls renvoie trois resultats; les repertoires MesCours, exemples, exemple1. C'est a dire que la commande mkdir (make directory) permet de creer de nouveaux repertoires.

#### 2. Toujours positionné sur le répertoire Documents,  Exécutez la commande suivante : rmdir exemple1. 
#### Affichez à nouveau le contenu du répertoire Documents A quoi sert la commande rmdir ?

```
pwd
rmdir exemple1
ls
```
On observe que le repertoire exemple1 n'est plus present, en effet la commande rmdir (remove directory) permet de supprimer un repertoire vide.

#### 3. Exécutez la commande tree en étant positionné dans /home/pnom
```
tree
```

#### 4. Par la commande, ou la suite de commandes adéquate, positionnez-vous sur le répertoire Documents puis exécutez
```
ls  /home/pnom
ls ../../pnom
ls ~
```
####Le résultat est-il le même ? A quoi sert le signe « ~ » ?

Dans les 3 cas le resultat est le meme, nous affichons le contenu du working directory, que ce soit manuellement, en remontant a l'aide des .. ou en utilisant ls ~.

## Partie 4 : Création de répertoire (commande mkdir)

### Créez ce qui n'existe pas déjà dans l'arborescence suivante: « pnom » est votre login.
```
cd Documents
mkdir AP
cd MesCours
mkdir TC1
mkdir TC2
mkdir TC3
mkdir exemples
```
### Si on est positionné sur la racine / du système de fichiers, comment peut-on désigner sans ambiguïté le répertoire TC1 de l’arborescence pnom ?

Il suffit d'utiliser son chemin complet; /home/pnom/Documents/MesCours/TC1/

## Partie 5 : Les fichiers

#### 1. Créez-y un petit fichier de texte fich0.txt. Pour cela vous pouvez utiliser l'éditeur vi en tapant vi fich0.txt
 
#### 2. Parmi les commandes citées, recherchez celles qui peuvent servir à afficher le contenu de fich0.txt.

Les commandes "more" et "cat" permettent de lire le contenu d'un fichier texte.

#### 3. Avec l'une des commandes proposées, affichez les caractéristiques (taille, date et heure de dernière modification, ...) du fichier fich0.txt

Il est possible de rajouter l'option -l a la commande ls pour afficher certains details des fichiers affiches ;

Taille : 51ko
Date et heure de la derniere modification : Sep 27 15:21

#### 4. Recherchez la commande adéquate pour recopier fich0.txt dans un fichier fich1.txt. Dans l'écriture de la commande, l'ordre entre les 2 fichiers a-t-il une importance ?
```
cp fiche0.txt fiche1.txt
```
Oui car le premier est celui qui est copie, hors fiche1.txt n'existe pas encore et ne doit donc surtout pas etre en premier.

#### 5. Recherchez la commande adéquate pour renommer fich0.txt en fich00.txt. Dans l'écriture de la commande, l'ordre entre les 2 fichiers a-t-il une importance ?
```
mv fiche0.txt fiche00.txt
```
Oui car a nouveau le premier est celui qui est deplace/renome, hors fiche00.txt n'existe pas encore et ne doit donc surtout pas etre en premier.

#### 6. Quel est l'effet des commandes suivantes ?

- cp fich1.txt exemples : copie fiche1.txt dans le repertoire exemples.
- cp fich1.txt exemples/fich2.txt : copie fiche1.txt dans le repertoire exemples sous le nom fiche2.txt.
- mv fich00.txt exemples : deplace fiche00.txt dans le repertoire exemples.
- mv fich00.txt exemples/fich000.txt : deplace fiche00.txt dans le repertoire exemples sous le nom de fiche000.txt.
- rm fich1.txt : supprime le fichier fiche1.txt.
- rm exemples/fich000.txt supprime fiche000.txt depuis le repertoire MesCours.
