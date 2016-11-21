_FruitBearingTreeText: ; 0x1bc000
	text "C'est un arbre a"
	line "baies."
	done
; 0x1bc01c

_HeyItsFruitText: ; 0x1bc01c
	text "Hé! C'est"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done
; 0x1bc02d

_ObtainedFruitText: ; 0x1bc02d
	text "Obtenu"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done
; 0x1bc03e

_FruitPackIsFullText: ; 0x1bc03e
	text "Mais le SAC est"
	line "plein<...>"
	done
; 0x1bc055

_NothingHereText: ; 0x1bc055
	text "Il n'y a rien"
	line "ici<...>"
	done
; 0x1bc06b

UnknownText_0x1bc06b: ; 0x1bc06b
	text "Quel NOIGRUME"
	line "utiliser?"
	done
; 0x1bc089

UnknownText_0x1bc089: ; 0x1bc089
	text "Combien je dois"
	line "en faire?"
	done
; 0x1bc0a2

UnknownText_0x1bc0a2: ; 0x1bc0a2
	text_from_ram StringBuffer1
	text ""
	line "récupere @"
	deciram wd1f3, $23
	text "PV!"
	done
; 0x1bc0bb

UnknownText_0x1bc0bb: ; 0x1bc0bb
	text_from_ram StringBuffer1
	text "n'est"
	line "plus empoisonné."
	done
; 0x1bc0d2

UnknownText_0x1bc0d2: ; 0x1bc0d2
	text_from_ram StringBuffer1
	text "n'est"
	line "plus paralysé."
	done
; 0x1bc0ea

UnknownText_0x1bc0ea: ; 0x1bc0ea
	text "La brulure de"
	line "@"
	text_from_ram StringBuffer1
	text "est soignée."
	done
; 0x1bc101

UnknownText_0x1bc101: ; 0x1bc101
	text_from_ram StringBuffer1
	text "est"
	line "dégelé."
	done
; 0x1bc115

UnknownText_0x1bc115: ; 0x1bc115
	text_from_ram StringBuffer1
	text "se"
	line "réveille."
	done
; 0x1bc123

UnknownText_0x1bc123: ; 0x1bc123
	text "La vie de"
	line "@"
	text_from_ram StringBuffer1
	text ""
	line "est restaurée."
	done
; 0x1bc13a

UnknownText_0x1bc13a: ; 0x1bc13a
	text_from_ram StringBuffer1
	text ""
	line "est revitalisé."
	done
; 0x1bc14f

UnknownText_0x1bc14f: ; 0x1bc14f
	text_from_ram StringBuffer1
	text " passe au "
	line "niveau @"
	deciram CurPartyLevel, $13
	text "!@"
	sound0
	text_waitsfx
	db "@"
; 0x1bc16d

UnknownText_0x1bc16d: ; 0x1bc16d
	db "@"
; 0x1bc16e

UnknownText_0x1bc16e: ; 0x1bc16e
	text_from_ram StringBuffer1
	text " reprend"
	line "ses esprits."
	done
; 0x1bc187

UnknownText_0x1bc187: ; 0x1bc187
	text "Entrez n'importe"
	line "quelle combinaison"
	cont "a quatre chiffres."
	done
; 0x1bc1ac

UnknownText_0x1bc1ac: ; 0x1bc1ac
	text "Entre le meme"
	line "nombre pour con-"
	cont "firmer."
	done
; 0x1bc1cf

UnknownText_0x1bc1cf: ; 0x1bc1cf
	text "Ce n'est pas le"
	line "meme numéro."
	done
; 0x1bc1eb

UnknownText_0x1bc1eb: ; 0x1bc1eb
	text "Votre PASSCODE a" ;TODO: context
	line "été sauvé.", $51
	db "Entrez ce nombre"
	line "prochaine fois pour", $55
	db "ouvrir CARD FOLDER.", $51 ;TODO: context
	db $57
; 0x1bc23e

UnknownText_0x1bc23e: ; 0x1bc23e
	text "0000 n'est pas valide!", $51
	db $57
; 0x1bc251

UnknownText_0x1bc251: ; 0x1bc251
	text "Entrez le", $4e, "PASSCODE." ;TODO: context
	done
; 0x1bc272

UnknownText_0x1bc272: ; 0x1bc272
	text "PASSCODE"
	line "incorrect!", $51
	db $57
; 0x1bc288

UnknownText_0x1bc288: ; 0x1bc288
	text "C'est ouvert!@"
	db "@"
; 0x1bc29c

UnknownText_0x1bc29c: ; 0x1bc29c
	text $56, $56, $56, $56, $56, $56
	line $56, $56, $56, $56, $56, $56

	para "Zzz<...> Hum? Quoi <...>?"
	line "Tu m'as réveillé !"

	para "Tu peux regarder"
	line "l'heure pour moi ?"
	prompt
; 0x1bc2eb

UnknownText_0x1bc2eb: ; 0x1bc2eb
	text "Quelle heure est-"
	line "t'il ?"
	done
; 0x1bc2fd

UnknownText_0x1bc2fd: ; 0x1bc2fd
	text "Quoi ?@"
	db "@"
; 0x1bc305

UnknownText_0x1bc305: ; 0x1bc305
	text "?"
	done
; 0x1bc308

UnknownText_0x1bc308: ; 0x1bc308
	text "Combien de"
	line "minutes ?"
	done
; 0x1bc31b

UnknownText_0x1bc31b: ; 0x1bc31b
	text "Whoa!@"
	db "@"
; 0x1bc323

UnknownText_0x1bc323: ; 0x1bc323
	text "?"
	done
; 0x1bc326

UnknownText_0x1bc326: ; 0x1bc326
	text "!"
	line "J'ai trop dormi !"
	done
; 0x1bc336

UnknownText_0x1bc336: ; 0x1bc336
	text "!"
	line "Oups ! J'ai trop"
	cont "dormi !"
	done
; 0x1bc34f

UnknownText_0x1bc34f: ; 0x1bc34f
	text "!"
	line "C'est pour ca qu'"
	cont "il fait si noir !"
	done
; 0x1bc369

UnknownText_0x1bc369: ; 0x1bc369
	text "Quel jour on est ?"
	done
; 0x1bc37a

UnknownText_0x1bc37a: ; 0x1bc37a
	text ", c'est ca ?"
	done
; 0x1bc384

UnknownText_0x1bc384: ; 0x1bc384
	text "Il n'y a rien de"
	line "connecté."
	done
; 0x1bc3a1

UnknownText_0x1bc3a1: ; 0x1bc3a1
	text "Vérifiez l'adaptateur"
	line "téléphonique."
	done
; 0x1bc3bc

