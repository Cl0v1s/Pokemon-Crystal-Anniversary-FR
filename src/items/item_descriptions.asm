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
	next "d'EXP.(TENU)@"

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
	db   "Un OEUF donné"
	next "par M.PKMN.@"

ClearBellDesc:
	db   "Sonne doucement"
	next "@"

SilverWingDesc:
	db   "Une étrange plume"
	next "argentée.@"

MoomooMilkDesc:
	db   "Restaure 100 PV"
	next "a un PKMN.@"

QuickClawDesc:
	db   "Permet de frapper"
	next "en premier.(TENU)@"

PsnCureBerryDesc:
	db   "Un antidote"
	next "automatique.(TENU)@"

GoldLeafDesc:
	db   "Une étrange plume"
	next "dorée.@"

SoftSandDesc:
	db   "Augmente capacités"
	next "de type sol.(TENU)@"

SharpBeakDesc:
	db   "Augmente capacités"
	next "de type vol.(TENU)@"

PrzCureBerryDesc:
	db   "Un anti-paralysie"
	next "automatique.(TENU)@"

BurntBerryDesc:
	db   "Un antigel"
	next "automatique.(TENU)@"

IceBerryDesc:
	db   "Un anti-brulure"
	next "automatique.(TENU)@"

PoisonBarbDesc:
	db   "Augmente capacité"
	next "de type poison.(TENU)@"

KingsRockDesc:
	db   "Peut appeurer"
	next "l'ennemi.(TENU)@"

BitterBerryDesc:
	db   "Un anti-confusion"
	next "automatique.(TENU)@"

MintBerryDesc:
	db   "Réveil pour PKMN"
	next "endormis.(TENU)@"

RedApricornDesc:
	db   "Un NOIGRUME rouge.@"

TinyMushroomDesc:
	db   "Un champignon ordi-"
	next "naire. Prix faible.@"

BigMushroomDesc:
	db   "Un champignon rare."
	next "Se vend cher.@"

SilverPowderDesc:
	db   "Augmente capacités"
	next "insecte.(TENU)@"

BluApricornDesc:
	db   "Un NOIGRUME bleu.@"

TeruSama6Desc:
	db   "?@"

AmuletCoinDesc:
	db   "Double les gains"
	next "d'argent.(TENU)@"

YlwApricornDesc:
	db   "Un NOIGRUME jaune.@"

GrnApricornDesc:
	db   "Un NOIGRUME jaune.@"

CleanseTagDesc:
	db   "Repousse les PKMN"
	next "sauvages.(TENU)@"

MysticWaterDesc:
	db   "Augmente capacités"
	next "de type eau.(TENU)@"

TwistedSpoonDesc:
	db   "Augmente capacités"
	next "de type psy.(TENU)@"

WhtApricornDesc:
	db   "Un NOIGRUME blanc.@"

BlackbeltDesc:
	db   "Boost capacités de"
	next "type combat.(TENU)@"

BlkApricornDesc:
	db   "Un NOIGRUME noir."
	next "@"

TeruSama7Desc:
	db   "?@"

PnkApricornDesc:
	db   "Un NOIGRUME rose."
	next "@"

BlackGlassesDesc:
	db   "Boost capacités"
	next "ténebres.(TENU)@"

SlowpokeTailDesc:
	db   "Tres bon. Se vend"
	next "cher.@"

PinkBowDesc:
	db   "Boost capacité de"
	next "type normal.(TENU)@";TODO: context (fairy)

StickDesc:
	db   "Un baton ordinaire."
	next "Se vend peu cher.@"

SmokeBallDesc:
	db   "S'enfuir des PKMN"
	next "sauvages.(TENU)@"

NeverMeltIceDesc:
	db   "Boost capacités"
	next "glace.(TENU)@"

MagnetDesc:
	db   "Boost capacité"
	next "éléctrique.(TENU)@"

MiracleBerryDesc:
	db   "Soigne les problemes"
	next "de statut.(TENU)@"

PearlDesc:
	db   "Une belle perle."
	next "Se vend peu cher.@"

BigPearlDesc:
	db   "Une grande et belle"
	next "perle. Prix élevé.@"

EverStoneDesc:
	db   "Empeche un PKMN d'"
	next "évoluer.(TENU)@"

SpellTagDesc:
	db   "Boost capacités"
	next "spectre.(TENU)@"

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
	db   "Augmente capacités"
	next "plante.(TENU)@"

ThickClubDesc:
	db   "Une sorte d'os."
	next "Se vend peu cher.@"

FocusBandDesc:
	db   "Peut empecher le"
	next "KO.(TENU)@"

TeruSama8Desc:
	db   "?@"

EnergyPowderDesc:
	db   "Restaure 50 PV"
	next "a un PKMN. Amer.@"

EnergyRootDesc:
	db   "Restaure 200 PV"
	next "a un PKMN. Amer.@"

HealPowderDesc:
	db   "Contre changement"
	next "de status. Amer.@"

RevivalHerbDesc:
	db   "Ranime un PKMN"
	next "KO. Amer.@"

HardStoneDesc:
	db   "Boost capacités"
	next "roche.(TENU)@"

LuckyEggDesc:
	db   "Plus de points"
	next "EXP.(TENU)@"

CardKeyDesc:
	db   "Ouvre les volets"
	next "dans TOUR RADIO.@"

MachinePartDesc:
	db   "Une piece de la"
	next "CENTRALE.@"

EggTicketDesc:
	db   "A utiliser au"
	next "CENTRE TROC.@"

LostItemDesc:
	db   "La # POUPEE"
	next "de la COPIEUSE.@"

StardustDesc:
	db   "Joli sable rouge."
	next "Se vend cher.@"

