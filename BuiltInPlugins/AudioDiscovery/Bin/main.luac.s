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
        9 DUPTABLE                         R1 K3 [{"isInternal"}]
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R1 K2 ["isInternal"]
       13 CALL                             R0 1 1
       14 GETUPVAL                         R1 4
       15 GETTABLEKS                       R1 R1 K1 ["new"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 1
       19 SETUPVAL                         R1 3
       20 GETUPVAL                         R1 3
       21 NAMECALL                         R1 R1 K4 ["start"]
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 5
       25 GETTABLEKS                       R1 R1 K5 ["createElement"]
       27 GETUPVAL                         R2 6
       28 DUPTABLE                         R3 K10 [{"Plugin", "pluginLoaderContext", "SoundAssetChecker", "toggleUri"}]
       29 GETUPVAL                         R4 0
       30 SETTABLEKS                       R4 R3 K6 ["Plugin"]
       32 GETUPVAL                         R4 7
       33 SETTABLEKS                       R4 R3 K7 ["pluginLoaderContext"]
       35 GETUPVAL                         R4 3
       36 SETTABLEKS                       R4 R3 K8 ["SoundAssetChecker"]
       38 GETUPVAL                         R5 8
       39 GETTABLEKS                       R5 R5 K11 ["shouldMigrateToActions"]
       41 CALL                             R5 0 1
       42 JUMPIFNOT                        R5 ; [+2]
       43 GETUPVAL                         R4 9
       44 JUMP                             ; [+1]
       45 LOADNIL                          R4
       46 SETTABLEKS                       R4 R3 K9 ["toggleUri"]
       48 CALL                             R1 2 1
       49 GETUPVAL                         R2 5
       50 GETTABLEKS                       R2 R2 K12 ["mount"]
       52 MOVE                             R3 R1
       53 CALL                             R2 1 1
       54 SETUPVAL                         R2 10
       55 GETUPVAL                         R2 11
       56 JUMPIFNOT                        R2 ; [+6]
       57 GETUPVAL                         R2 11
       58 LOADK                            R4 K13 ["Roact tree"]
       59 GETUPVAL                         R5 10
       60 NAMECALL                         R2 R2 K14 ["addRoactTree"]
       62 CALL                             R2 3 0
       63 RETURN                           R0 0

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
       13 GETIMPORT                        R5 K8 [pcall]
       15 DUPCLOSURE                       R6 K9 [PROTO_0]
       16 CALL                             R5 1 2
       17 GETIMPORT                        R7 K8 [pcall]
       19 DUPCLOSURE                       R8 K10 [PROTO_1]
       20 CALL                             R7 1 2
       21 GETIMPORT                        R9 K4 [require]
       23 GETTABLEKS                       R10 R3 K11 ["Bin"]
       25 GETTABLEKS                       R10 R10 K12 ["defineLuaFlags"]
       27 CALL                             R9 1 1
       28 GETIMPORT                        R10 K4 [require]
       30 GETTABLEKS                       R11 R3 K5 ["Packages"]
       32 GETTABLEKS                       R11 R11 K13 ["Roact"]
       34 CALL                             R10 1 1
       35 GETTABLEKS                       R11 R4 K14 ["Http"]
       37 GETTABLEKS                       R11 R11 K15 ["Networking"]
       39 GETIMPORT                        R12 K4 [require]
       41 GETTABLEKS                       R13 R3 K16 ["Src"]
       43 GETTABLEKS                       R13 R13 K17 ["MainPlugin"]
       45 CALL                             R12 1 1
       46 GETIMPORT                        R13 K4 [require]
       48 GETTABLEKS                       R14 R3 K16 ["Src"]
       50 GETTABLEKS                       R14 R14 K18 ["Util"]
       52 GETTABLEKS                       R14 R14 K19 ["SoundAssetChecker"]
       54 CALL                             R13 1 1
       55 LOADNIL                          R14
       56 LOADNIL                          R15
       57 LOADNIL                          R16
       58 JUMPIFNOT                        R6 ; [+14]
       59 GETIMPORT                        R17 K4 [require]
       61 GETTABLEKS                       R18 R3 K5 ["Packages"]
       63 GETTABLEKS                       R18 R18 K20 ["DeveloperTools"]
       65 CALL                             R17 1 1
       66 GETTABLEKS                       R17 R17 K21 ["forPlugin"]
       68 GETTABLEKS                       R18 R3 K22 ["Name"]
       70 MOVE                             R19 R0
       71 CALL                             R17 2 1
       72 MOVE                             R16 R17
       73 NEWCLOSURE                       R17 P2
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R11
       77 CAPTURE                          REF R15
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R2
       84 CAPTURE                          REF R14
       85 CAPTURE                          REF R16
       86 GETTABLEKS                       R18 R0 K23 ["Unloading"]
       88 NEWCLOSURE                       R20 P3
       89 CAPTURE                          REF R15
       90 CAPTURE                          REF R16
       91 CAPTURE                          REF R14
       92 CAPTURE                          VAL R10
       93 NAMECALL                         R18 R18 K24 ["Connect"]
       95 CALL                             R18 2 0
       96 MOVE                             R18 R17
       97 CALL                             R18 0 0
       98 CLOSEUPVALS                      R14
       99 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_4]
        2 RETURN                           R0 1
