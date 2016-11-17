BattleText_0x80730: ; 0x80730
	text $52, " ramasse"
	line "¥@"
	deciram wPayDayMoney, $36
	text "!"
	prompt
; 0x80746

WildPokemonAppearedText: ; 0x80746
	text "Un @"
	text_from_ram EnemyMonNick
	text ""
	line "sauvage apparait!"
	prompt
; 0x8075c

HookedPokemonAttackedText: ; 0x8075c
	text "Le "
	line "@"
	text_from_ram EnemyMonNick
	text $55
	db " péché attaque!"
	prompt
; 0x80778

PokemonFellFromTreeText: ; 0x80778
	text "Un @"
	text_from_ram EnemyMonNick
	text ""
	line "tombe de l'arbre!"
	prompt
; 0x80793

WildCelebiAppearedText: ; 0x80793
	text "Un @"
	text_from_ram EnemyMonNick
	text ""
	line "sauvage apparait!"
	prompt
; 0x807a9

WantsToBattleText:: ; 0x807a9
	text $3f
	line "veut se battre!"
	prompt
; 0x807bd

BattleText_0x807bd: ; 0x807bd
	text "@"
	text_from_ram EnemyMonNick
	text " sauvage"
	line "s'est enfui!"
	prompt
; 0x807cf

BattleText_0x807cf: ; 0x807cf
	text "@"
	text_from_ram EnemyMonNick
	text " ennemi@"
	line "s'est enfui!"
	prompt
; 0x807e2

HurtByPoisonText: ; 0x807e2
	text $5a
	line "est blessé par"
	cont "le poison!"
	prompt
; 0x807f8

HurtByBurnText: ; 0x807f8
	text $5a, "'s"
	line " brule!"
	prompt
; 0x8080e

LeechSeedSapsText: ; 0x8080e
	text "LEECH SEED saps" ; TODO: A traduire
	line $5a, "!"
	prompt
; 0x80822

HasANightmareText: ; 0x80822
	text $5a
	line "a un cauchemar!"
	prompt
; 0x80836

HurtByCurseText: ; 0x80836
	text $5a, "'s"
	line "est bléssé par malédiction!" ;TODO: too long 
	prompt
; 0x8084d

SandstormHitsText: ; 0x8084d
	text "La tempete blesse "
	line $5a, "!"
	prompt
; 0x80864

PerishCountText: ; 0x80864
	text $5a, "'s" ;TODO: incorrect
	line "@"
	deciram wd265, $11
	text "tours restants!"
	prompt
; 0x80880

BattleText_0x80880: ; 0x80880
	text $59
	line "récupere avec"
	cont "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 0x80899

BattleText_0x80899: ; 0x80899
	text $5a
	line "récupere ses PP avec"
	cont "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 0x808b6

BattleText_0x808b6: ; 0x808b6
	text $59
	line "est touché par"
	cont "PRESCIENCE!"
	prompt
; 0x808d2

BattleText_0x808d2: ; 0x808d2
	text "RUNE PROTECT de"
	line $5a, "s'évanouit." ;TODO: check
	prompt
; 0x808e7

BattleText_0x808e7: ; 0x808e7
	text_from_ram StringBuffer1 ;TODO: incorrect
	text " #MON's"
	line "LIGHT SCREEN fell!"
	prompt
; 0x80905

BattleText_PkmnReflectFaded: ; 0x80905
	text_from_ram StringBuffer1 ;TODO: incorrect
	text " #MON's"
	line "REFLECT faded!"
	prompt
; 0x8091f

BattleText_0x8091f: ; 0x8091f
	text "La pluie continue"
	line "de tomber."
	prompt
; 0x80938

BattleText_0x80938: ; 0x80938
	text "Le soleil brille"
	line "fort."
	prompt
; 0x80951

BattleText_0x80951: ; 0x80951
	text "La tempete de sable"
	line "fait rage."
	prompt
; 0x80967

BattleText_0x80967: ; 0x80967
	text "La pluie s'est arrété."
	prompt
; 0x8097a

BattleText_0x8097a: ; 0x8097a
	text "Le soleil" ;TODO: check
	line "disparait."
	prompt
; 0x8098f