StarPieceDesc:
	db   "Un bout de gemme"
	next "rouge. Haut prix.@"

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
	next "FEU.(TENU)@"

BerryJuiceDesc:
	db   "Restaure 20 PV a"
	next "PKMN.@"

ScopeLensDesc:
	db   "Plus de chances de"
	next "critique.(TENU)@"

OaksParcelDesc:
	db   "Un paquet pour le"
	next "PROF. ORME.@"

PowerHerbDesc:
	db   "Attaque sans" ;TODO: incorrect : Speed up 2-turns moves
 	next "charger.(TENU)@"

MetalCoatDesc:
	db   "Boost capacités"
	next "acier.(TENU)@"

DragonFangDesc:
	db   "Boost capacités"
	next "dragon.(TENU)@"

FriendCharmDesc:
	db   "Augmente le taux de"
	next "capture. (HOLD)@"

LeftoversDesc:
	db   "Restaure PV en"
	next "combat.(TENU)@"

ResearchNotesDesc:
	db   "Description of a"
	next "rare PKMN.@"

TeruSama16Desc:
	db   "?@"

TeruSama17Desc:
	db   "?@"

MysteryBerryDesc:
	db   "Soigne PP auto-"
	next "matique.(TENU)@"

DragonScaleDesc:
	db   "Un objet rare trou-" ;TODO: incorrect : a rare item dragon-type.
	next "vé sur un dragon.@"

BerserkGeneDesc:
	db   "Boost ATQ mais"
	next "rend confus.@"

TeruSama18Desc:
	db   "?@"

XSpDefDesc:
	db   "MONTE la DEF.SPE."
	next "(1 CBT)@"

TeruSama20Desc:
	db   "?@"

SacredAshDesc:
	db   "Ranime tout"
	next "les PKMN KO.@"

HeavyBallDesc:
	db   "Une BALL pour"
	next "PKMN lourds.@"

FlowerMailDesc:
	db   "LETTRE a fleurs."
	next "(TENU)@"

LevelBallDesc:
	db   "Une BALL pour PKMN"
	next "de niveau moindre.@"

LureBallDesc:
	db   "Une BALL pour PKMN"
	next "péchés.@"

FastBallDesc:
	db   "Une BALL pour PKMN"
	next "rapides.@"

TeruSama21Desc:
	db   "?@"

LightBallDesc:
	db   "Une étrange orbe"
	next "éléctrique.(TENU)@"

FriendBallDesc:
	db   "BALL pour rendre"
	next "les PKMN amicaux.@"

MoonBallDesc:
	db   "BALL pour évloués"
	next "par PIERRE LUNE.@"

LoveBallDesc:
	db   "Pour capturer le"
	next "genre opposé.@"

NormalBoxDesc:
	db   "Ouvre-le et reg-"
	next "arde dedans.@"

GorgeousBoxDesc:
	db   "Ouvre-le et reg-"
	next "arde dedans.@"

SunStoneDesc:
	db   "Fait évoluer cer-"
	next "tains PKMN.@"

PolkadotBowDesc:
	db   "Boost capacités"
	next "normal.(TENU)@"

TeruSama22Desc:
	db   "?@"

UpGradeDesc:
	db   "Boite mystérieuse"
	next "par SILPH SARL@"

BerryDesc:
	db   "Un soin auto-"
	next "matique. (10PV, TENU)@"

GoldBerryDesc:
	db   "Soin automatique"
	next "(1/4 PV MAX, TENU)@"

SquirtBottleDesc:
	db   "Bouteille pour ar-"
	next "roser les plantes.@"

TeruSama23Desc:
	db   "?@"

ParkBallDesc:
	db   "BALL pour concours"
	next "de capture.@"

RainbowWingDesc:
	db   "Une plume mystique"
	next "arc-en-ciel.@"

TeruSama24Desc:
	db   "?@"

BrickPieceDesc:
	db   "Une piece rare de"
	next "tuile.@"

SurfMailDesc:
	db   "LETTRE LOKHLASS."
	next "(TENU)@"

LiteBlueMailDesc:
	db   "LETTRE MINIDRACO."
	next "(TENU)@"

PortraitMailDesc:
	db   "LETTRE semblable" ;TODO: incorrect 
	next "a son hauteur.@"

LovelyMailDesc:
	db   "LETTRE motif"
	next "coeur.(TENU)@"

EonMailDesc:
	db   "LETTRE EVOLI."
	next "(TENU)@"

MorphMailDesc:
	db   "LETTRE METAMORPH."
	next "(TENU)@"

BlueSkyMailDesc:
	db   "LETTRE imprimée"
	next "ciel.(TENU)@"

MusicMailDesc:
	db   "LETTRE NATU."
	next "(TENU)@"

MewMailDesc:
	db   "LETTRE MEW."
	next "(TENU)@"

DomeFossilDesc:
	db   "Le fossile d'un"
	next "ancien PKMN.@"

HelixFossilDesc:
	db   "Le fossile d'un"
	next "ancien PKMN.@"

OldAmberDesc:
	db   "Pierre contenant"
	next "des genes PKMN.@"

PoisonGuardDesc:
	db	 "(TENU) Ne peut"
	next "etre empoisonné.@"

BurnGuardDesc:
	db	 "(TENU) Ne peut"
	next "etre brulé.@"

FreezeGuardDesc:
	db	 "(TENU) Ne peut"
	next "etre gelé.@"

SleepGuardDesc:
	db	 "(TENU) Ne peut"
	next "etre endormi.@"

ParlyzGuardDesc:
	db	 "(TENU) Ne peut"
	next "etre paralysé.@"

ConfuseGuardDesc:
	db	 "(TENU) Ne peut"
	next "etre confus.@"

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
	db   "Un ticket pour"
	next "l'AQUARIA.@"
