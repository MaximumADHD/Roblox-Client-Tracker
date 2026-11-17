PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RunService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["IsEdit"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Name"]
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["new"]
        9 DUPTABLE                         R1 K4 [{["isInternal"] = True}]
       10 CALL                             R0 1 1
       11 GETUPVAL                         R1 4
       12 GETTABLEKS                       R1 R1 K1 ["new"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 SETUPVAL                         R1 3
       17 GETUPVAL                         R1 3
       18 NAMECALL                         R1 R1 K5 ["start"]
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 5
       22 GETTABLEKS                       R1 R1 K6 ["createElement"]
       24 GETUPVAL                         R2 6
       25 DUPTABLE                         R3 K11 [{"Plugin", "pluginLoaderContext", "SoundAssetChecker", "toggleUri"}]
       26 GETUPVAL                         R4 0
       27 SETTABLEKS                       R4 R3 K7 ["Plugin"]
       29 GETUPVAL                         R4 7
       30 SETTABLEKS                       R4 R3 K8 ["pluginLoaderContext"]
       32 GETUPVAL                         R4 3
       33 SETTABLEKS                       R4 R3 K9 ["SoundAssetChecker"]
       35 GETUPVAL                         R5 8
       36 GETTABLEKS                       R5 R5 K12 ["shouldMigrateToActions"]
       38 CALL                             R5 0 1
       39 JUMPIFNOT                        R5 ; [+2]
       40 GETUPVAL                         R4 9
       41 JUMP                             ; [+1]
       42 LOADNIL                          R4
       43 SETTABLEKS                       R4 R3 K10 ["toggleUri"]
       45 CALL                             R1 2 1
       46 GETUPVAL                         R2 5
       47 GETTABLEKS                       R2 R2 K13 ["mount"]
       49 MOVE                             R3 R1
       50 CALL                             R2 1 1
       51 SETUPVAL                         R2 10
       52 GETUPVAL                         R2 11
       53 JUMPIFNOT                        R2 ; [+6]
       54 GETUPVAL                         R2 11
       55 LOADK                            R4 K14 ["Roact tree"]
       56 GETUPVAL                         R5 10
       57 NAMECALL                         R2 R2 K15 ["addRoactTree"]
       59 CALL                             R2 3 0
       60 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K0 ["destroy"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 2
       15 JUMPIFNOT                        R0 ; [+7]
       16 GETUPVAL                         R0 3
       17 GETTABLEKS                       R0 R0 K1 ["unmount"]
       19 GETUPVAL                         R1 2
       20 CALL                             R0 1 0
       21 LOADNIL                          R0
       22 SETUPVAL                         R0 2
       23 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R3 K1 [script]
        2 GETTABLEKS                       R3 R3 K2 ["Parent"]
        4 GETTABLEKS                       R3 R3 K2 ["Parent"]
        6 GETIMPORT                        R4 K4 [require]
        8 GETTABLEKS                       R5 R3 K5 ["Packages"]
       10 GETTABLEKS                       R5 R5 K6 ["Framework"]
       12 CALL                             R4 1 1
       13 DUPCLOSURE                       R6 K7 [PROTO_0]
       14 FASTPCALL                        pcall 1 ; [+2]
       15 GETIMPORT                        R5 K9 [pcall]
       17 CALL                             R5 1 2
       18 DUPCLOSURE                       R8 K10 [PROTO_1]
       19 FASTPCALL                        pcall 1 ; [+2]
       20 GETIMPORT                        R7 K9 [pcall]
       22 CALL                             R7 1 2
       23 GETIMPORT                        R9 K4 [require]
       25 GETTABLEKS                       R10 R3 K11 ["Bin"]
       27 GETTABLEKS                       R10 R10 K12 ["defineLuaFlags"]
       29 CALL                             R9 1 1
       30 GETIMPORT                        R10 K4 [require]
       32 GETTABLEKS                       R11 R3 K5 ["Packages"]
       34 GETTABLEKS                       R11 R11 K13 ["Roact"]
       36 CALL                             R10 1 1
       37 GETTABLEKS                       R11 R4 K14 ["Http"]
       39 GETTABLEKS                       R11 R11 K15 ["Networking"]
       41 GETIMPORT                        R12 K4 [require]
       43 GETTABLEKS                       R13 R3 K16 ["Src"]
       45 GETTABLEKS                       R13 R13 K17 ["MainPlugin"]
       47 CALL                             R12 1 1
       48 GETIMPORT                        R13 K4 [require]
       50 GETTABLEKS                       R14 R3 K16 ["Src"]
       52 GETTABLEKS                       R14 R14 K18 ["Util"]
       54 GETTABLEKS                       R14 R14 K19 ["SoundAssetChecker"]
       56 CALL                             R13 1 1
       57 LOADNIL                          R14
       58 LOADNIL                          R15
       59 LOADNIL                          R16
       60 JUMPIFNOT                        R6 ; [+14]
       61 GETIMPORT                        R17 K4 [require]
       63 GETTABLEKS                       R18 R3 K5 ["Packages"]
       65 GETTABLEKS                       R18 R18 K20 ["DeveloperTools"]
       67 CALL                             R17 1 1
       68 GETTABLEKS                       R17 R17 K21 ["forPlugin"]
       70 GETTABLEKS                       R18 R3 K22 ["Name"]
       72 MOVE                             R19 R0
       73 CALL                             R17 2 1
       74 MOVE                             R16 R17
       75 NEWCLOSURE                       R17 P2
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R11
       79 CAPTURE                          REF R15
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R2
       86 CAPTURE                          REF R14
       87 CAPTURE                          REF R16
       88 GETTABLEKS                       R18 R0 K23 ["Unloading"]
       90 NEWCLOSURE                       R20 P3
       91 CAPTURE                          REF R15
       92 CAPTURE                          REF R16
       93 CAPTURE                          REF R14
       94 CAPTURE                          VAL R10
       95 NAMECALL                         R18 R18 K24 ["Connect"]
       97 CALL                             R18 2 0
       98 MOVE                             R18 R17
       99 CALL                             R18 0 0
      100 CLOSEUPVALS                      R14
      101 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_4]
        2 RETURN                           R0 1
