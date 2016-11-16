# Pokémon Crystal 251
# TwitchPlaysPokemon Edition

Une dissasembly moddée de Pokémon Crystal, réalisée par la TPPDev pour Twitch Plays Pokemon. 

Pour configurer le repo, voir ici [**INSTALL.md**](INSTALL.md).

L'objectif de ce fork est de traduire le formidable travail de l'équipe TPPDev en Français. 


## WORKFLOW 

Avant de commencer à traduire, regardez dans la zone ci-dessous. Vérifiez que personne n'a déjà traduit ou ne soit en train de traduire la même zone que vous.  
Une fois votre zone de travail choisie, veuillez la transcrire ici.

| Nom            | Fichier         | n° ligne début - n° ligne fin |
|----------------|-----------------|-------------------------------|
| Clovis Portron |text/battle.asm | début du fichier - fin fichier |
| Clovis Portron |text/common.asm | début - l.600 |


## Comment traduire ? 

### Editer les fichiers

**Important:** Avant de vous lancer dans une session de développement, vérifiez la section WORKFLOW ci-dessus.

Une ligne de texte fait: 19 caractères !

Les fichiers ASM contiennent du code assembleur Z80, compréhensible par un GameBoy. Notre objectif ici est de changer les valeurs des chaînes de caractères présentent dans de multiples fichiers 
afin de traduire le jeu en français. Pour ce faire, explorez l'ensemble des fichiers et traduisez TOUT (Nom des villes, personnages, objets, dialogues). Il n'est pas necessaire de 
produire le même texte que dans les versions pokémon officielle mais de rendre un contenu de qualité permettant de conserver la crédibilité du jeu. 

Le texte peut être précédé de: 

* db "texte": ici rien de particulier, le texte est convertit en chaine d'octets bruts. 
* text [var, ] "texte": On signale au jeu que l'on veut afficher une boite de dialogue de texte (Not Sure)
* par "texte": on commence un nouveau paragraphe, on attent que la boite de dialogue soit vidée pour l'afficher 
* line "texte": une ligne de texte 
* cont "texte": Le joueur devra appuyer sur suivant pour afficher ce texte
* text_from_ram constante: permet d'afficher du texte stocké dans la ram. Il doit impérativement être précédé d'un texte non vide (text "@" et suivit d'un autre text "suite phrase")

D'une manière générale, on constate une construction comme suit: 

    text "Dialogue"
    line "salut"
    cont "blah"

    par "texte"
    line "zbleh"
    cont "ok"

Au court de votre traduction, il se peut que vous ne sachiez pas comment traduire une phrase. Dans ce cas signalez comme suit: 

    ;TODO: msg

msg étant ici: 

* incorrect :  Vous savez votre traduction hasardeuse
* context : Le message peut ne pas collre au contexte 
* un texte de votre production expliquant votre problématique 

### Tester sa traduction

Il est possible de tester votre traduction en lancant le script run.sh. Celui-ci va compiler le projet et executer bgb.exe (un excellent émulateur GameBoy) en chargeant votre production.

L'objectif est ici de faire en sorte que le texte traduit exprime bien le message de base. Mais également qu'il n'entraine pas de problèmes graphiques, aussi veillez: 

* Problèmes de dépassement du cadre
* Aucun caractère spécial autorisé sauf é

## Voir aussi

* Disassembly de [**Pokémon Red/Blue**][pokered]
* irc: **irc.freenode.net** [**#pret**][irc]

[pokered]: https://github.com/iimarckus/pokered
[irc]: https://kiwiirc.com/client/irc.freenode.net/?#pret
