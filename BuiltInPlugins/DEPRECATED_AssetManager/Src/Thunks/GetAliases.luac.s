PROTO_0:
        0 SETUPVAL                         R0 0
        1 SETUPVAL                         R1 1
        2 JUMPIF                           R2 ; [+5]
        3 GETUPVAL                         R3 2
        4 GETUPVAL                         R5 3
        5 ADDK                             R4 R5 K0 [1]
        6 CALL                             R3 1 1
        7 RETURN                           R3 1
        8 GETUPVAL                         R3 0
        9 GETUPVAL                         R4 1
       10 RETURN                           R3 2

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["IMAGES"]
        4 GETTABLEKS                       R3 R4 K1 ["Path"]
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 GETUPVAL                         R3 0
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K2 ["MESHES"]
       14 GETTABLEKS                       R4 R5 K1 ["Path"]
       16 JUMPIFEQ                         R3 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 GETUPVAL                         R3 2
       21 CALL                             R3 0 1
       22 JUMPIFNOT                        R3 ; [+10]
       23 GETUPVAL                         R4 0
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R6 R7 K3 ["AUDIO"]
       27 GETTABLEKS                       R5 R6 K1 ["Path"]
       29 JUMPIFEQ                         R4 R5 ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 GETUPVAL                         R4 3
       34 CALL                             R4 0 1
       35 JUMPIFNOT                        R4 ; [+10]
       36 GETUPVAL                         R5 0
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R7 R8 K4 ["VIDEO"]
       40 GETTABLEKS                       R6 R7 K1 ["Path"]
       42 JUMPIFEQ                         R5 R6 ; [+2]
       44 LOADB                            R4 0 +1
       45 LOADB                            R4 1
       46 GETUPVAL                         R6 0
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R8 R9 K5 ["MODELS"]
       50 GETTABLEKS                       R7 R8 K1 ["Path"]
       52 JUMPIFEQ                         R6 R7 ; [+2]
       54 LOADB                            R5 0 +1
       55 LOADB                            R5 1
       56 NEWTABLE                         R6 8 0
       58 SETTABLEKS                       R1 R6 K6 ["Images/"]
       60 SETTABLEKS                       R2 R6 K7 ["Meshes/"]
       62 SETTABLEKS                       R3 R6 K8 ["Audio/"]
       64 SETTABLEKS                       R4 R6 K9 ["Video/"]
       66 SETTABLEKS                       R5 R6 K10 ["Models/"]
       68 MOVE                             R7 R1
       69 JUMPIF                           R7 ; [+7]
       70 MOVE                             R7 R2
       71 JUMPIF                           R7 ; [+5]
       72 MOVE                             R7 R3
       73 JUMPIF                           R7 ; [+3]
       74 MOVE                             R7 R4
       75 JUMPIF                           R7 ; [+1]
       76 MOVE                             R7 R5
       77 JUMPIFNOT                        R7 ; [+35]
       78 GETUPVAL                         R11 4
       79 GETTABLEKS                       R10 R11 K11 ["API"]
       81 GETTABLEKS                       R9 R10 K12 ["Universes"]
       83 GETTABLEKS                       R8 R9 K13 ["getAliases"]
       85 GETIMPORT                        R10 K15 [game]
       87 GETTABLEKS                       R9 R10 K16 ["GameId"]
       89 MOVE                             R10 R0
       90 CALL                             R8 2 1
       91 NAMECALL                         R8 R8 K17 ["makeRequest"]
       93 CALL                             R8 1 1
       94 GETUPVAL                         R10 5
       95 GETUPVAL                         R11 6
       96 GETUPVAL                         R12 0
       97 GETUPVAL                         R13 7
       98 MOVE                             R14 R0
       99 MOVE                             R15 R6
      100 CALL                             R10 5 -1
      101 NAMECALL                         R8 R8 K18 ["andThen"]
      103 CALL                             R8 -1 1
      104 NEWCLOSURE                       R10 P0
      105 CAPTURE                          UPVAL U6
      106 CAPTURE                          UPVAL U8
      107 CAPTURE                          UPVAL U9
      108 CAPTURE                          VAL R0
      109 NAMECALL                         R8 R8 K18 ["andThen"]
      111 CALL                             R8 2 -1
      112 RETURN                           R8 -1
      113 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R4 1 0
        2 NEWTABLE                         R5 0 0
        4 SETTABLEKS                       R5 R4 K0 ["assets"]
        6 LOADN                            R5 1
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          REF R4
       15 CAPTURE                          VAL R3
       16 CAPTURE                          REF R5
       17 CAPTURE                          VAL R6
       18 MOVE                             R7 R6
       19 MOVE                             R8 R2
       20 CALL                             R7 1 -1
       21 CLOSEUPVALS                      R4
       22 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R6 R0 K7 ["Src"]
       20 GETTABLEKS                       R5 R6 K8 ["Util"]
       22 GETTABLEKS                       R4 R5 K9 ["AssetManagerUtilities"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R2 R3 K10 ["enableAudioImport"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R7 R0 K7 ["Src"]
       31 GETTABLEKS                       R6 R7 K8 ["Util"]
       33 GETTABLEKS                       R5 R6 K9 ["AssetManagerUtilities"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R3 R4 K11 ["enableVideoImport"]
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R7 R0 K7 ["Src"]
       42 GETTABLEKS                       R6 R7 K12 ["Thunks"]
       44 GETTABLEKS                       R5 R6 K13 ["GetAssetResponse"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R8 R0 K7 ["Src"]
       51 GETTABLEKS                       R7 R8 K8 ["Util"]
       53 GETTABLEKS                       R6 R7 K14 ["Screens"]
       55 CALL                             R5 1 1
       56 DUPCLOSURE                       R6 K15 [PROTO_2]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R4
       61 RETURN                           R6 1
