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


### Exécutez la commande cd ../.. puis la commande pwd. Conclusion ? Exécutez la commande cd  Documents/MesCours puis la commande pwd, ensuite cd, enfin pwd. Quel est l'effet de la commande cd utilisée seule ?
```
$ cd ../..
$ pwd
```

```
$ cd Documents/MesCours
$ pwd
$ cd
$ pwd
```
