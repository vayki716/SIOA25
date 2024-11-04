+++
title = 'TP1'
date = 2024-09-13T22:52:58+02:00
draft = false
+++
<a href="" download>Version PDF</a>

# Compte-rendu du TP 1 : Installer et configurer Visual Studio Code pour le développement Python dans Windows 10

## Objectifs

- Installer Python 3
- Installer configurer un environnement de développement intégré
- Créer un fichier python
- Écrire et exécuter du code Python simple dans Visual Studio Code

## Conditions de travail

- Travail individuel Matériel
- 1 machine virtuelle (VM) Windows 10 mise à votre disposition portant votre nom Chemin des VM : vcsa-sio.jolsio.net - DatacenterSIO - 1SIO - 1SIOB - TC2-2 accès vSphere pour accéder aux VM : https://10.15.11.4

## Ressources et documentation

- Internet : https://learn.microsoft.com/fr-fr/training/modules/python-install-vscode/



## Installation de Visual Studio Code via les commandes APT 

Avant de proceder a l'installation il est important de verifier que le system est bien a jour :

```
sudo apt update && sudo apt upgrade
```

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