BattleText_0x8098f: ; 0x8098f
	text "La tempete de sable"
	line "s'affaiblit."
	prompt
; 0x809a8

BattleText_0x809a8: ; 0x809a8
	text "@"
	text_from_ram EnemyMonNick
	text ""
	line "ennemi est K.O.!"
	prompt
; 0x809be

BattleText_0x809be: ; 0x809be
	text $52, " recoit"
	line "¥@"
	deciram wc686, $36
	text ""
	prompt
; 0x809da

BattleText_0x809da: ; 0x809da
	text $3f
	line "a été vaincu!"
	prompt
; 0x809eb

TiedAgainstText: ; 0x809eb
	text "Tied against" ;TODO: context
	line $3f, "!"
	prompt
; 0x809fc

BattleText_0x809fc: ; 0x809fc
	text $52, " recoit ¥@"
	deciram wc686, $36
	text ""
	line "Une partie a été"
	cont "envoyée a MAMAN."
	prompt
; 0x80a2a

BattleText_0x80a2a: ; 0x80a2a
	text "La moitié a été envoyée"
	line "a MAMAN."
	prompt
; 0x80a3d

BattleText_0x80a3d: ; 0x80a3d
	text "Tout a été envoyé"
	line "a MAMAN."
	prompt
; 0x80a4f

BattleText_0x80a4f: ; 0x80a4f
	text $53, ": Huh?"
	line "J'aurai du choisir"
	cont "ton #MON!"
	prompt
; 0x80a75

BattleText_0x80a75: ; 0x80a75
	text_from_ram BattleMonNick
	text ""
	line "a été mis K.O.!"
	prompt
; 0x80a83

BattleText_0x80a83: ; 0x80a83
	text "Utiliser le #MON"
	line "suivant ?"
	done
; 0x80a93

BattleText_0x80a93: ; 0x80a93
	text $53, ": Oui!"
	line "Je pense avoir"
	cont "choisi un"
	cont "bon #MON!"
	prompt
; 0x80ab9

LostAgainstText: ; 0x80ab9
	text "Perdu contre"
	line $3f, "!"
	prompt
; 0x80aca

BattleText_0x80aca: ; 0x80aca
	text $3f
	line "va envoyer"
	cont "@"
	text_from_ram EnemyMonNick
	text "."

	para "Voulez-vous changer", $52
	line "de #MON?"
	done
; 0x80af8

BattleText_0x80af8: ; 0x80af8
	text $3f
	line "envoie"
	cont "@"
	text_from_ram EnemyMonNick
	text "!"
	done
; 0x80b0b

BattleText_0x80b0b: ; 0x80b0b
	text "There's no will to" ;TODO: context
	line "battle!"
	prompt
; 0x80b26

BattleText_0x80b26: ; 0x80b26
	text "Un OEUF ne peut"
	line "combattre!"
	prompt
; 0x80b3b

BattleText_0x80b3b: ; 0x80b3b
	text "Fuite impossible!"
	prompt
; 0x80b49

BattleText_0x80b49: ; 0x80b49
	text "Non! Impossible"
	line "de fuir contre"
	cont "un dresseur!"
	prompt
; 0x80b77

BattleText_0x80b77: ; 0x80b77
	text "Vous prenez"
	line "la fuite!"
	prompt
; 0x80b89

BattleText_0x80b89: ; 0x80b89
	text $5a
	line "prend la fuite"
	cont "avec @"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x80ba0

BattleText_0x80ba0: ; 0x80ba0
	text "Impossible de s'enfuir!"
	prompt
; 0x80bae

BattleText_0x80bae: ; 0x80bae
	text $5a, "est"
	line "blessé par PICTOS!"
	prompt
; 0x80bc2

RecoveredUsingText: ; 0x80bc2
	text $59
	line "récupère avec "
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x80bde

BattleText_0x80bde: ; 0x80bde
	text $5a, "'s" ;TODO: context
	line "@"
	text_from_ram StringBuffer1
	text $55
	db "activated!"
	prompt
; 0x80bf3

BattleText_0x80bf3: ; 0x80bf3
	text "Les objets ne peuv-"
	line "-ent etre utilisés"
	cont "ici."
	prompt
; 0x80c0d

