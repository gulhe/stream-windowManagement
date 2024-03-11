# Record architecture decisions

## Status

in-testing

## Context

J'ai un souci avec mon optimisme débordant qui a mis la grouille dans mes CPU FORT !
Quand je lance mes petites fenetres ça rame de ouf c'est pas acceptab'

## Considered Solutions

Rien d'autre que ce qui a été fait

### Pros
C'est rapide de rien envisager d'autre
### Cons
Ce baclé peut être (mais ça pourra évoluer)

## Retained solution
Rajouter du sleep à droite et à gauche pour _throttle_ tout le bouzin
### Pros
Ça marche et c'est _"izi moray"_.
### Limitations of the solution
C'est à peine moins fluide qu'avant et il faudrait aller plus loin avec du caching de la vache et du qr.

## Consequences
Cf le code shippé dans ce commit.