UnknownText_0x1bc3bc: ; 0x1bc3bc
	text "Vérifiez le"
	line "CDMA."
	done
; 0x1bc3d1

UnknownText_0x1bc3d1: ; 0x1bc3d1
	text "Vérifiez le"
	line "DOCOMO PHS."
	done
; 0x1bc3ec

UnknownText_0x1bc3ec: ; 0x1bc3ec
	text "Vérifiez le"
	line " DDI PHS."
	done
; 0x1bc404

UnknownText_0x1bc404: ; 0x1bc404
	text "Vérifiez le"
	line "battle mobile"
	cont "adapter."
	done
; 0x1bc42c

UnknownText_0x1bc42c: ; 0x1bc42c
	text "Le mot de passe est:"
	line $57
; 0x1bc43f

UnknownText_0x1bc43f: ; 0x1bc43f
	text "C'est correct ?"
	done
; 0x1bc44c

UnknownText_0x1bc44c: ; 0x1bc44c
	text "Entrez le"
	line "no. ID"
	done
; 0x1bc45e

UnknownText_0x1bc45e: ; 0x1bc45e
	text "Entrez la"
	line "quantité."
	done
; 0x1bc471

UnknownText_0x1bc471: ; 0x1bc471
	text "Il n'y a rien"
	line "a choisir."
	prompt
; 0x1bc48c

UnknownText_0x1bc48c: ; 0x1bc48c
	text "De quel coté voulez"
	line "vous le mettre?"
	done
; 0x1bc4b2

UnknownText_0x1bc4b2: ; 0x1bc4b2
	text "Which side do you" ;TODO: context
	line "want to put away?"
	done
; 0x1bc4d7

UnknownText_0x1bc4d7: ; 0x1bc4d7
	text "Put away the" ;TODO : context
	line "@"
	text_from_ram StringBuffer3
	text "."
	prompt
; 0x1bc4ec

UnknownText_0x1bc4ec: ; 0x1bc4ec
	text "Il n'y a rien"
	line "a ranger."
	prompt
; 0x1bc509

UnknownText_0x1bc509: ; 0x1bc509
	text "Set up the" ;TODO: context
	line "@"
	text_from_ram StringBuffer3
	text "."
	prompt
; 0x1bc51c

UnknownText_0x1bc51c: ; 0x1bc51c
	text "Put away the" ;TODO: context
	line "@"
	text_from_ram StringBuffer3
	text $51
	db "and set up the"
	line "@"
	text_from_ram StringBuffer4
	text "."
	prompt
; 0x1bc546

UnknownText_0x1bc546: ; 0x1bc546
	text "That's already set" ;TODO: context
	line "up."
	prompt
; 0x1bc55d

UnknownText_0x1bc55d: ; 0x1bc55d
	text "C'est la CARTE."
	done
; 0x1bc570

UnknownText_0x1bc570: ; 0x1bc570
	text "C'est un poster"
	line "d'un PIKACHU"
	cont "tout mignon."
	done
; 0x1bc591

UnknownText_0x1bc591: ; 0x1bc591
	text "C'est un poster d'un"
	line "MELOFEE tout mignon."
	done
; 0x1bc5b3

UnknownText_0x1bc5b3: ; 0x1bc5b3
	text "C'est un poster d'un"
	line "RONDOUDOU tout"
	cont "mignon."
	done
; 0x1bc5d7

UnknownText_0x1bc5d7: ; 0x1bc5d7
	text "C'est un adorable"
	line "@"
	text_from_ram StringBuffer3
	text "."
	done
; 0x1bc5ef

UnknownText_0x1bc5ef: ; 0x1bc5ef
	text "Une poupée géante!"
	line "Tout doux et"
	cont "moelleux."
	done
; 0x1bc615

UnknownText_0x1bc615: ; 0x1bc615
	text "Salut, ", $52, "!"
	line "Comment ca va?"
	prompt
; 0x1bc62a

UnknownText_0x1bc62a: ; 0x1bc62a
	text "J'ai trouvé un"
	line "item pratique"
	cont "en faisant du"
	cont "shopping,"
	prompt
; 0x1bc64e

UnknownText_0x1bc64e: ; 0x1bc64e
	text "Je l'ai acheté"
	line "avec tes sous."
	cont "Désolé!"
	prompt
; 0x1bc673

UnknownText_0x1bc673: ; 0x1bc673
	text "C'est dans ton PC."
	line "Tu vas adorer!"
	done
; 0x1bc693

UnknownText_0x1bc693: ; 0x1bc693
	text "En faisant les"
	line "courses, j'ai vu"
	cont "cette adorable"
	cont "poupée, donc"
	prompt
; 0x1bc6c7

UnknownText_0x1bc6c7: ; 0x1bc6c7
	text "C'est dans ta chambre!"
	line "Tu vas adorer!"
	done
; 0x1bc6e9

UnknownText_0x1bc6e9: ; 0x1bc6e9
	text_from_ram wc6d1
	text " a été"
	line "envoyé au @" ;TODO: context
	text_from_ram wc719
	text "."
	done
; 0x1bc701

UnknownText_0x1bc701: ; 0x1bc701
	text ""
	done
; 0x1bc703

UnknownText_0x1bc703: ; 0x1bc703
	text_from_ram wc719
	text " dit"
	line "adieu a"
	done
; 0x1bc719

UnknownText_0x1bc719: ; 0x1bc719
	text_from_ram wc703
	text "."
	done
; 0x1bc71f

UnknownText_0x1bc71f: ; 0x1bc71f
	text "Prends bien soin"
	line "de @"
	text_from_ram wc703
	text "."
	done
; 0x1bc739

UnknownText_0x1bc739: ; 0x1bc739
	text "For @" ;TODO: context
	text_from_ram wc6e7
	text "'s"
	line "@"
	text_from_ram wc6d1
	text ","
	done
; 0x1bc74c

UnknownText_0x1bc74c: ; 0x1bc74c
	text_from_ram wc719
	text " envoie"
	line "@"
	text_from_ram wc703
	text "."
	done
; 0x1bc75e

UnknownText_0x1bc75e: ; 0x1bc75e
	text_from_ram wc719
	text " va"
	line "échanger @"
	text_from_ram wc703
	db "@"
; 0x1bc773

UnknownText_0x1bc773: ; 0x1bc773
	db "@"
; 0x1bc774

UnknownText_0x1bc774: ; 0x1bc774
	text "for @" ;TODO: context
	text_from_ram wc6e7
	text "'s"
	line "@"
	text_from_ram wc6d1
	text "."
	done
; 0x1bc787

UnknownText_0x1bc787: ; 0x1bc787
	text_from_ram wc6e7
	text " veut"
	line "échanger @"
	text_from_ram wc6d1
	db "@"