BattleText_0x80c0d: ; 0x80c0d
	text_from_ram BattleMonNick
	text ""
	line "est déjà au combat."
	prompt
; 0x80c22

BattleText_0x80c22: ; 0x80c22
	text_from_ram BattleMonNick
	text ""
	line "ne peut revenir!"
	prompt
; 0x80c39

BattleText_0x80c39: ; 0x80c39
	text "Plus de PP"
	line "pour cette attaque!"
	prompt
; 0x80c5b

BattleText_0x80c5b: ; 0x80c5b
	text "L'attaque est "
	line "DISABLED!" ;TODO: incorrect
	prompt
; 0x80c72

BattleText_0x80c72: ; 0x80c72
	text_from_ram BattleMonNick
	text ""
	line "n'a plus d'attaques!" ;TODO: check
	done
; 0x80c8a

BattleText_0x80c8a: ; 0x80c8a
	text "ENCORE de"
	line $59, " prend fin."
	prompt
; 0x80c9c

BattleText_0x80c9c: ; 0x80c9c
	text_from_ram StringBuffer1 ;TODO: context
	text " grew to"
	line "level @"
	deciram CurPartyLevel, $13
	text "!@"
	sound0
	db "@"
; 0x80cb9

BattleText_0x80cb9: ; 0x80cb9
	db "@"
; 0x80cba

BattleText_0x80cba: ; 0x80cba
	text "@"
	text_from_ram EnemyMonNick
	text "sauvage"
	line "mange!"
	prompt
; 0x80cd1

BattleText_0x80cd1: ; 0x80cd1
	text "@"
	text_from_ram EnemyMonNick
	text "sauvage"
	line "se fache!"
	prompt
; 0x80ce7

FastAsleepText: ; 0x80ce7
	text $5a
	line "dort!"
	prompt
; 0x80cfa

WokeUpText: ; 0x80cfa
	text $5a
	line "se réveille!"
	prompt
; 0x80d06

FrozenSolidText: ; 0x80d06
	text $5a
	line "est congelé!"
	prompt
; 0x80d1a

FlinchedText: ; 0x80d1a
	text $5a
	line "a la trouille!"
	prompt
; 0x80d27

MustRechargeText: ; 0x80d27
	text $5a
	line "doit recharger!"
	prompt
; 0x80d39

DisabledNoMoreText: ; 0x80d39
	text $5a, " n'est"
	line "plus DISABLED!" ;TODO: incorrect
	prompt
; 0x80d4f

IsConfusedText: ; 0x80d4f
	text $5a
	line "est confus!"
	prompt
; 0x80d5f

HurtItselfText: ; 0x80d5f
	text "Il se blesse dans"
	line "sa confusion!"
	prompt
; 0x80d81

ConfusedNoMoreText: ; 0x80d81
	text $5a, ""
	line "n'est plus confus!"
	prompt
; 0x80d97

BecameConfusedText: ; 0x80d97
	text $59
	line "devient confus!"
	prompt
; 0x80dab
FatigueConfusedText: ; 0x80d97
	text $5a
	line "devient confus"
	cont "a cause de la fatigue!"
	prompt
; 0x80dab


BattleText_0x80dab: ; 0x80dab
	text "A @" ;TODO: context
	text_from_ram StringBuffer1
	text " rid"
	line $59
	cont "of its confusion."
	prompt
; 0x80dcc

AlreadyConfusedText: ; 0x80dcc
	text $59, " est"
	line "déja confus!"
	prompt
; 0x80de2

BattleText_0x80de2: ; 0x80de2
	text $5a, " est"
	line "bléssé par"
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x80df5

BattleText_0x80df5: ; 0x80df5
	text $5a
	line "est libéré de"
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x80e11

UsedBindText: ; 0x80e11
	text $5a
	line "utilise ETREINTE sur"
	cont $59, "!"
	prompt
; 0x80e24

WhirlpoolTrapText: ; 0x80e24
	text $59
	line "est piégé!"
	prompt
; 0x80e34

FireSpinTrapText: ; 0x80e34
	text $59
	line "est piégé!"
	prompt
; 0x80e44

WrappedByText: ; 0x80e44
	text $59
	line "est LIGOTE par"
	cont $5a, "!"
	prompt
