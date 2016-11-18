PrintItemDescription: ; 0x1c8955
; Print the description for item [CurSpecies] at de.

	ld a, [CurSpecies]
	cp TM_DYNAMICPUNCH
	jr c, .not_a_tm

	ld [CurItem], a
	push de
	callba GetTMHMItemMove
	pop hl
	ld a, [wd265]
	ld [CurSpecies], a
	predef PrintMoveDesc
	ret

.not_a_tm
	push de
	cp S_S_TICKET
	jr nz, .not_ss_ticket
	ld a, [StatusFlags]
	bit 5, a
	ld de, SSTicketEGKDesc
	jr z, .okay
.not_ss_ticket
	ld hl, ItemDescriptions
	ld a, [CurSpecies]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld e, [hl]
	inc hl
	ld d, [hl]
.okay
	pop hl
	jp PlaceString
; 0x1c8987


ItemDescriptions:
	dw MasterBallDesc
	dw UltraBallDesc
	dw BrightpowderDesc
	dw GreatBallDesc
	dw PokeBallDesc
	dw PremierBallDesc
	dw BicycleDesc
	dw MoonStoneDesc
	dw AntidoteDesc
	dw BurnHealDesc
	dw IceHealDesc
	dw AwakeningDesc
	dw ParlyzHealDesc
	dw FullRestoreDesc
	dw MaxPotionDesc
	dw HyperPotionDesc
	dw SuperPotionDesc
	dw PotionDesc
	dw EscapeRopeDesc
	dw RepelDesc
	dw MaxElixerDesc
	dw FireStoneDesc
	dw ThunderStoneDesc
	dw WaterStoneDesc
	dw PoisonGuardDesc
	dw HPUpDesc
	dw ProteinDesc
	dw IronDesc
	dw CarbosDesc
	dw LuckyPunchDesc
	dw CalciumDesc
	dw RareCandyDesc
	dw XAccuracyDesc
	dw LeafStoneDesc
	dw MetalPowderDesc
	dw NuggetDesc
	dw PokeDollDesc
	dw FullHealDesc
	dw ReviveDesc
	dw MaxReviveDesc
	dw GuardSpecDesc
	dw SuperRepelDesc
	dw MaxRepelDesc
	dw DireHitDesc
	dw BurnGuardDesc
	dw FreshWaterDesc
	dw SodaPopDesc
	dw LemonadeDesc
	dw XAttackDesc
	dw FreezeGuardDesc
	dw XDefendDesc
	dw XSpeedDesc
	dw XSpecialDesc
	dw CoinCaseDesc
	dw ItemfinderDesc
	dw PokeFluteDesc
	dw ExpShareDesc
	dw OldRodDesc
	dw GoodRodDesc
	dw SilverLeafDesc
	dw SuperRodDesc
	dw PPUpDesc
	dw EtherDesc
	dw MaxEtherDesc
	dw ElixerDesc
	dw RedScaleDesc
	dw SecretPotionDesc
	dw SSTicketDesc
	dw MysteryEggDesc
	dw ClearBellDesc
	dw SilverWingDesc
	dw MoomooMilkDesc
	dw QuickClawDesc
	dw PsnCureBerryDesc
	dw GoldLeafDesc
	dw SoftSandDesc
	dw SharpBeakDesc
	dw PrzCureBerryDesc
	dw BurntBerryDesc
	dw IceBerryDesc
	dw PoisonBarbDesc
	dw KingsRockDesc
	dw BitterBerryDesc
	dw MintBerryDesc
	dw RedApricornDesc
	dw TinyMushroomDesc
	dw BigMushroomDesc
	dw SilverPowderDesc
	dw BluApricornDesc
	dw SleepGuardDesc
	dw AmuletCoinDesc
	dw YlwApricornDesc
	dw GrnApricornDesc
	dw CleanseTagDesc
	dw MysticWaterDesc
	dw TwistedSpoonDesc
	dw WhtApricornDesc
	dw BlackbeltDesc
	dw BlkApricornDesc
	dw ParlyzGuardDesc
	dw PnkApricornDesc
	dw BlackGlassesDesc
	dw SlowpokeTailDesc
	dw PinkBowDesc
	dw StickDesc
	dw SmokeBallDesc
	dw NeverMeltIceDesc
	dw MagnetDesc
	dw MiracleBerryDesc
	dw PearlDesc
	dw BigPearlDesc
	dw EverStoneDesc
	dw SpellTagDesc
	dw RageCandyBarDesc
	dw GSBallDesc
	dw BlueCardDesc
	dw MiracleSeedDesc
	dw ThickClubDesc
	dw FocusBandDesc
	dw ConfuseGuardDesc
	dw EnergyPowderDesc
	dw EnergyRootDesc
	dw HealPowderDesc
	dw RevivalHerbDesc
	dw HardStoneDesc
	dw LuckyEggDesc
	dw CardKeyDesc
	dw MachinePartDesc
	dw EggTicketDesc
	dw LostItemDesc
	dw StardustDesc
	dw StarPieceDesc
	dw BasementKeyDesc
	dw PassDesc
	dw HelixFossilDesc
	dw DomeFossilDesc
	dw OldAmberDesc
	dw CharcoalDesc
	dw BerryJuiceDesc
	dw ScopeLensDesc
	dw OaksParcelDesc
	dw PowerHerbDesc
	dw MetalCoatDesc
	dw DragonFangDesc
	dw FriendCharmDesc
	dw LeftoversDesc
	dw ResearchNotesDesc
	dw TeruSama16Desc
	dw TeruSama17Desc
	dw MysteryBerryDesc
	dw DragonScaleDesc
	dw BerserkGeneDesc
	dw TeruSama18Desc
	dw XSpDefDesc
	dw TeruSama20Desc
	dw SacredAshDesc
	dw HeavyBallDesc
	dw FlowerMailDesc
	dw LevelBallDesc
	dw LureBallDesc
	dw FastBallDesc
	dw TeruSama21Desc
	dw LightBallDesc
	dw FriendBallDesc
	dw MoonBallDesc
	dw LoveBallDesc
	dw NormalBoxDesc
	dw GorgeousBoxDesc
	dw SunStoneDesc
	dw PolkadotBowDesc
	dw TeruSama22Desc
	dw UpGradeDesc
	dw BerryDesc
	dw GoldBerryDesc
	dw SquirtBottleDesc
	dw TeruSama23Desc
	dw ParkBallDesc
	dw RainbowWingDesc
	dw TeruSama24Desc
	dw BrickPieceDesc
	dw SurfMailDesc
	dw LiteBlueMailDesc
	dw PortraitMailDesc
	dw LovelyMailDesc
	dw EonMailDesc
	dw MorphMailDesc
	dw BlueSkyMailDesc
	dw MusicMailDesc
	dw MewMailDesc
	dw TeruSama25Desc
	dw TeruSama26Desc
	dw TeruSama26Desc
	dw TeruSama26Desc
	dw TeruSama26Desc
	dw TeruSama26Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama29Desc
	dw TeruSama30Desc
	dw TeruSama31Desc
	dw TeruSama32Desc
	dw TeruSama33Desc