; 0x1bc79c

UnknownText_0x1bc79c: ; 0x1bc79c
	db "@"
; 0x1bc79d

UnknownText_0x1bc79d: ; 0x1bc79d
	text "for @" ;TODO: context
	text_from_ram wc719
	text "'s"
	line "@"
	text_from_ram wc703
	text "."
	done
; 0x1bc7b0

UnknownText_0x1bc7b0: ; 0x1bc7b0
	text_from_ram wc6e7 ;TODO: context
	text "'s"
	line "@"
	text_from_ram wc6d1
	text " trade<...>"
	done
; 0x1bc7c3

UnknownText_0x1bc7c3: ; 0x1bc7c3
	text "Prends soin de"
	line "@"
	text_from_ram wc703
	text "."
	done
; 0x1bc7dd

UnknownText_0x1bc7dd: ; 0x1bc7dd
	text_from_ram wc6e7 ;TODO: context
	text "'s"
	line "@"
	text_from_ram wc6d1
	text " trade<...>"
	done
; 0x1bc7f0

UnknownText_0x1bc7f0: ; 0x1bc7f0
	text "Prends soin de"
	line "@"
	text_from_ram wc703
	text "."
	done
; 0x1bc80a

UnknownText_0x1bc80a: ; 0x1bc80a
	text_from_ram wc703
	text " est"
	line "de retour!"
	done
; 0x1bc81a

UnknownText_0x1bc81a: ; 0x1bc81a
	text ""
	line "LULA: CHRONIQUE"
	done
; 0x1bc82d

UnknownText_0x1bc82d: ; 0x1bc82d
	text ""
	line "du PROF. CHEN!"
	done
; 0x1bc83a

UnknownText_0x1bc83a: ; 0x1bc83a
	text ""
	line "avec moi, LULA!"
	done
; 0x1bc84b

UnknownText_0x1bc84b: ; 0x1bc84b
	text ""
	line "CHEN: @"
	text_from_ram wd050
	db "@"
; 0x1bc857

UnknownText_0x1bc857: ; 0x1bc857
	db "@"
; 0x1bc858

UnknownText_0x1bc858: ; 0x1bc858
	text ""
	line "est pres de:"
	done
; 0x1bc86d

UnknownText_0x1bc86d: ; 0x1bc86d
	text ""
	line "@"
	text_from_ram StringBuffer1
	text "."
	done
; 0x1bc876

UnknownText_0x1bc876: ; 0x1bc876
	text ""
	line "LULA: @"
	text_from_ram StringBuffer1
	text "est"
	done
; 0x1bc885

UnknownText_0x1bc885: ; 0x1bc885
	text ""
	line "doux et adorablement"
	done
; 0x1bc89a

UnknownText_0x1bc89a: ; 0x1bc89a
	text ""
	line "sinueux."
	done
; 0x1bc8af

UnknownText_0x1bc8af: ; 0x1bc8af
	text ""
	line "nommé avec justesse"
	done
; 0x1bc8c1

UnknownText_0x1bc8c1: ; 0x1bc8c1
	text ""
	line "indéniablement" ;TODO: incorrect
	done
; 0x1bc8d6

UnknownText_0x1bc8d6: ; 0x1bc8d6
	text ""
	line "si insuportablement";TODO: incorrect
	done
; 0x1bc8ea

UnknownText_0x1bc8ea: ; 0x1bc8ea
	text ""
	line "wow, impressionant"
	done
; 0x1bc8fe

UnknownText_0x1bc8fe: ; 0x1bc8fe
	text ""
	line "presque toxique"
	done
; 0x1bc913

UnknownText_0x1bc913: ; 0x1bc913
	text ""
	line "ooh, si sensuellement" ;TODO: incorect
	done
; 0x1bc927

UnknownText_0x1bc927: ; 0x1bc927
	text ""
	line "si malicieusement"
	done
; 0x1bc93a

UnknownText_0x1bc93a: ; 0x1bc93a
	text ""
	line "so very topically" ;TODO:context
	done
; 0x1bc94e

UnknownText_0x1bc94e: ; 0x1bc94e
	text ""
	line "sure addictively" ;TODO: context
	done
; 0x1bc961

UnknownText_0x1bc961: ; 0x1bc961
	text ""
	line "dans l'eau est" 
	done
; 0x1bc975

UnknownText_0x1bc975: ; 0x1bc975
	text ""
	line "évolution doit etre"
	done
; 0x1bc989

UnknownText_0x1bc989: ; 0x1bc989
	text ""
	line "provocatively" ;TODO: context
	done
; 0x1bc999

UnknownText_0x1bc999: ; 0x1bc999
	text ""
	line "effrayé et" ;TODO: incorrect
	done
; 0x1bc9ae

UnknownText_0x1bc9ae: ; 0x1bc9ae
	text ""
	line "touchant"
	done
; 0x1bc9c0

UnknownText_0x1bc9c0: ; 0x1bc9c0
	text ""
	line "mignon."
	done
; 0x1bc9c8

UnknownText_0x1bc9c8: ; 0x1bc9c8
	text ""
	line "bizarre."
	done
; 0x1bc9d1

UnknownText_0x1bc9d1: ; 0x1bc9d1
	text ""
	line "plaisant."
	done
; 0x1bc9dd

UnknownText_0x1bc9dd: ; 0x1bc9dd
	text ""
	line "genre, grossier."
	done
; 0x1bc9ee

UnknownText_0x1bc9ee: ; 0x1bc9ee
	text ""
	line "effrayant."
	done
; 0x1bc9fd

UnknownText_0x1bc9fd: ; 0x1bc9fd
	text ""
	line "suave & débonnaire!"
	done
; 0x1bca11

UnknownText_0x1bca11: ; 0x1bca11
	text ""
	line "puissant."
	done
; 0x1bca1d

UnknownText_0x1bca1d: ; 0x1bca1d
	text ""
	line "excitant."
	done
; 0x1bca29

UnknownText_0x1bca29: ; 0x1bca29
	text ""
	line "sensationnel!"
	done
; 0x1bca33

UnknownText_0x1bca33: ; 0x1bca33
	text ""
	line "inspirant."
	done
; 0x1bca40

UnknownText_0x1bca40: ; 0x1bca40
	text ""
	line "amical."
	done
; 0x1bca4c

UnknownText_0x1bca4c: ; 0x1bca4c
	text ""
	line "chaud, chaud, chaud!"
	done
; 0x1bca5d

UnknownText_0x1bca5d: ; 0x1bca5d
	text ""
	line "stimulant."
	done
; 0x1bca6c