; 0x80e59

ClampedByText: ; 0x80e59
	text $59
	line "was CLAMPED by" ;TODO: incorrect
	cont $5a, "!"
	prompt
; 0x80e6e

StoringEnergyText: ; 0x80e6e
	text $5a
	line "accumule de l'énergie!"
	prompt
; 0x80e84

UnleashedEnergyText: ; 0x80e84
	text $5a
	line "libère son énergie!"
	prompt
; 0x80e99

HungOnText: ; 0x80e99
	text $59
	line "hung on with" ;TODO: context
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x80eb0

EnduredText: ; 0x80eb0
	text $59
	line "tient le coup!"
	prompt
; 0x80ec4

InLoveWithText: ; 0x80ec4
	text $5a
	line "est amoureux de"
	cont $59, "!"
	prompt
; 0x80eda

InfatuationText: ; 0x80eda
	text $5a, "'s"
	line "infatuation kept" ;TODO: context
	cont "it from attacking!"
	prompt
; 0x80f02

DisabledMoveText: ; 0x80f02
	text $5a, "'s" ;TODO: context
	line "@"
	text_from_ram StringBuffer1
	text " is"
	cont "DISABLED!"
	prompt
; 0x80f19

LoafingAroundText: ; 0x80f19
	text_from_ram BattleMonNick
	text " flane."
	prompt
; 0x80f31

BeganToNapText: ; 0x80f31
	text_from_ram BattleMonNick
	text " fait"
	line "la sieste!"
	prompt
; 0x80f44

WontObeyText: ; 0x80f44
	text_from_ram BattleMonNick
	text " n'obéit"
	line "pas!"
	prompt
; 0x80f54

TurnedAwayText: ; 0x80f54
	text_from_ram BattleMonNick
	text " vous tourne"
	line "le dos!"
	prompt
; 0x80f66

IgnoredOrdersText: ; 0x80f66
	text_from_ram BattleMonNick
	text " ignore"
	line "les ordres!"
	prompt
; 0x80f7b

IgnoredSleepingText: ; 0x80f7b
	text_from_ram BattleMonNick
	text " vous"
	line "ignore<...>Il dort!"
	prompt
; 0x80f99

NoPPLeftText: ; 0x80f99
	text "Mais plus de PP"
	line "pour cette attaque!"
	prompt
; 0x80fba

HasNoPPLeftText: ; 0x80fba
	text $5a
	line "n'as plus de PP pour"
	cont "@"
	text_from_ram StringBuffer2
	text "!"
	prompt
; 0x80fd7

WentToSleepText: ; 0x80fd7
	text $5a
	line "s'endort!"
	done
; 0x80fe9

RestedText: ; 0x80fe9
	text $5a
	line "s'est endormi et"
	cont "récupère!"
	done
; 0x8100c

RegainedHealthText: ; 0x8100c
	text $5a
	line "récupère!"
	prompt
; 0x81020

AttackMissedText: ; 0x81020
	text "L'attaque de"
	line $5a, ""
	cont "a echouée!"
	prompt
; 0x81033

AttackMissed2Text: ; 0x81033
	text $5a, "manque"
	line "sa cible!"
	prompt
; 0x81046

CrashedText: ; 0x81046
	text $5a ;TODO: context
	line "kept going and"
	cont "crashed!"
	prompt
; 0x81061

UnaffectedText: ; 0x81061
	text $59, ""
	line "n'est pas affecté!"
	prompt
; 0x81071

DoesntAffectText: ; 0x81071
	text "Ca n'affecte pas"
	line $59, "!"
	prompt
; 0x81086

CriticalHitText: ; 0x81086
	text "Coup critique!"
	prompt
; 0x81097

OneHitKOText: ; 0x81097
	text "K.O. en un coup!"
	prompt
; 0x810aa

SuperEffectiveText: ; 0x810aa
	text "C'est super"
	line "efficace!"
	prompt
; 0x810c1

NotVeryEffectiveText: ; 0x810c1
	text "Ce n'est pas tres"
	line "efficace<...>"
	prompt
; 0x810da

