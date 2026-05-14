PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["CharacterConversion"]
        5 GETTABLEKS                       R2 R2 K2 ["selection"]
        7 GETTABLEKS                       R3 R1 K1 ["CharacterConversion"]
        9 GETTABLEKS                       R3 R3 K3 ["convertedCharacters"]
       11 MOVE                             R4 R2
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLE                         R9 R3 R8
       16 JUMPIFNOT                        R9 ; [+39]
       17 GETTABLEKS                       R10 R9 K4 ["model"]
       19 JUMPIFNOT                        R10 ; [+36]
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R12 R9 K4 ["model"]
       23 NAMECALL                         R10 R10 K5 ["removeTag"]
       25 CALL                             R10 2 0
       26 GETUPVAL                         R10 1
       27 GETTABLEKS                       R12 R9 K4 ["model"]
       29 NAMECALL                         R10 R10 K5 ["removeTag"]
       31 CALL                             R10 2 0
       32 GETTABLEKS                       R10 R9 K4 ["model"]
       34 NAMECALL                         R10 R10 K6 ["Clone"]
       36 CALL                             R10 1 1
       37 GETUPVAL                         R11 2
       38 GETTABLEKS                       R11 R11 K7 ["ReplaceModel"]
       40 MOVE                             R12 R8
       41 MOVE                             R13 R10
       42 LOADB                            R14 0
       43 CALL                             R11 3 0
       44 GETUPVAL                         R11 3
       45 MOVE                             R13 R10
       46 NAMECALL                         R11 R11 K8 ["addTag"]
       48 CALL                             R11 2 0
       49 GETUPVAL                         R13 4
       50 MOVE                             R14 R9
       51 LOADB                            R15 0
       52 CALL                             R13 2 -1
       53 NAMECALL                         R11 R0 K9 ["dispatch"]
       55 CALL                             R11 -1 0
       56 FORGLOOP                         R4 2 ; [-42]
       58 NAMECALL                         R4 R0 K0 ["getState"]
       60 CALL                             R4 1 1
       61 MOVE                             R1 R4
       62 GETTABLEKS                       R4 R1 K1 ["CharacterConversion"]
       64 GETTABLEKS                       R4 R4 K3 ["convertedCharacters"]
       66 GETUPVAL                         R6 5
       67 GETTABLEKS                       R6 R6 K10 ["Dictionary"]
       69 GETTABLEKS                       R6 R6 K11 ["keys"]
       71 MOVE                             R7 R4
       72 CALL                             R6 1 1
       73 LENGTH                           R5 R6
       74 JUMPIFNOTEQKN                    R5 K12 [0] ; [+34]
       76 GETIMPORT                        R5 K14 [game]
       78 LOADK                            R7 K15 ["ReplicatedStorage"]
       79 NAMECALL                         R5 R5 K16 ["GetService"]
       81 CALL                             R5 2 1
       82 LOADK                            R8 K17 ["AvatarUnification"]
       83 NAMECALL                         R6 R5 K18 ["FindFirstChild"]
       85 CALL                             R6 2 1
       86 JUMPIFNOT                        R6 ; [+3]
       87 NAMECALL                         R7 R6 K19 ["Destroy"]
       89 CALL                             R7 1 0
       90 GETIMPORT                        R7 K14 [game]
       92 LOADK                            R9 K20 ["StarterPlayer"]
       93 NAMECALL                         R7 R7 K16 ["GetService"]
       95 CALL                             R7 2 1
       96 LOADK                            R10 K21 ["StarterCharacterScripts"]
       97 NAMECALL                         R8 R7 K18 ["FindFirstChild"]
       99 CALL                             R8 2 1
      100 JUMPIFNOT                        R8 ; [+8]
      101 LOADK                            R11 K22 ["LocalEffects"]
      102 NAMECALL                         R9 R8 K18 ["FindFirstChild"]
      104 CALL                             R9 2 1
      105 JUMPIFNOT                        R9 ; [+3]
      106 NAMECALL                         R10 R9 K19 ["Destroy"]
      108 CALL                             R10 1 0
      109 GETUPVAL                         R5 6
      110 LOADK                            R7 K23 ["onCharactersReverted"]
      111 NAMECALL                         R5 R5 K24 ["getHandler"]
      113 CALL                             R5 2 1
      114 MOVE                             R6 R3
      115 MOVE                             R7 R2
      116 CALL                             R5 2 0
      117 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          VAL R0
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R2 K9 ["Actions"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K10 ["SetAdapted"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R2 K11 ["SetCharacterConverted"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R0 K8 ["Src"]
       30 GETTABLEKS                       R5 R5 K12 ["Modules"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R5 K13 ["NpcManager"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R7 R0 K8 ["Src"]
       39 GETTABLEKS                       R7 R7 K14 ["Util"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R7 K15 ["PublishTagging"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R8 R8 K16 ["CharacterTagging"]
       48 GETIMPORT                        R9 K5 [require]
       50 GETTABLEKS                       R10 R7 K15 ["PublishTagging"]
       52 CALL                             R9 1 1
       53 GETTABLEKS                       R9 R9 K17 ["AdapterTagging"]
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R7 K18 ["QuickAccessTagging"]
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R10 R10 K19 ["CharactersConvertedToR15Tagging"]
       62 DUPCLOSURE                       R11 K20 [PROTO_1]
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R1
       69 RETURN                           R11 1