UnknownText_0x1bca6c: ; 0x1bca6c
	text ""
	line "prudent." ;TODO: incorrect
	done
; 0x1bca77

UnknownText_0x1bca77: ; 0x1bca77
	text ""
	line "charmant."
	done
; 0x1bca81

UnknownText_0x1bca81: ; 0x1bca81
	text ""
	line "rapide."
	done
; 0x1bca8b

UnknownText_0x1bca8b: ; 0x1bca8b
	text "#MON"
	done
; 0x1bca91

UnknownText_0x1bca91: ; 0x1bca91
	text ""
	line "@"
	text_from_ram StringBuffer1
	db "@"
; 0x1bca98

UnknownText_0x1bca98: ; 0x1bca98
	db "@"
; 0x1bca99

UnknownText_0x1bca99: ; 0x1bca99
	text ""
	line "BEN: ANTENNE"
	done
; 0x1bcaab

UnknownText_0x1bcaab: ; 0x1bcaab
	text ""
	line "MUSIQUE PKMN!"
	done
; 0x1bcab6

UnknownText_0x1bcab6: ; 0x1bcab6
	text ""
	line "C'est moi, DJ BEN!"
	done
; 0x1bcac8

UnknownText_0x1bcac8: ; 0x1bcac8
	text ""
	line "SEB: #MUSIQUE!"
	done
; 0x1bcad8

UnknownText_0x1bcad8: ; 0x1bcad8
	text ""
	line "avec DJ FERN!"
	done
; 0x1bcae8

UnknownText_0x1bcae8: ; 0x1bcae8
	text ""
	line "Ce @"
	current_day
	text ","
	done
; 0x1bcaf6

UnknownText_0x1bcaf6: ; 0x1bcaf6
	text ""
	line "on s'écoute"
	done
; 0x1bcb09

UnknownText_0x1bcb09: ; 0x1bcb09
	text ""
	line "on se détend sur"
	done
; 0x1bcb1b

UnknownText_0x1bcb1b: ; 0x1bcb1b
	text ""
	line "la fanfare PKMN!"
	done
; 0x1bcb29

UnknownText_0x1bcb29: ; 0x1bcb29
	text ""
	line "berceuse PKMN!"
	done
; 0x1bcb39

UnknownText_0x1bcb39: ; 0x1bcb39
	text ""
	line "SAM: Yeah! Comment"
	done
; 0x1bcb4d

UnknownText_0x1bcb4d: ; 0x1bcb4d
	text ""
	line "ca gaze les gars?"
	done
; 0x1bcb60

UnknownText_0x1bcb60: ; 0x1bcb60
	text ""
	line "Si t'as la peche"
	done
; 0x1bcb73

UnknownText_0x1bcb73: ; 0x1bcb73
	text ""
	line "ou pas le moral,"
	done
; 0x1bcb86

UnknownText_0x1bcb86: ; 0x1bcb86
	text ""
	line "ne rate jamais le"
	done
; 0x1bcb9a

UnknownText_0x1bcb9a: ; 0x1bcb9a
	text ""
	line "BON NUMERO!"
	done
; 0x1bcbaf

UnknownText_0x1bcbaf: ; 0x1bcbaf
	text ""
	line "Cette semaine le"
	done
; 0x1bcbc2

UnknownText_0x1bcbc2: ; 0x1bcbc2
	text ""
	line "No. est @"
	interpret_data
	text_from_ram StringBuffer1
	text "!"
	done
; 0x1bcbd6

UnknownText_0x1bcbd6: ; 0x1bcbd6
	text ""
	line "Je répete..."
	done
; 0x1bcbe9

UnknownText_0x1bcbe9: ; 0x1bcbe9
	text ""
	line "Gagne et va vite a"
	done
; 0x1bcbfe

UnknownText_0x1bcbfe: ; 0x1bcbfe
	text ""
	line "la TOUR RADIO!"
	done
; 0x1bcc11

UnknownText_0x1bcc11: ; 0x1bcc11
	text ""
	line "<...>Je répete"
	done
; 0x1bcc25

UnknownText_0x1bcc25: ; 0x1bcc25
	text ""
	line "gets to be a drag<...>" ;TODO: context
	done
; 0x1bcc3a

UnknownText_0x1bcc3a: ; 0x1bcc3a
	text ""
	line "SOCIO FM!"
	done
; 0x1bcc4f

UnknownText_0x1bcc4f: ; 0x1bcc4f
	text ""
	line "Présenté par"
	done
; 0x1bcc63

UnknownText_0x1bcc63: ; 0x1bcc63
	text ""
	line "moi, DJ PETRA!"
	done
; 0x1bcc72

UnknownText_0x1bcc72: ; 0x1bcc72
	text ""
	line "@"
	text_from_ram StringBuffer2
	text " @"
	text_from_ram StringBuffer1
	db "@"
; 0x1bcc7f

UnknownText_0x1bcc7f: ; 0x1bcc7f
	db "@"
; 0x1bcc80

UnknownText_0x1bcc80: ; 0x1bcc80
	text ""
	line "est mignon."
	done
; 0x1bcc8b

UnknownText_0x1bcc8b: ; 0x1bcc8b
	text ""
	line "est genre, paresseux."
	done
; 0x1bcc9e

UnknownText_0x1bcc9e: ; 0x1bcc9e
	text ""
	line "est toujours heureux."
	done
; 0x1bccb1

UnknownText_0x1bccb1: ; 0x1bccb1
	text ""
	line "est bruyant."
	done
; 0x1bccc3

UnknownText_0x1bccc3: ; 0x1bccc3
	text ""
	line "est précoce."
	done
; 0x1bccd4

UnknownText_0x1bccd4: ; 0x1bccd4
	text ""
	line "est audacieux."
	done
; 0x1bcce8

UnknownText_0x1bcce8: ; 0x1bcce8
	text ""
	line "est pointilleux!"
	done
; 0x1bccf8

UnknownText_0x1bccf8: ; 0x1bccf8
	text ""
	line "est OK."
	done
; 0x1bcd09

UnknownText_0x1bcd09: ; 0x1bcd09
	text ""
	line "est tellement..."
	done
; 0x1bcd1a

UnknownText_0x1bcd1a: ; 0x1bcd1a
	text ""
	line "est cool."
	done
; 0x1bcd2f

UnknownText_0x1bcd2f: ; 0x1bcd2f
	text ""
	line "est mon type."
	done
; 0x1bcd42

UnknownText_0x1bcd42: ; 0x1bcd42
	text ""
	line "est trop cool, non?"
	done
; 0x1bcd54

UnknownText_0x1bcd54: ; 0x1bcd54
	text ""
	line "est inspirant!"
	done
; 0x1bcd64