TookDownWithItText: ; 0x810da
	text $59 ;TODO: context
	line "took down with it,"
	cont $5a, "!"
	prompt
; 0x810f3

RageBuildingText: ; 0x810f3
	text "La frénésie de"
	line $5a, ""
	cont "augmente!"
	prompt
; 0x81109

GotAnEncoreText: ; 0x81109
	text $59
	line "est sous ENCORE!" ;TODO: incorrect
	prompt
; 0x8111b

SharedPainText: ; 0x8111b
	text "Les combattants"
	line "partage leur douleur!" ;TODO: context
	prompt
; 0x81136

TookAimText: ; 0x81136
	text $5a
	line "vise!"
	prompt
; 0x81143

SketchedText: ; 0x81143
	text $5a
	line "SKETCHED" ;TODO: context
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x81156

DestinyBondEffectText: ; 0x81156
	text $5a, "'s" ;TODO: context
	line "trying to take its"
	cont "opponent with it!"
	prompt
; 0x8117f

SpiteEffectText: ; 0x8117f
	text $59, "'s" ;TODO: context
	line "@"
	text_from_ram StringBuffer1
	text " was"
	cont "reduced by @"
	deciram wd265, $11
	text "!"
	prompt
; 0x811a0

BellChimedText: ; 0x811a0
	text "Une cloche sonne!"
	line ""
	prompt
; 0x811b1

FellAsleepText: ; 0x811b1
	text $59
	line "s'endort!"
	prompt
; 0x811c1

AlreadyAsleepText: ; 0x811c1
	text $59, " est"
	line "déja endormi!"
	prompt
; 0x811d5
UserAlreadyAsleepText:
	text $5a, " est"
	line "déja endormi!"
	prompt

WasPoisonedText: ; 0x811d5
	text $59
	line "est empoisonné!"
	prompt
; 0x811e6

BadlyPoisonedText: ; 0x811e6
	text $59, " est"
	line "gravement"
	cont "empoisonné!"
	prompt
; 0x811fa

AlreadyPoisonedText: ; 0x811fa
	text $59, " est"
	line "déja empoisonné!"
	prompt
; 0x81210

SuckedHealthText: ; 0x81210
	text "Vie de"
	line $59, ""
	cont "aspirée!"
	prompt
; 0x81227

DreamEatenText: ; 0x81227
	text "Le reve de"
	line $59, ""
	cont "a été mangé!"
	prompt
; 0x8123c

WasBurnedText: ; 0x8123c
	text $59
	line "brule!"
	prompt
; 0x8124b

AlreadyBurnedText:
	text $59, " est"
	line "déja brulé!"
	prompt

DefrostedOpponentText: ; 0x8124b
	text $59
	line "a été décon-"
	cont "gelé!"
	prompt
; 0x8125d

WasFrozenText: ; 0x8125d
	text $59
	line "a été congelé!"
	prompt
; 0x81272

WontRiseAnymoreText: ; 0x81272
	text $5a, "'s" ;TODO: context
	line "@"
	text_from_ram StringBuffer2
	text " won't"
	cont "rise anymore!"
	prompt
; 0x8128f

WontDropAnymoreText: ; 0x8128f
	text $59, "'s" ;TODO: context
	line "@"
	text_from_ram StringBuffer2
	text " won't"
	cont "drop anymore!"
	prompt
; 0x812ac

FledFromBattleText:: ; 0x812ac
	text $5a
	line "s'est enfui"
	cont "du combat!"
	prompt
; 0x812c1

FledInFearText: ; 0x812c1
	text $59
	line "s'est enfui"
	cont "appeuré!"
	prompt
; 0x812d2

BlownAwayText: ; 0x812d2
	text $59
	line "a été emporté!"
	prompt
; 0x812e5

PlayerHitTimesText: ; 0x812e5
	text "Touché @"
	deciram PlayerDamageTaken, $11
	text " fois!"
	prompt
; 0x812f8

EnemyHitTimesText: ; 0x812f8
	text "Touché @"
	deciram EnemyDamageTaken, $11
	text " fois!"
	prompt
; 0x8130b

MistText: ; 0x8130b
	text $5a, " est"
	line "caché dans la"
	cont "brume."
	prompt
; 0x81321

