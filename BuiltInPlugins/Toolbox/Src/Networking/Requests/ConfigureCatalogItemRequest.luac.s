PROTO_0:
        0 DUPTABLE                         R2 K3 [{"name", "description", "genres"}]
        1 SETTABLEKS                       R0 R2 K0 ["name"]
        3 SETTABLEKS                       R1 R2 K1 ["description"]
        5 NEWTABLE                         R3 0 1
        7 LOADK                            R4 K4 ["all"]
        8 SETLIST                          R3 R4 1 [1]
       10 SETTABLEKS                       R3 R2 K2 ["genres"]
       12 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 GETUPVAL                         R6 4
        5 GETUPVAL                         R7 5
        6 GETUPVAL                         R8 6
        7 GETUPVAL                         R9 7
        8 GETUPVAL                         R11 8
        9 CALL                             R11 0 1
       10 JUMPIFNOT                        R11 ; [+2]
       11 LOADNIL                          R10
       12 JUMP                             ; [+1]
       13 GETUPVAL                         R10 9
       14 GETUPVAL                         R12 8
       15 CALL                             R12 0 1
       16 JUMPIFNOT                        R12 ; [+2]
       17 LOADNIL                          R11
       18 JUMP                             ; [+1]
       19 GETUPVAL                         R11 10
       20 CALL                             R3 8 -1
       21 NAMECALL                         R1 R1 K0 ["dispatch"]
       23 CALL                             R1 -1 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Lua toolbox: Could not configure catalog item"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 DUPTABLE                         R4 K5 [{"responseBody"}]
       12 SETTABLEKS                       R0 R4 K4 ["responseBody"]
       14 CALL                             R3 1 -1
       15 NAMECALL                         R1 R1 K6 ["dispatch"]
       17 CALL                             R1 -1 0
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R3 3
       20 LOADB                            R4 0
       21 CALL                             R3 1 -1
       22 NAMECALL                         R1 R1 K6 ["dispatch"]
       24 CALL                             R1 -1 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LOADN                            R3 1
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["NAME_CHARACTER_LIMIT"]
        5 FASTCALL                         STRING_SUB ; [+2]
        6 GETIMPORT                        R1 K3 [string.sub]
        8 CALL                             R1 3 1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R2 2
       11 LOADN                            R3 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K4 ["DESCRIPTION_CHARACTER_LIMIT"]
       15 FASTCALL                         STRING_SUB ; [+2]
       16 GETIMPORT                        R1 K3 [string.sub]
       18 CALL                             R1 3 1
       19 SETUPVAL                         R1 2
       20 GETUPVAL                         R3 3
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K5 ["SCREENS"]
       24 GETTABLEKS                       R4 R5 K6 ["UPLOADING_ASSET"]
       26 CALL                             R3 1 -1
       27 NAMECALL                         R1 R0 K7 ["dispatch"]
       29 CALL                             R1 -1 0
       30 NEWCLOSURE                       R1 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          UPVAL U8
       37 CAPTURE                          UPVAL U9
       38 CAPTURE                          UPVAL U10
       39 CAPTURE                          UPVAL U11
       40 CAPTURE                          UPVAL U12
       41 CAPTURE                          UPVAL U13
       42 NEWCLOSURE                       R2 P1
       43 CAPTURE                          UPVAL U14
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U15
       46 CAPTURE                          UPVAL U16
       47 GETUPVAL                         R3 5
       48 GETUPVAL                         R5 6
       49 GETUPVAL                         R7 0
       50 GETUPVAL                         R8 2
       51 DUPTABLE                         R6 K11 [{"name", "description", "genres"}]
       52 SETTABLEKS                       R7 R6 K8 ["name"]
       54 SETTABLEKS                       R8 R6 K9 ["description"]
       56 NEWTABLE                         R9 0 1
       58 LOADK                            R10 K12 ["all"]
       59 SETLIST                          R9 R10 1 [1]
       61 SETTABLEKS                       R9 R6 K10 ["genres"]
       63 NAMECALL                         R3 R3 K13 ["configureCatalogItem"]
       65 CALL                             R3 3 1
       66 MOVE                             R5 R1
       67 MOVE                             R6 R2
       68 NAMECALL                         R3 R3 K14 ["andThen"]
       70 CALL                             R3 3 0
       71 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R10 P0
        1 CAPTURE                          REF R2
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          REF R3
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R4
        9 CAPTURE                          VAL R5
       10 CAPTURE                          VAL R6
       11 CAPTURE                          VAL R7
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R8
       14 CAPTURE                          VAL R9
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CLOSEUPVALS                      R2
       19 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Actions"]
       17 GETTABLEKS                       R2 R3 K7 ["NetworkError"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K6 ["Actions"]
       26 GETTABLEKS                       R3 R4 K8 ["SetCurrentScreen"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Src"]
       33 GETTABLEKS                       R5 R6 K6 ["Actions"]
       35 GETTABLEKS                       R4 R5 K9 ["UploadResult"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R7 R0 K5 ["Src"]
       42 GETTABLEKS                       R6 R7 K10 ["Util"]
       44 GETTABLEKS                       R5 R6 K11 ["DebugFlags"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R8 R0 K5 ["Src"]
       51 GETTABLEKS                       R7 R8 K10 ["Util"]
       53 GETTABLEKS                       R6 R7 K12 ["AssetConfigConstants"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K4 [require]
       58 GETTABLEKS                       R10 R0 K5 ["Src"]
       60 GETTABLEKS                       R9 R10 K13 ["Networking"]
       62 GETTABLEKS                       R8 R9 K14 ["Requests"]
       64 GETTABLEKS                       R7 R8 K15 ["ConfigureSalesRequest"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K4 [require]
       69 GETTABLEKS                       R10 R0 K5 ["Src"]
       71 GETTABLEKS                       R9 R10 K16 ["Flags"]
       73 GETTABLEKS                       R8 R9 K17 ["getFFlagRemoveItemTags"]
       75 CALL                             R7 1 1
       76 DUPCLOSURE                       R8 K18 [PROTO_0]
       77 DUPCLOSURE                       R9 K19 [PROTO_4]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R3
       85 RETURN                           R9 1