UnknownText_0x1bcd64: ; 0x1bcd64
	text ""
	line "est un peu bizarre."
	done
; 0x1bcd78

UnknownText_0x1bcd78: ; 0x1bcd78
	text ""
	line "est bon pour moi?"
	done
; 0x1bcd8b

UnknownText_0x1bcd8b: ; 0x1bcd8b
	text ""
	line "est vraiment étrange!"
	done
; 0x1bcda0

UnknownText_0x1bcda0: ; 0x1bcda0
	text ""
	line "@"
	text_from_ram StringBuffer1
	db "@"
; 0x1bcda7

UnknownText_0x1bcda7: ; 0x1bcda7
	db "@"
; 0x1bcda8

UnknownText_0x1bcda8: ; 0x1bcda8
	text ""
	line "<...>Hum, nous sommes"
	done
; 0x1bcdba

UnknownText_0x1bcdba: ; 0x1bcdba
	text ""
	line "la TEAM ROCKET!"
	done
; 0x1bcdc9

UnknownText_0x1bcdc9: ; 0x1bcdc9
	text ""
	line "Apres trois mois"
	done
; 0x1bcddd

UnknownText_0x1bcddd: ; 0x1bcddd
	text ""
	line "de préparation, nous"
	done
; 0x1bcdf2

UnknownText_0x1bcdf2: ; 0x1bcdf2
	text ""
	line "avons ressuscité"
	done
; 0x1bce05

UnknownText_0x1bce05: ; 0x1bce05
	text ""
	line "de nos cendres!"
	done
; 0x1bce17

UnknownText_0x1bce17: ; 0x1bce17
	text ""
	line "GIOVANNI! @"
	interpret_data
	text "Nous entends"
	done
; 0x1bce2e

UnknownText_0x1bce2e: ; 0x1bce2e
	text ""
	line "tu?@"
	interpret_data
	text " Nous l'avons fait!"
	done
; 0x1bce44

UnknownText_0x1bce44: ; 0x1bce44
	text ""
	line "@"
	interpret_data
	text "Ou est notre boss?"
	done
; 0x1bce5c

UnknownText_0x1bce5c: ; 0x1bce5c
	text ""
	line "@"
	interpret_data
	text "Il nous écoute?"
	done
; 0x1bce72

UnknownText_0x1bce72: ; 0x1bce72
	text ""
	line "BUENA: ici BUENA!"
	done
; 0x1bce87

UnknownText_0x1bce87: ; 0x1bce87
	text ""
	line "Today's password!"
	done
; 0x1bce9a

UnknownText_0x1bce9a: ; 0x1bce9a
	text ""
	line "Let me think<...> It's"
	done
; 0x1bceae

UnknownText_0x1bceae: ; 0x1bceae
	text ""
	line "@"
	text_from_ram StringBuffer1
	text "!"
	done
; 0x1bceb7

UnknownText_0x1bceb7: ; 0x1bceb7
	text ""
	line "Don't forget it!"
	done
; 0x1bcec9

UnknownText_0x1bcec9: ; 0x1bcec9
	text ""
	line "Je suis a la TOUR"
	done
; 0x1bcedc

UnknownText_0x1bcedc: ; 0x1bcedc
	text ""
	line "RADIO!"
	done
; 0x1bceeb

UnknownText_0x1bceeb: ; 0x1bceeb
	text ""
	line "BUENA: Oh mon<...>"
	done
; 0x1bcefb

UnknownText_0x1bcefb: ; 0x1bcefb
	text ""
	line "Il est minuit! Je"
	done
; 0x1bcf0d

UnknownText_0x1bcf0d: ; 0x1bcf0d
	text ""
	line "doit rendre l'antenne!"
	done
; 0x1bcf22

UnknownText_0x1bcf22: ; 0x1bcf22
	text ""
	line "Merci d'avoir écouté"
	done
; 0x1bcf36

UnknownText_0x1bcf36: ; 0x1bcf36
	text ""
	line "jusqu'au bout! Mais"
	done
; 0x1bcf4b

UnknownText_0x1bcf4b: ; 0x1bcf4b
	text ""
	line "ne vous couchez pas"
	done
; 0x1bcf5e

UnknownText_0x1bcf5e: ; 0x1bcf5e
	text ""
	line "trop tard! Présenté par"
	done
; 0x1bcf73

UnknownText_0x1bcf73: ; 0x1bcf73
	text ""
	line "DJ BUENA!"
	done
; 0x1bcf86

UnknownText_0x1bcf86: ; 0x1bcf86
	text "Je vous laisse!"
	done
; 0x1bcf96

UnknownText_0x1bcf96: ; 0x1bcf96
	text "<...>"
	done
; 0x1bcf99

UnknownText_0x1bcf99: ; 0x1bcf99
	text ""
	line ""
	done
; 0x1bcf9c

_WhosThatPkmnText1:
	text ""
	line "C'est l'heure du"
	done

_WhosThatPkmnText2:
	text ""
	line "Quiz #MON!"
	done

_WhosThatPkmnText3:
	text ""
	line "Avec moi, LULA!"
	done

_WhosThatPkmnText4:
	text ""
	line "Peux-tu deviner"
	done

_WhosThatPkmnText5:
	text ""
	line "quel #MON"
	done

_WhosThatPkmnText6:
	text ""
	line "c'est?"
	done

_WhosThatPkmnText7:
	text ""
	line $56, " ", $56, " ", $56
	done

_WhosThatPkmnText8:
	text ""
	line "Tu l'as deviné?"
	done

_WhosThatPkmnText9:
	text ""
	line "C'est @"
	TX_RAM StringBuffer1
	text "!"
	done

UnknownText_0x1bcf9c: ; 0x1bcf9c
	text $3f
	line "retire"
	cont "@"
	text_from_ram EnemyMonNick
	text "!"
	prompt
; 0x1bcfaf

UnknownText_0x1bcfaf: ; 0x1bcfaf
	text $3f
	line "utilise @"
	text_from_ram wd050
	text $55
	db "on @"
	text_from_ram EnemyMonNick
	text "!"
	prompt
; 0x1bcfc7

UnknownText_0x1bcfc7: ; 0x1bcfc7
	text "Impossible d'utiliser"
	line "ca maintenant."
	prompt
; 0x1bcfe5

UnknownText_0x1bcfe5: ; 0x1bcfe5
	text "Cet objet ne rentre"
	line "pas dans le sac."
	done
; 0x1bd009

UnknownText_0x1bd009: ; 0x1bd009
	text "Le @"
	text_from_ram StringBuffer1
	text ""
	line "a été rangé"
	cont "dans le SAC."
	done
; 0x1bd029

