# Pokémon Crystal 251
# TwitchPlaysPokemon Edition

Une dissasembly moddée de Pokémon Crystal, réalisée par la TPPDev pour Twitch Plays Pokemon. 

Pour configurer le repo, voir ici [**INSTALL.md**](INSTALL.md).

L'objectif de ce fork est de traduire le formidable travail de l'équipe TPPDev en Français. 

## Comment traduire ? 

### Editer les fichiers

Les fichiers ASM contiennent du code assembleur Z80, compréhensible par un GameBoy. Notre objectif ici est de changer les valeurs des chaînes de caractères présentent dans de multiples fichiers 
afin de traduire le jeu en français. Pour ce faire, explorez l'ensemble des fichiers et traduisez TOUT (Nom des villes, personnages, objets, dialogues). Il n'est pas necessaire de 
produire le même texte que dans les versions pokémon officielle mais de rendre un contenu de qualité permettant de conserver la crédibilité du jeu. 

Le texte peut être précédé de: 

* db "texte": ici rien de particulier, le texte est convertit en chaine d'octets bruts. 
* text [var, ] "texte": On signale au jeu que l'on veut afficher une boite de dialogue de texte (Not Sure)
* par "texte": on commence un nouveau paragraphe, on attent que la boite de dialogue soit vidée pour l'afficher 
* line "texte": une ligne de texte 
* cont "texte": Le joueur devra appuyer sur suivant pour afficher ce texte

D'une manière générale, on constate une construction comme suit: 

text "Dialogue"
line "salut"
cont "blah"

par "texte"
line "zbleh"
cont "ok"

### Tester sa traduction

Il est possible de tester votre traduction en lancant le script run.sh. Celui-ci va compiler le projet et executer bgb.exe (un excellent émulateur GameBoy) en chargeant votre production.

## Voir aussi

* Disassembly de [**Pokémon Red/Blue**][pokered]
* irc: **irc.freenode.net** [**#pret**][irc]

[pokered]: https://github.com/iimarckus/pokered
[irc]: https://kiwiirc.com/client/irc.freenode.net/?#pret
