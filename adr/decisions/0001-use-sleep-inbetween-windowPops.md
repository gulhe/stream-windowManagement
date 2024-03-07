# Record architecture decisions

## Status

in-testing

## Context

J'ai un souci avec obs (v30.0.2-flatpack) qui capote fort quand je lance toutes mes fenêtres avec peu de temps décart.
Il est tout perturbé et me mélange mon horloge avec mon train etc ...

## Considered Solutions
Devenir compétent

### Pros
Ca m'aurait rendu compétent
### Cons
Ca prend un temps considérable

## Retained solution
C'est un peu claqué au sous-sol mais j'ai décidé de mettre un sleep (p'têt' en temporaire)
### Pros
je pense qu'on est sur un bug obs et que le sleep quasiment le seul truc qui lui permettrait de "retrouver ses petits"
### Limitations of the solution
C'est du sleep donc c'est une mauvaise TMTC (même si c'est vraiment pas une partie critique là parce que aucun traitement conséquent ne dépend de ce code, c'est du one time per-session)

## Consequences
Il y a des vieux `sleep` qui traient