UnknownText_0x1bd029: ; 0x1bd029
	text "Temps restant"
	done
; 0x1bd039

UnknownText_0x1bd039: ; 0x1bd039
	text "Tes #MON"
	line "ont été soignés."
	prompt
; 0x1bd054

UnknownText_0x1bd054: ; 0x1bd054
	text "Warping<...>" ;TODO : context
	done
; 0x1bd05e

UnknownText_0x1bd05e: ; 0x1bd05e
	text "Quel No. doit"
	line "etre changé?"
	done
; 0x1bd07f

UnknownText_0x1bd07f: ; 0x1bd07f
	text "Vas-tu jouer avec"
	line "@"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1bd09a

UnknownText_0x1bd09a: ; 0x1bd09a
	text "La reproduction"
	line "nécessite 2 PKMN."
	prompt
; 0x1bd0bd

UnknownText_0x1bd0bd: ; 0x1bd0bd
	text "Reproduction"
	line "impossible."
	prompt
; 0x1bd0d8

UnknownText_0x1bd0d8: ; 0x1bd0d8
	text "La compatibilité"
	line "est @"
	deciram wd265, $13
	text "."
	cont "Doivent-ils se"
	cont "reproduire?"
	done
; 0x1bd109

UnknownText_0x1bd109: ; 0x1bd109
	text "Il n'y a pas d'OEUF."
	line $58
; 0x1bd11c

UnknownText_0x1bd11c: ; 0x1bd11c
	text "L'OEUF va"
	line "éclore!"
	prompt
; 0x1bd131

UnknownText_0x1bd131: ; 0x1bd131
	text "Test event" ;TODO: context
	line "@"
	deciram StringBuffer2, $12
	text "?"
	done
; 0x1bd145

UnknownText_0x1bd145: ; 0x1bd145
	text "Start!" ;TODO: context
	done
; 0x1bd14d

UnknownText_0x1bd14d: ; 0x1bd14d
	text "End!" ;TODO: context
	done
; 0x1bd153

UnknownText_0x1bd153: ; 0x1bd153
	text "For a boy!" ;TODO: context
	done
; 0x1bd15f

UnknownText_0x1bd15f: ; 0x1bd15f
	text "For a girl!" ;TODO: context
	done
; 0x1bd16c

UnknownText_0x1bd16c: ; 0x1bd16c
	text "Ca ne concerne pas"
	line "un garcon!"
	done
; 0x1bd188

UnknownText_0x1bd188: ; 0x1bd188
	text "La BOITE est pleine!"
	done
; 0x1bd19a

UnknownText_0x1bd19a: ; 0x1bd19a
	text "Nouvelle CARTE recue"
	line "de @"
	text_from_ram StringBuffer2
	text "."
	done
; 0x1bd1ba

UnknownText_0x1bd1ba: ; 0x1bd1ba
	text "Mettre cette CARTE"
	line "dans le CARD FOLDER?"
	done
; 0x1bd1dd

UnknownText_0x1bd1dd: ; 0x1bd1dd
	text "La carte de"
	text "@"
	text_from_ram StringBuffer2
	text "a été"
	line "enregistrée. No.@"
	deciram StringBuffer1, $12
	text "."
	prompt
; 0x1bd201

UnknownText_0x1bd201: ; 0x1bd201
	text "Starting link." ;TODO: context
	done
; 0x1bd211

UnknownText_0x1bd211: ; 0x1bd211
	text "Link terminated." ;TODO: context
	done
; 0x1bd223

UnknownText_0x1bd223: ; 0x1bd223
	text "Closing link." ;TODO: contect
	done
; 0x1bd232

UnknownText_0x1bd232: ; 0x1bd232
	text "Effacer la limite"
	line "de temps?"
	done
; 0x1bd249

UnknownText_0x1bd249: ; 0x1bd249
	text "La limite de temps"
	line "a été effacée."
	done
; 0x1bd266

UnknownText_0x1bd266: ; 0x1bd266
	text "Pick which packet" ;TODO: context
	line "as an error?"
	done
; 0x1bd286

UnknownText_0x1bd286: ; 0x1bd286
	text "Echange de"
	text "@"
	text_from_ram StringBuffer2
	text ""
	line "contre" @"
	text_from_ram StringBuffer1
	text "<...>"
	done
; 0x1bd2a0

UnknownText_0x1bd2a0: ; 0x1bd2a0
	text "Obtained the" ;N'est pas utilisé
	line "VOLTORBBADGE!"
	done
; 0x1bd2bc

UnknownText_0x1bd2bc: ; 0x1bd2bc
	text "Quel étage?"
	done
; 0x1bd2ca

UnknownText_0x1bd2ca: ; 0x1bd2ca
	text "SPEAKER: BEEEP!"

	para "Temps écoulé!"
	done
; 0x1bd2e7

UnknownText_0x1bd2e7: ; 0x1bd2e7
	text "SPEAKER: Le con-"
	line "cours est terminé!"
	done
; 0x1bd308

UnknownText_0x1bd308: ; 0x1bd308
	text "L'effet du REPOUSSE"
	line "se dissipe."
	done
; 0x1bd321

_UseAnotherRepelText:
	text "L'effet du REPOUSSE"
	line "se dissipe."

	para "En utiliser"
	line "un autre?"
	done

UnknownText_0x1bd321: ; 0x1bd321
	text $52, " trouve"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done
; 0x1bd331

UnknownText_0x1bd331: ; 0x1bd331
	text "Mais ", $52, " n'a"
	line "plus de place<...>"
	done
; 0x1bd34b

UnknownText_0x1bd34b: ; 0x1bd34b
	text "Je viens de voir"
	line "un rare @"
	text_from_ram StringBuffer1
	text " dans"
	cont "@"
	text_from_ram StringBuffer2
	text "."

	para "Je t'appelle si je"
	line "vois d'autres PKMN"
	cont "#rares, OK?"
	prompt
; 0x1bd39e

UnknownText_0x1bd39e: ; 0x1bd39e
	text "SAUVEGARDE<...>"
	line "NE PAS ETEINDRE!"
	done
; 0x1bd3be

UnknownText_0x1bd3be: ; 0x1bd3be
	text_from_ram PlayerName
	text " recoit"
	line "@"
	text_from_ram StringBuffer1
	text "!@"
	sound0x0F
	text_waitsfx
	db "@"
; 0x1bd3d6

UnknownText_0x1bd3d6: ; 0x1bd3d6
	db "@"
; 0x1bd3d7

UnknownText_0x1bd3d7: ; 0x1bd3d7
	text "Vous n'avez pas"
	line "de jetons."
	prompt
; 0x1bd3eb

