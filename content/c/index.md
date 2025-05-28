---
title: "Série complète : Programmation en C (initiation)"
description: "Cette série pédagogique vous initie à la programmation en langage C, en partant de zéro. Idéal pour les étudiants en école 42, EPITECH, ou les autodidactes passionnés."
tags:
  - langage C
  - programmation
  - tutoriels
  - école 42
  - EPITECH
  - débutants
layout: series
date: 2025-05-28
---

Bienvenue dans cette série de vidéos dédiée à l'apprentissage de la **programmation en C**, proposée par **Anabasis Technology**.

Vous y trouverez des vidéos progressives, allant des bases absolues (comme l'affichage d'un caractère à l'écran), jusqu'à des notions plus avancées comme l'allocation dynamique ou la programmation modulaire.

## Objectifs de la série

- Acquérir les bases du langage C
- Comprendre la logique algorithmique
- Apprendre à déboguer et corriger ses erreurs
- Poser des fondations solides pour aborder des projets plus complexes

## Liste des vidéos

Retrouvez ici les épisodes de la série :

{% for page in collections.c %}
- [{{ page.data.title }}]({{ page.url }})
{% endfor %}

## À propos

Cette série est destinée :
- aux élèves en **piscine 42** ou en prépa EPITECH,
- aux développeurs débutants souhaitant comprendre le C,
- aux passionnés de bas niveau, compilateurs et systèmes.

Des mises à jour régulières sont prévues.  
Bon apprentissage !

---