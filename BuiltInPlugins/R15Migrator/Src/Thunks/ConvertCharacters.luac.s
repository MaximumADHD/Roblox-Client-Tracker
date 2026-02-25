PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["CharacterConversion"]
        5 GETTABLEKS                       R2 R3 K2 ["selection"]
        7 GETTABLEKS                       R4 R1 K1 ["CharacterConversion"]
        9 GETTABLEKS                       R3 R4 K3 ["characters"]
       11 MOVE                             R4 R2
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLE                         R9 R3 R8
       16 JUMPIFNOT                        R9 ; [+41]
       17 GETTABLEKS                       R10 R9 K4 ["model"]
       19 JUMPIFNOT                        R10 ; [+38]
       20 GETTABLEKS                       R10 R9 K4 ["model"]
       22 NAMECALL                         R10 R10 K5 ["Clone"]
       24 CALL                             R10 1 1
       25 GETUPVAL                         R12 0
       26 GETTABLEKS                       R11 R12 K6 ["ReplaceModel"]
       28 MOVE                             R12 R8
       29 MOVE                             R13 R10
       30 LOADB                            R14 1
       31 GETTABLEKS                       R16 R1 K7 ["Adapter"]
       33 GETTABLEKS                       R15 R16 K8 ["adapted"]
       35 CALL                             R11 4 0
       36 GETUPVAL                         R11 1
       37 MOVE                             R13 R10
       38 NAMECALL                         R11 R11 K9 ["addTag"]
       40 CALL                             R11 2 0
       41 GETUPVAL                         R11 2
       42 MOVE                             R13 R10
       43 NAMECALL                         R11 R11 K9 ["addTag"]
       45 CALL                             R11 2 0
       46 GETUPVAL                         R11 3
       47 MOVE                             R13 R10
       48 NAMECALL                         R11 R11 K10 ["removeTag"]
       50 CALL                             R11 2 0
       51 GETUPVAL                         R13 4
       52 MOVE                             R14 R9
       53 LOADB                            R15 1
       54 CALL                             R13 2 -1
       55 NAMECALL                         R11 R0 K11 ["dispatch"]
       57 CALL                             R11 -1 0
       58 FORGLOOP                         R4 2 ; [-44]
       60 GETUPVAL                         R4 5
       61 LOADK                            R6 K12 ["onCharactersConverted"]
       62 NAMECALL                         R4 R4 K13 ["getHandler"]
       64 CALL                             R4 2 1
       65 MOVE                             R5 R3
       66 MOVE                             R6 R2
       67 CALL                             R4 2 0
       68 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetAdapted"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SetCharacterConverted"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R5 R0 K4 ["Src"]
       23 GETTABLEKS                       R4 R5 K10 ["Modules"]
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R4 K11 ["NpcManager"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R7 R0 K4 ["Src"]
       32 GETTABLEKS                       R6 R7 K12 ["Util"]
       34 GETIMPORT                        R8 K7 [require]
       36 GETTABLEKS                       R9 R6 K13 ["PublishTagging"]
       38 CALL                             R8 1 1
       39 GETTABLEKS                       R7 R8 K14 ["AdapterTagging"]
       41 GETIMPORT                        R9 K7 [require]
       43 GETTABLEKS                       R10 R6 K13 ["PublishTagging"]
       45 CALL                             R9 1 1
       46 GETTABLEKS                       R8 R9 K15 ["CharacterTagging"]
       48 GETIMPORT                        R10 K7 [require]
       50 GETTABLEKS                       R11 R6 K16 ["QuickAccessTagging"]
       52 CALL                             R10 1 1
       53 GETTABLEKS                       R9 R10 K17 ["CharactersConvertedToR15Tagging"]
       55 DUPCLOSURE                       R10 K18 [PROTO_1]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R3
       61 RETURN                           R10 1