MasterBallDesc:
	db   "La meilleure Ball."
	next "Ne rate jamais.@"

UltraBallDesc:
	db   "BALL avec un haut"
	next "taux de succes.@"

BrightpowderDesc:
	db   "Baisse précision"
	next "de l'ennemi.(TENU)@"

GreatBallDesc:
	db   "BALL avec un taux"
	next "de succes décent.@"

PokeBallDesc:
	db   "Objet pour captur-"
	next "-er les PKMN.@"

PremierBallDesc:
	db   "Un BALL crée pour"
	next "un évenement.@"

BicycleDesc:
	db   "Un vélo pliable"
	next "pour se balader.@"

MoonStoneDesc:
	db   "Fait évoluer"
	next "certains PKMN.@"

AntidoteDesc:
	db   "Soigne les" ;TODO: incorrect (trop longue voir vrai définition française)
	next "PKMN empoisonés.@"

BurnHealDesc:
	db   "Soigne les"
	next "PKMN brulés.@"

IceHealDesc:
	db   "Dégele les"
	next "PKMN gelés.@"

AwakeningDesc:
	db   "Réveille les"
	next "PKMN endormis.@"

ParlyzHealDesc:
	db   "Soigne les"
	next "PKMN paralysés.@"

FullRestoreDesc:
	db   "Restore PV"
	next "& statut.@"

MaxPotionDesc:
	db   "Restaure tout les"
	next "PV d'un PKMN.@" ;TODO: incorrect (trop longue)