UnknownText_0x1bd3eb: ; 0x1bd3eb
	text "Vous n'avez pas"
	line "de BOITE JETON."
	prompt
; 0x1bd407

UnknownText_0x1bd407: ; 0x1bd407
	text "OK, branchez le"
	line "Cable LINK."
	prompt
; 0x1bd429

UnknownText_0x1bd429: ; 0x1bd429
	text $52, " a échangé"
	line "@"
	text_from_ram wd050
	text " contre", $55
	db "@"
	text_from_ram StringBuffer2
	text ".@"
	db "@"
; 0x1bd445

UnknownText_0x1bd445: ; 0x1bd445
	sound0x0A
	interpret_data
	db "@"
; 0x1bd448

UnknownText_0x1bd448: ; 0x1bd448
	db "@"
; 0x1bd449

UnknownText_0x1bd449: ; 0x1bd449
	text "Je collectionne les"
	line "PKMN. Tu as"
	cont "@"
	text_from_ram StringBuffer1
	text "?"

	para "Tu veux l'échanger"
	line "contre mon @"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1bd48c

UnknownText_0x1bd48c: ; 0x1bd48c
	text "Pas d'échange ?"
	line "Oooh<...>"
	done
; 0x1bd4aa

UnknownText_0x1bd4aa: ; 0x1bd4aa
	text "Huh? C'est pas"
	line "@"
	text_from_ram StringBuffer1
	text ". "
	cont "Quelle déception<...>"
	done
; 0x1bd4d2

UnknownText_0x1bd4d2: ; 0x1bd4d2
	text "Yay! I got myself" ;TODO: context
	line "@"
	text_from_ram StringBuffer1
	text "!"
	cont "Thanks!"
	done
; 0x1bd4f4

UnknownText_0x1bd4f4: ; 0x1bd4f4
	text "Salut, comment va mon"
	line "@"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1bd512

UnknownText_0x1bd512: ; 0x1bd512
	text "Salut, je cherche"
	line "ce #MON."

	para "Si tu as"
	line "@"
	text_from_ram StringBuffer1
	text ", Tu"

	para "voudrais l'échanger"
	line "contre @"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1bd565

UnknownText_0x1bd565: ; 0x1bd565
	text "Tu ne l'as pas"
	line "non plus?"

	para "Gee, c'est"
	line "décevant<...>"
	done
; 0x1bd5a1

UnknownText_0x1bd5a1: ; 0x1bd5a1
	text "Tu n'as pas"
	line "@"
	text_from_ram StringBuffer1
	text "? Trop"
	cont "triste<...>"
	done
; 0x1bd5cc

UnknownText_0x1bd5cc: ; 0x1bd5cc
	text "Super! Merci!"

	para "Finalement j'ai"
	line "@"
	text_from_ram StringBuffer1
	text "."
	done
; 0x1bd5f4

UnknownText_0x1bd5f4: ; 0x1bd5f4
	text "Salut! Le @"
	text_from_ram wd050
	text ""
	line "que tu m'as"
	cont "échangé va bien!"
	done
; 0x1bd621

UnknownText_0x1bd621: ; 0x1bd621
	text_from_ram wd050
	text "est"
	line "mignon mais je ne"
	cont "l'ai pas."

	para "Tu as un"
	line "@"
	text_from_ram StringBuffer1
	text "?"

	para "Tu me l'échange"
	line "contre @"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1bd673

UnknownText_0x1bd673: ; 0x1bd673
	text "Pas d'échange ?"
	line "Oh, zut<...>"
	done
; 0x1bd696

UnknownText_0x1bd696: ; 0x1bd696
	text "C'est pas"
	line "@"
	text_from_ram StringBuffer1
	text "."

	para "Si t'en trouves"
	line "un, échange le moi"
	cont "<...>S'il te plait."
	done
; 0x1bd6cd

UnknownText_0x1bd6cd: ; 0x1bd6cd
	text "Wow! Merci!"
	line "J'ai toujours voulu"
	cont "@"
	text_from_ram wd050
	text "!"
	done
; 0x1bd6f5

UnknownText_0x1bd6f5: ; 0x1bd6f5
	text "Comment le"
	line "@"
	text_from_ram StringBuffer2
	text " que"
	cont "je t'ai échangé va?"

	para "Ton @"
	text_from_ram wd050
	text "est"
	line "trop mignon!"
	done
; 0x1bd731

UnknownText_0x1bd731: ; 0x1bd731
	text "Uh? Qu'est ce qu'il"
	line "passé ?"
	done
; 0x1bd745

UnknownText_0x1bd745: ; 0x1bd745
	text "L'échange est"
	line "bizarre<...>"

	para "J'en ai encore beau-"
	line "coup a apprendre."
	done
; 0x1bd77f

UnknownText_0x1bd77f: ; 0x1bd77f
	text "<...>"

	para "So, you're leaving"
	line "on an adventure<...>"

	para "OK!"
	line "I'll help too."

	para "But what can I do"
	line "for you?"

	para "I know! I'll save"
	line "money for you."

	para "On a long journey,"
	line "money's important."

	para "Do you want me to"
	line "save your money?"
	done
; 0x1bd868

UnknownText_0x1bd868: ; 0x1bd868
	text "OK, I'll take care"
	line "of your money."
	para $56, $56, $56
	prompt
; 0x1bd88e

UnknownText_0x1bd88e: ; 0x1bd88e
	text "Be careful."

	para "#MON are your"
	line "friends. You need"
	cont "to work as a team."

	para "Now, go on!"
	done
; 0x1bd8da

UnknownText_0x1bd8da: ; 0x1bd8da
	text "Hi! Welcome home!"
	line "You're trying very"
	cont "hard, I see."

	para "I've kept your"
	line "room tidy."

	para "Or is this about"
	line "your money?"
	done
; 0x1bd942

UnknownText_0x1bd942: ; 0x1bd942
	text "What do you want"
	line "to do?"
	done
; 0x1bd95b

UnknownText_0x1bd95b: ; 0x1bd95b
	text "How much do you"
	line "want to save?"
	done
; 0x1bd97a

UnknownText_0x1bd97a: ; 0x1bd97a
	text "How much do you"
	line "want to take?"
	done
; 0x1bd999

UnknownText_0x1bd999: ; 0x1bd999
	text "Do you want to"
	line "save some money?"
	done
; 0x1bd9ba

UnknownText_0x1bd9ba: ; 0x1bd9ba
	text "You haven't saved"
	line "that much."
	prompt
; 0x1bd9d7

UnknownText_0x1bd9d7: ; 0x1bd9d7
	text "You can't take"
	line "that much."
	prompt
; 0x1bd9f1

UnknownText_0x1bd9f1: ; 0x1bd9f1
	text "You don't have"
	line "that much."
	prompt
