# Projets VHDL – Premiers Réalisations avec ModelSim
Ce dépôt présente mes premiers projets réalisés en VHDL, développés avec l’outil de simulation ModelSim. 
## Description des Projets

### 1. Circuit Combinatoire
Ce projet présente un circuit combinatoire implémentant différentes techniques d’assignation de signaux concurrentes. La description VHDL de la table de vérité correspondante est illustrée ci-dessous.

<p align="center"> 
  <img src="https://dl.dropboxusercontent.com/s/ksgjdm3oew0nklw/TruthTable.PNG">
</p>

### 2. ALU 4 bits
L’Unité Arithmétique et Logique (ALU) est un circuit combinatoire capable d’effectuer des opérations logiques et arithmétiques sur deux opérandes de 4 bits (A[3:0] et B[3:0]). Les opérations de l’ALU sont déterminées par trois entrées de sélection (S[2:0]). Les opérations logiques sont réalisées bit à bit, tandis que les opérations arithmétiques considèrent les valeurs en complément à deux. Le diagramme de blocs et la table de vérité de l’ALU sont présentés ci-dessous.

<p align="center"> 
  <img src="https://dl.dropboxusercontent.com/s/cl5yxw5zzegb3ys/ALU.png">
</p>

### 3. Conception Séquentielle – Horloge Digitale
Ce projet consiste en un compteur 32 bits "up_down" avec réinitialisation synchrone et une entrée d’activation (enable). En mode incrémentation, le compteur compte jusqu’à une "limite supérieure" avant de se réinitialiser à zéro, et en mode décrémentation, il compte jusqu’à zéro avant de revenir à la "limite supérieure".

### 4. Conception Séquentielle – Carrés Rotatifs
Dans ce projet, des carrés rotatifs sont implémentés sur des segments à sept. La figure ci-dessous illustre le fonctionnement du dispositif :

<p align="center"> 
  <img src="https://dl.dropboxusercontent.com/s/tr9v1q015tcgth0/RotatingSquares.png">
</p>