HyperPotionDesc:
	db   "Restaure 200 PV"
	next "a un PKMN.@"

SuperPotionDesc:
	db   "Restaure 50 PV"
	next "a un PKMN.@"

PotionDesc:
	db   "Restaure 20PV a"
	next "un PKMN.@"

EscapeRopeDesc:
	db   "Pour s'enfuir"
	next "d'une grotte, etc.@"

RepelDesc:
	db   "Repousse faibles"
	next "PKMN pour 100 pas.@"

MaxElixerDesc:
	db   "Redonne tout ses"
	next "PP a un PKMN.@"

FireStoneDesc:
	db   "Fait évoluer cer-"
	next "tains PKMN.@"

ThunderStoneDesc:
	db   "Fait évoluer cer-"
	next "tains PKMN.@"

WaterStoneDesc:
	db   "Fait évoluer cer-"
	next "tains PKMN.@"

TeruSama2Desc:
	db   "?@"

HPUpDesc:
	db   "Monte les PV d'un"
	next "#MON.@"

ProteinDesc:
	db   "Monte l'ATTAQUE"
	next "d'un #MON.@"

IronDesc:
	db   "Monte la DEFENSE"
	next "d'un PKMN.@"

CarbosDesc:
	db   "Monte la VITESSE"
	next "d'un #MON.@"

LuckyPunchDesc:
	db   "Ups critical hit" ;TODO: context
	next "ratio of CHANSEY.@"

CalciumDesc:
	db   "Monte le SPECIAL"
	next "d'un #MON.@"

RareCandyDesc:
	db   "Fait monter un PKMN"
	next "d'un niveau.@"

XAccuracyDesc:
	db   "MONTE la préci-"
	next "sion. (1 CBT)@"

LeafStoneDesc:
	db   "Fait évoluer cer-"
	next "tains PKMN.@"

MetalPowderDesc:
	db   "Raises DEFENSE of" ;TODO:context
	next "DITTO. (HOLD)@"

NuggetDesc:
	db   "Pepite d'or pur."
	next "Se vend cher.@"

PokeDollDesc:
	db   "Pour s'enfuir face"
	next "a un PKMN sauvage.@"

FullHealDesc:
	db   "Elimine les pro-"
	next "blemes de statut.@"

ReviveDesc:
	db   "Réanime #MON KO"
	next "avec 1/2 PV.@"

MaxReviveDesc:
	db   "Réanime un #MON KO"
	next "avec tout ses PV.@"

GuardSpecDesc:
	db   "Empeche les chgts"
	next "de statut. (1 CBT)@"

SuperRepelDesc:
	db   "Repousse faibles"
	next "PKMN pour 200 pas.@"

MaxRepelDesc:
	db   "Repousse faibles"
	next "PKMN pour 250 pas.@"

DireHitDesc:
	db   "Plus de chances de"
	next "critiques. (1 CBT)@"

TeruSama3Desc:
	db   "?@"

FreshWaterDesc:
	db   "Restaure 50 PV"
	next "a un PKMN.@"

SodaPopDesc:
	db   "Restaure 60 PV"
	next "a un PKMN.@"

LemonadeDesc:
	db   "Restaure 80 PV"
	next "a un PKMN.@"

XAttackDesc:
	db   "Monte l'ATTAQUE."
	next "(1 BTL)@"

TeruSama4Desc:
	db   "?@"

XDefendDesc:
	db   "Monte la DEFENSE."
	next "(1 CBT)@"

XSpeedDesc:
	db   "Monte la VITESSE."
	next "(1 CBT)@"

XSpecialDesc:
	db   "Monte l'ATQ.SPE."
	next "(1 CBT)@"

CoinCaseDesc:
	db   "Contient jusqu'a"
	next "9999 jetons.@"

ItemfinderDesc:
	db   "Voir objets invi-"
	next "sibles de la zone.@"


PokeFluteDesc:
	db   "Wakes up all"
	next "sleeping PKMN.@"

ExpShareDesc:
	db   "Partage les pts"
	next "d'EXP. (TENU)@"

OldRodDesc:
	db   "Pour pecher les"
	next "PKMN dans l'eau.@"

GoodRodDesc:
	db   "Une bonne canne a"
	next "pecher les PKMN.@"