ProtectedByMistText: ; 0x81321
	text $59, " est"
	line "protégé par la"
	cont "brume."
	prompt
; 0x81338

GettingPumpedText: ; 0x81338
	interpret_data ;TODO: context
	text $5a, "'s"
	line "getting pumped!"
	prompt
; 0x8134d

RecoilText: ; 0x8134d
	text $5a, " se"
	line "blesse en"
	cont "frappant!"
	prompt
; 0x81362

MadeSubstituteText: ; 0x81362
	text $5a
	line "se clone!"
	prompt
; 0x81378

HasSubstituteText: ; 0x81378
	text $5a
	line "a un clone!"
	prompt
; 0x8138d

TooWeakSubText: ; 0x8138d
	text "Trop faible pour"
	line "créer un clone!"
	prompt
; 0x813ad

SubTookDamageText: ; 0x813ad
	text "Le clone a pris"
	line "les dommages pour"
	cont $59, "!"
	prompt
; 0x813d0

SubFadedText: ; 0x813d0
	text "Le clone de"
	line $59, ""
	cont "disparait!"
	prompt
; 0x813e6

LearnedMoveText: ; 0x813e6
	text $5a
	line "apprend"
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x813f8

WasSeededText: ; 0x813f8
	text $59
	line "was seeded!" ;TODO: context
	prompt
; 0x81407

EvadedText: ; 0x81407
	text $59
	line "esquive l'attaque!"
	prompt
; 0x8141d

WasDisabledText: ; 0x8141d
	text $59, "'s" ;TODO: context
	line "@"
	text_from_ram StringBuffer1
	text " was"
	cont "DISABLED!"
	prompt
; 0x81435

CoinsScatteredText: ; 0x81435
	text "Des pieces de" ;TODO: incorrect
	line "monnaie! Partout!"
	prompt
; 0x81452

TransformedTypeText: ; 0x81452
	text $5a
	line "transformed into" ;TODO: context
	cont "the @"
	text_from_ram StringBuffer1
	text "-type!"
	prompt
; 0x81476

EliminatedStatsText: ; 0x81476
	text "Tout les changements" ;TODO: context
	line " de status sont"
	cont "soignés!"
	prompt
; 0x81499

TransformedText: ; 0x81499
	text $5a ;TODO: context
	line "TRANSFORMED into"
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x814b4

LightScreenEffectText: ; 0x814b4
	text "La DEF.SPE de"
	line $5a, ""
	cont "augmente!"
	prompt
; 0x814c7

ReflectEffectText: ; 0x814c7
	text "La DEFENSE de"
	text $5a, ""
	line "augmente!"
	prompt
; 0x814d9

NothingHappenedText: ; 0x814d9
	text "Mais rien ne"
	line "se passe."
	prompt
; 0x814f0

ButItFailedText: ; 0x814f0
	text "Mais échoue!"
	prompt
; 0x81500

ItFailedText: ; 0x81500
	text "Ca echoue!" ;TODO: context
	prompt
; 0x8150c

DidntAffect1Text: ; 0x8150c
	text "Ca n'affecte pas"
	line $59, "!"
	prompt
; 0x81520

DidntAffect2Text: ; 0x81520
	text "Ca n'affecte pas"
	line $59, "!"
	prompt
; 0x81534

HPIsFullText: ; 0x81534
	text "Les PV de"
	text $5a, ""
	line "sont restaurés!"
	prompt
; 0x81544

DraggedOutText: ; 0x81544
	text $5a
	line "est trainé hors"
	cont "du combat!"
	prompt
; 0x81558

ParalyzedText: ; 0x81558
	text $59, " est"
	line "paralysé!"
	cont "Il pourrait ne plus"
	cont "pouvoir attaquer."
	prompt
; 0x8157d

FullyParalyzedText: ; 0x8157d
	text $5a, " est"
	line "totalement"
	cont "paralysé!"
	prompt
; 0x81592

AlreadyParalyzedText: ; 0x81592
	text $59, " est"
	line "déja paralysé!"
	prompt
; 0x815a9

ProtectedByText: ; 0x815a9
	text $59, " est"
	line "protégé par"
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x815c1