; 0x1bda0b

UnknownText_0x1bda0b: ; 0x1bda0b
	text "You can't save"
	line "that much."
	prompt
; 0x1bda25

UnknownText_0x1bda25: ; 0x1bda25
	text "OK, I'll save your"
	line "money. Trust me!"

	para $52, ", stick"
	line "with it!"
	done
; 0x1bda5b

UnknownText_0x1bda5b: ; 0x1bda5b
	text "Your money's safe"
	line "here! Get going!"
	done
; 0x1bda7e

UnknownText_0x1bda7e: ; 0x1bda7e
	text $52, ", don't"
	line "give up!"
	done
; 0x1bda90

UnknownText_0x1bda90: ; 0x1bda90
	text "Just do what"
	line "you can."
	done
; 0x1bdaa7

UnknownText_0x1bdaa7: ; 0x1bdaa7
	text ""
	done
; 0x1bdaa9

UnknownText_0x1bdaa9: ; 0x1bdaa9
	text "I'm the DAY-CARE"
	line "MAN. Want me to"
	cont "raise a #MON?"
	done
; 0x1bdad8

UnknownText_0x1bdad8: ; 0x1bdad8
	text "I'm the DAY-CARE"
	line "MAN. Do you know"
	cont "about EGGS?"

	para "I was raising"
	line "#MON with my"
	cont "wife, you see."

	para "We were shocked to"
	line "find an EGG!"

	para "How incredible is"
	line "that?"

	para "So, want me to"
	line "raise a #MON?"
	done
; 0x1bdb85

UnknownText_0x1bdb85: ; 0x1bdb85
	text "I'm the DAY-CARE"
	line "LADY."

	para "Should I raise a"
	line "#MON for you?"
	done
; 0x1bdbbb

UnknownText_0x1bdbbb: ; 0x1bdbbb
	text "I'm the DAY-CARE"
	line "LADY. Do you know"
	cont "about EGGS?"

	para "My husband and I"
	line "were raising some"
	cont "#MON, you see."

	para "We were shocked to"
	line "find an EGG!"

	para "How incredible"
	line "could that be?"

	para "Should I raise a"
	line "#MON for you?"
	done
; 0x1bdc79

UnknownText_0x1bdc79: ; 0x1bdc79
	text "What should I"
	line "raise for you?"
	prompt
; 0x1bdc97

UnknownText_0x1bdc97: ; 0x1bdc97
	text "Oh? But you have"
	line "just one #MON."
	prompt
; 0x1bdcb8

UnknownText_0x1bdcb8: ; 0x1bdcb8
	text "Sorry, but I can't"
	line "accept an EGG."
	prompt
; 0x1bdcda

UnknownText_0x1bdcda: ; 0x1bdcda
	text "Remove MAIL before"
	line "you come see me."
	prompt
; 0x1bdcff

UnknownText_0x1bdcff: ; 0x1bdcff
	text "If you give me"
	line "that, what will"
	cont "you battle with?"
	prompt
; 0x1bdd30

UnknownText_0x1bdd30: ; 0x1bdd30
	text "OK. I'll raise"
	line "your @"
	text_from_ram StringBuffer1
	text "."
	prompt
; 0x1bdd4b

UnknownText_0x1bdd4b: ; 0x1bdd4b
	text "Come back for it"
	line "later."
	done
; 0x1bdd64

UnknownText_0x1bdd64: ; 0x1bdd64
	text "Are we geniuses or"
	line "what? Want to see"
	cont "your @"
	text_from_ram StringBuffer1
	text "?"
	done
; 0x1bdd96

UnknownText_0x1bdd96: ; 0x1bdd96
	text "Your @"
	text_from_ram StringBuffer1
	text ""
	line "has grown a lot."

	para "By level, it's"
	line "grown by @"
	deciram StringBuffer2 + 1, $13
	text "."

	para "If you want your"
	line "#MON back, it"
	cont "will cost ¥@"
	deciram StringBuffer2 + 2, $34
	text "."
	done
; 0x1bde04

UnknownText_0x1bde04: ; 0x1bde04
	text "Perfect! Here's"
	line "your #MON."
	prompt
; 0x1bde1f

UnknownText_0x1bde1f: ; 0x1bde1f
	text $52, " got back"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 0x1bde32

UnknownText_0x1bde32: ; 0x1bde32
	text "Huh? Back already?"
	line "Your @"
	text_from_ram StringBuffer1
	text $51
	db "needs a little"
	line "more time with us."

	para "If you want your"
	line "#MON back, it"
	cont "will cost ¥100."
	done
; 0x1bdea2

UnknownText_0x1bdea2: ; 0x1bdea2
	text "You have no room"
	line "for it."
	prompt
; 0x1bdebc

UnknownText_0x1bdebc: ; 0x1bdebc
	text "You don't have"
	line "enough money."
	prompt
; 0x1bded9

UnknownText_0x1bded9: ; 0x1bded9
	text "Oh, fine then."
	prompt
; 0x1bdee9

UnknownText_0x1bdee9: ; 0x1bdee9
	text "Come again."
	done
; 0x1bdef6

UnknownText_0x1bdef6: ; 0x1bdef6
	text "Not yet<...>"
	done
; 0x1bdf00

UnknownText_0x1bdf00: ; 0x1bdf00
	text "Ah, it's you!"

	para "We were raising"
	line "your #MON, and"

	para "my goodness, were"
	line "we surprised!"

	para "Your #MON had"
	line "an EGG!"

	para "We don't know how"
	line "it got there, but"

	para "your #MON had"
	line "it. You want it?"
	done
; 0x1bdfa5

UnknownText_0x1bdfa5: ; 0x1bdfa5
	text $52, " received"
	line "the EGG!"
	done
; 0x1bdfba

UnknownText_0x1bdfba: ; 0x1bdfba
	text "Take good care of"
	line "it."
	done
; 0x1bdfd1

UnknownText_0x1bdfd1: ; 0x1bdfd1
	text "Well then, I'll"
	line "keep it. Thanks!"
	done
; 0x1bdff2

UnknownText_0x1bdff2: ; 0x1bdff2
	text "You have no room"
	line "in your party."
	cont "Come back later."
	done
; 0x1be024

UnknownText_0x1be024: ; 0x1be024
	text "Which #MON"
	line "should I photo-"
	cont "graph?"
	prompt
; 0x1be047

UnknownText_0x1be047: ; 0x1be047
	text "All righty. Hold"
	line "still for a bit."
	prompt
; 0x1be06a

UnknownText_0x1be06a: ; 0x1be06a
	text "Presto! All done."
	line "Come again, OK?"
	done
; 0x1be08d
