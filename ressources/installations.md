
# Installation d’Oxygen Editor

Pas de pb version 10.8.5

# Installation de BaseX

Sur Mac OS X, si vous exécutez le fichier `BaseX.jar` contenu dans le dossier téléchargé, vous pourriez voir apparaître le message suivant :

```
  Pour ouvrir JavaAplication, il vous faut un moteur d’exécution JavaSE 6. Voulez-vous en installer un maintenant ?
```

Choisir "Pas maintenant"

La version 8 de BaseX nécessite au moins la version 7 de Java. Affin de profiter pleinement des fonctionnalités de BaseX, nous vous conseillons d’installer la version 8 de la JDK.

[instructions ci-dessous]


## Installation de JDK 8 (Mac OSX)

Pour exécuter BaseX en mode serveur ou d’autres programmes, vous pourriez avoir besoin du Java Development Kit de la version 8. Ce programme n’est pas distribué par défaut avec Mac OSX.

- Télécharger Java Development kit version 8
- Allez sur la page http://www.oracle.com/technetwork/java/javase/downloads/index.html
- Cliquez sur le bouton « Download » sous JDK
- Dans le nouvel écran, cochez la case « Accept Licence agreement »
- Puis choisissez la version appropriée à télécharger dans la liste.
Sur Mac OS X, sélectionnez `x64	221.98 MB  jdk-8u45-macosx-x64.dmg`
- Ouvrez l’image disque téléchargée (nommé quelque chose comme  `jdk-8u45-macosx-x64.dmg`)
- Dans la fenête qui s’ouvre, exécutez le programme d’installation en double-cliquant sur l’icône en forme de paquet.
- Suivre les instructions du programme d’installation de JDK

**Et voilà !**


## Java 8 sur Mac OSX 10.9.5

À partir de Mac OSX 10.8, l’installation par défaut de la JDK se fait dans le répertoire suivant :
`/System/Library/Java/`

Structuration du répertoire :
Java
-- Extensions
-- JavaVirtualMachines
-- -- 1.8.0_11.jdk
-- Support