MirrorMoveFailedText: ; 0x815c1
	text "The MIRROR MOVE", $4e, "failed!" ;TODO: context
	prompt
; 0x815da

StoleText: ; 0x815da
	text $5a
	line "vole @"
	text_from_ram StringBuffer1
	text $55
	db "a son adversaire!"
	prompt
; 0x815f7

CantEscapeNowText: ; 0x815f7
	text $59
	line "ne peut s'échapper!"
	prompt
; 0x8160b

StartedNightmareText: ; 0x8160b
	text $59
	line "a un "
	cont "cauchemar!"
	prompt
; 0x8162b

WasDefrostedText: ; 0x8162b
	text $5a
	line "a été décongelé!"
	prompt
; 0x8163d

PutACurseText: ; 0x8163d
	text $5a
	line "sacrifie ses PV"

	para "and maudit "
	line $59, "!"
	prompt
; 0x81665

ProtectedItselfText: ; 0x81665
	text $5a
	line "PROTECTED itself!"
	prompt
; 0x8167a

ProtectingItselfText: ; 0x8167a
	text $59, "'s"
	line "PROTECTING itself!"
	done
; 0x81691

SpikesText: ; 0x81691
	text "Des picots recou-"
	line "-vrent le sol"
	cont "autour de"
	cont $59, "!"
	prompt

; 0x816b1

IdentifiedText: ; 0x816b1
	text $5a
	line "identifié"
	cont $59, "!"
	prompt
; 0x816c2

StartPerishText: ; 0x816c2
	text "Les #MON seront"
	line "K.O. dans 3 tours!"
	prompt
; 0x816e4

SandstormBrewedText: ; 0x816e4
	text "Une tempete de sable"
	line "se leve!"
	prompt
; 0x816f9

BracedItselfText: ; 0x816f9
	text $5a
	line "se renforce!"
	prompt
; 0x8170b

FellInLoveText: ; 0x8170b
	text $59
	line "tombe amoureux!"
	prompt
; 0x8171c

CoveredByVeilText: ; 0x8171c
	text $5a, " est"
	line "recouvert par un voile!"
	prompt
; 0x81733

SafeguardProtectText: ; 0x81733
	text $59
	line "est protégé par"
	cont "RUNE PROTECT!"
	prompt
; 0x81751

MagnitudeText: ; 0x81751
	text "Magnétude @"
	deciram wd265, $11
	text "!"
	prompt
; 0x81764

ReleasedByText: ; 0x81764
	text $5a
	line "a été relaché par"
	cont $59, "!"
	prompt
; 0x8177a

ShedLeechSeedText: ; 0x8177a
	text $5a
	line "shed LEECH SEED!"
	prompt
; 0x8178e

BlewSpikesText: ; 0x8178e
	text $5a
	line "lance des picots!"
	prompt
; 0x817a3

DownpourText: ; 0x817a3
	text "Une averse"
	line "commence!"
	prompt
; 0x817b8

SunGotBrightText: ; 0x817b8
	text "Le soleil brille"
	line "fort!"
	prompt
; 0x817d2

BellyDrumText: ; 0x817d2
	text $5a
	line "sacrifie ses PV"
	cont "et augmente son ATK!"
	prompt
; 0x817f6

CopiedStatsText: ; 0x817f6
	text $5a
	line "compie les change-"

	para "-ments d'état de"
	line $59, "!"
	prompt
; 0x81817

ForesawAttackText: ; 0x81817
	text $5a
	line "prévoit l'attaque!"
	prompt
; 0x8182d

BeatUpAttackText: ; 0x8182d
	text_from_ram StringBuffer1
	text "'s"
	line "attack!" ;TODO: context
	done
; 0x8183b

RefusedGiftText: ; 0x8183b
	text $59
	line "refuse le cadeau!"
	prompt
; 0x81850

IgnoredOrders2Text: ; 0x81850
	text $5a
	line "ignore les ordres!"
	prompt
; 0x81863

BattleText_0x81863: ; 0x81863
	text "Erreur LINK<...>"

	para "Le combat a"
	line "été annulé<...>"
	prompt
; 0x8188e

BattleText_0x8188e: ; 0x8188e
	text "There is no time" ;TODO: context
	line "left today!"
	done
; 0x818ac
