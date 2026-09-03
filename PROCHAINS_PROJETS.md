# Idées de prochains projets

Liste de projets envisagés, à faire dans cet ordre suggéré.

## 1. Portage du CPU en VHDL sur FPGA réel

- Réécrire le CPU fait l'an dernier en SHDL (cours) en **VHDL**, langage réellement synthétisable.
- Le faire tourner sur une vraie carte FPGA (Basys 3, DE10-Nano, etc.), pas juste en simulation.
- Intérêt : compétence directement valorisable en embarqué/avionique/défense (Thales, Dassault, MBDA), gestion réelle de la synthèse et des contraintes matérielles.
- Pas de recoupement avec les cours S7 → à faire dès maintenant.

## 2. Étendre le mini shell

- Reprendre le mini shell fait l'an dernier et ajouter : pipes, redirections, job control (`&`, `fg`/`bg`), variables d'environnement, scripting.
- Projet déjà à soi, aucun recoupement avec le programme de cette année.

## 3. Embarqué / bare-metal

- Projet bare-metal sur carte type STM32 (ou FPGA), sans OS.
- Cohérent avec l'objectif de carrière (ingénieur logiciel embarqué).
- Pas couvert par le programme ASR S7.

## 4. (Après les cours d'archi/réseaux/compil) Assembleur + compilateur pour le CPU maison

- Écrire un assembleur pour le jeu d'instructions du CPU perso.
- Écrire un compilateur (sous-ensemble de C ou petit langage perso) qui cible cet assembleur.
- Objectif : fermer la chaîne complète — compilateur → assembleur → exécution sur le CPU maison (FPGA).
- À faire **après** le cours "Traduction des Langages" (S7, compilation) et "Architecture des Ordinateurs" pour ne pas faire doublon avec le programme et repartir sur des bases solides.

---

Contexte : filière ASR (Architecture des Systèmes et Réseaux) à l'ENSEEIHT, programme S7 couvrant architecture des ordinateurs, réseaux locaux/télécom, traduction des langages, systèmes concurrents/répartis, internet et théorie des graphes (cf. catalogue des cours, p.44).