SilverLeafDesc:
	db   "Plume mystique"
	next "arc-en-ciel.@"

SuperRodDesc:
	db   "La meilleure canne"
	next "a pecher les PKMN.@"

PPUpDesc:
	db   "Monte le max de PP"
	next "d'une capacité.@"

EtherDesc:
	db   "Restaure 10 PP"
	next "d'une capacité.@"

MaxEtherDesc:
	db   "Restaure le PP"
	next "d'une capacité.@"

ElixerDesc:
	db   "Restaure 10 PP a"
	next "toutes capacités.@"

RedScaleDesc:
	db   "Ecaille du LEVIA-"
	next "TOR rouge.@"

SecretPotionDesc:
	db   "Fully heals any"
	next "PKMN.@"

SSTicketDesc:
	db   "Un ticket pour"
	next "l'AQUARIA.@"

MysteryEggDesc:
	db   "An EGG obtained"
	next "from MR.PKMN.@"

ClearBellDesc:
	db   "Sonne doucement"
	next "@"

SilverWingDesc:
	db   "Une étrange plume"
	next "argentée.@"

MoomooMilkDesc:
	db   "Restores PKMN"
	next "HP by 100.@"

QuickClawDesc:
	db   "Raises 1st strike"
	next "ratio. (HOLD)@"

PsnCureBerryDesc:
	db   "A self-cure for"
	next "poison. (HOLD)@"

GoldLeafDesc:
	db   "A strange, gold-"
	next "colored leaf.@"

SoftSandDesc:
	db   "Powers up ground-"
	next "type moves. (HOLD)@"

SharpBeakDesc:
	db   "Powers up flying-"
	next "type moves. (HOLD)@"

PrzCureBerryDesc:
	db   "A self-cure for"
	next "paralysis. (HOLD)@"

BurntBerryDesc:
	db   "A self-cure for"
	next "freezing. (HOLD)@"

IceBerryDesc:
	db   "A self-heal for a"
	next "burn. (HOLD)@"

PoisonBarbDesc:
	db   "Powers up poison-"
	next "type moves. (HOLD)@"

KingsRockDesc:
	db   "May make the foe"
	next "flinch. (HOLD)@"

BitterBerryDesc:
	db   "A self-cure for"
	next "confusion. (HOLD)@"

MintBerryDesc:
	db   "A self-awakening"
	next "for sleep. (HOLD)@"

RedApricornDesc:
	db   "A red APRICORN.@"

TinyMushroomDesc:
	db   "An ordinary mush-"
	next "room. Sell low.@"

BigMushroomDesc:
	db   "A rare mushroom."
	next "Sell high.@"

SilverPowderDesc:
	db   "Powers up bug-type"
	next "moves. (HOLD)@"

BluApricornDesc:
	db   "A blue APRICORN.@"

TeruSama6Desc:
	db   "?@"

AmuletCoinDesc:
	db   "Double les gains"
	next "d'argent. (TENU)@"

YlwApricornDesc:
	db   "A yellow APRICORN.@"

GrnApricornDesc:
	db   "A green APRICORN.@"

CleanseTagDesc:
	db   "Helps repel wild"
	next "PKMN. (HOLD)@"

MysticWaterDesc:
	db   "Powers up water-"
	next "type moves. (HOLD)@"

TwistedSpoonDesc:
	db   "Powers up psychic-"
	next "type moves. (HOLD)@"

WhtApricornDesc:
	db   "A white APRICORN.@"

BlackbeltDesc:
	db   "Boosts fighting-"
	next "type moves. (HOLD)@"

BlkApricornDesc:
	db   "A black APRICORN."
	next "@"

TeruSama7Desc:
	db   "?@"

PnkApricornDesc:
	db   "A pink APRICORN."
	next "@"

BlackGlassesDesc:
	db   "Powers up dark-"
	next "type moves. (HOLD)@"

SlowpokeTailDesc:
	db   "Tres bon. Se vend"
	next "cher.@"

PinkBowDesc:
	db   "Powers up fairy-"
	next "type moves. (HOLD)@"

StickDesc:
	db   "An ordinary stick."
	next "Sell low.@"

SmokeBallDesc:
	db   "Escape from wild"
	next "PKMN. (HOLD)@"

NeverMeltIceDesc:
	db   "Powers up ice-type"
	next "moves. (HOLD)@"

MagnetDesc:
	db   "Boosts electric-"
	next "type moves. (HOLD)@"

MiracleBerryDesc:
	db   "Cures all status"
	next "problems. (HOLD)@"

PearlDesc:
	db   "A beautiful pearl."
	next "Sell low.@"

BigPearlDesc:
	db   "A big, beautiful"
	next "pearl. Sell high.@"

EverStoneDesc:
	db   "Stops evolution."
	next "(HOLD)@"

SpellTagDesc:
	db   "Powers up ghost-"
	next "type moves. (HOLD)@"

RageCandyBarDesc:
	db   "Restaure 20 PV"
	next "d'un #MON.@"

GSBallDesc:
	db   "The mysterious"
	next "BALL.@"

BlueCardDesc:
	db   "Carte pour gagner"
	next "des points.@"

MiracleSeedDesc:
	db   "Powers up grass-"
	next "type moves. (HOLD)@"

ThickClubDesc:
	db   "A bone of some"
	next "sort. Sell low.@"

FocusBandDesc:
	db   "May prevent faint-"
	next "ing. (HOLD)@"

TeruSama8Desc:
	db   "?@"

EnergyPowderDesc:
	db   "Restores PKMN"
	next "HP by 50. Bitter.@"

EnergyRootDesc:
	db   "Restores PKMN"
	next "HP by 200. Bitter.@"

HealPowderDesc:
	db   "Cures all status"
	next "problems. Bitter.@"

RevivalHerbDesc:
	db   "Revives fainted"
	next "PKMN. Bitter.@"

HardStoneDesc:
	db   "Powers up rock-"
	next "type moves. (HOLD)@"

LuckyEggDesc:
	db   "Earns extra EXP."
	next "points. (HOLD)@"

CardKeyDesc:
	db   "Ouvre les volets"
	next "dans TOUR RADIO.@"

MachinePartDesc:
	db   "A machine part for"
	next "the POWER PLANT.@"

EggTicketDesc:
	db   "A utiliser au"
	next "CENTRE TROC.@"

LostItemDesc:
	db   "The # DOLL lost"
	next "by the COPYCAT.@"

StardustDesc:
	db   "Pretty, red sand."
	next "Sell high.@"

StarPieceDesc:
	db   "A hunk of red gem."
	next "Sell very high.@"

BasementKeyDesc:
	db   "Ouvre des portes.@"

PassDesc:
	db   "Un ticket pour le"
	next "TRAIN MAGNET.@"

TeruSama9Desc:
	db   "?@"

TeruSama10Desc:
	db   "?@"

TeruSama11Desc:
	db   "?@"

CharcoalDesc:
	db   "Renforce capacités"
	next "FEU. (TENU)@"

BerryJuiceDesc:
	db   "Restores PKMN"
	next "HP by 20.@"

ScopeLensDesc:
	db   "Raises critical"
	next "hit ratio. (HOLD)@"

OaksParcelDesc:
	db   "A package for"
	next "PROF.OAK.@"

PowerHerbDesc:
	db   "Speeds up 2-turn"
	next "moves. (HOLD)@"

MetalCoatDesc:
	db   "Powers up steel-"
	next "type moves. (HOLD)@"

DragonFangDesc:
	db   "Powers up dragon-"
	next "type moves. (HOLD)@"

FriendCharmDesc:
	db   "Increases catch"
	next "rate. (HOLD)@"

LeftoversDesc:
	db   "Restores HP during"
	next "battle. (HOLD)@"

ResearchNotesDesc:
	db   "Description of a"
	next "rare PKMN.@"

TeruSama16Desc:
	db   "?@"

TeruSama17Desc:
	db   "?@"

MysteryBerryDesc:
	db   "A self-restore"
	next "for PP. (HOLD)@"

DragonScaleDesc:
	db   "A rare dragon-type"
	next "item.@"

BerserkGeneDesc:
	db   "Boosts ATTACK but"
	next "causes confusion.@"

TeruSama18Desc:
	db   "?@"

XSpDefDesc:
	db   "MONTE la DEF.SPE."
	next "(1 CBT)@"

TeruSama20Desc:
	db   "?@"

SacredAshDesc:
	db   "Fully revives all"
	next "fainted PKMN.@"

HeavyBallDesc:
	db   "A BALL for catch-"
	next "ing heavy PKMN.@"

FlowerMailDesc:
	db   "LETTRE a fleurs."
	next "(TENU)@"

LevelBallDesc:
	db   "Une BALL pour #MON"
	next "de niveau moindre.@"

LureBallDesc:
	db   "A BALL for PKMN"
	next "hooked by a ROD.@"

FastBallDesc:
	db   "A BALL for catch-"
	next "ing fast PKMN.@"

TeruSama21Desc:
	db   "?@"

LightBallDesc:
	db   "An odd, electrical"
	next "orb. (HOLD)@"

FriendBallDesc:
	db   "A BALL that makes"
	next "PKMN friendly.@"

MoonBallDesc:
	db   "BALL pour évloués"
	next "par PIERRE LUNE.@"

LoveBallDesc:
	db   "Pour capturer le"
	next "genre opposé.@"

NormalBoxDesc:
	db   "Open it and see"
	next "what's inside.@"

GorgeousBoxDesc:
	db   "Open it and see"
	next "what's inside.@"

SunStoneDesc:
	db   "Evolves certain"
	next "kinds of PKMN.@"

PolkadotBowDesc:
	db   "Powers up normal-"
	next "type moves. (HOLD)@"

TeruSama22Desc:
	db   "?@"

UpGradeDesc:
	db   "A mysterious box"
	next "made by SILPH CO.@"

BerryDesc:
	db   "A self-restore"
	next "item. (10HP, HOLD)@"

GoldBerryDesc:
	db   "Self-restore item."
	next "(1/4 MAX HP, HOLD)@"

SquirtBottleDesc:
	db   "Bouteille pour ar-"
	next "roser les plantes.@"

TeruSama23Desc:
	db   "?@"

ParkBallDesc:
	db   "The Bug-Catching"
	next "Contest BALL.@"

RainbowWingDesc:
	db   "A mystical feather"
	next "of rainbow colors.@"

TeruSama24Desc:
	db   "?@"

BrickPieceDesc:
	db   "A rare chunk of"
	next "tile.@"

SurfMailDesc:
	db   "LAPRAS-print MAIL."
	next "(HOLD)@"

LiteBlueMailDesc:
	db   "DRATINI-print"
	next "MAIL. (HOLD)@"

PortraitMailDesc:
	db   "MAIL featuring the"
	next "holder's likeness.@"

LovelyMailDesc:
	db   "Heart-print MAIL."
	next "(HOLD)@"

EonMailDesc:
	db   "EEVEE-print MAIL."
	next "(HOLD)@"

MorphMailDesc:
	db   "DITTO-print MAIL."
	next "(HOLD)@"

BlueSkyMailDesc:
	db   "Sky-print MAIL."
	next "(HOLD)@"

MusicMailDesc:
	db   "NATU-print MAIL."
	next "(HOLD)@"

MewMailDesc:
	db   "MEW-print MAIL."
	next "(HOLD)@"

DomeFossilDesc:
	db   "A fossil of an"
	next "ancient PKMN.@"

HelixFossilDesc:
	db   "A fossil of an"
	next "ancient PKMN.@"

OldAmberDesc:
	db   "A stone containing"
	next "PKMN genes.@"

PoisonGuardDesc:
	db	 "(HOLD) User can't"
	next "get poisoned.@"

BurnGuardDesc:
	db	 "(HOLD) User can't"
	next "get burned.@"

FreezeGuardDesc:
	db	 "(HOLD) User can't"
	next "get frozen.@"

SleepGuardDesc:
	db	 "(HOLD) User can't"
	next "fall asleep.@"

ParlyzGuardDesc:
	db	 "(HOLD) User can't"
	next "get paralyzed.@"

ConfuseGuardDesc:
	db	 "(HOLD) User can't"
	next "get confused.@"

TeruSama25Desc:
	db   "?@"

TeruSama26Desc:
	db   "?@"

TeruSama27Desc:
	db   "?@"

TeruSama28Desc:
	db   "?@"

TeruSama29Desc:
	db   "?@"

TeruSama30Desc:
	db   "?@"

TeruSama31Desc:
	db   "?@"

TeruSama32Desc:
	db   "?@"

TeruSama33Desc:
	db   "?@"

SSTicketEGKDesc:
	db   "A ticket for the"
	next "S.S.ANNE.@"
