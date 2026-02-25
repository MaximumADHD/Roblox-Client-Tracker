PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K3 ["setPluginObject"]
       10 GETIMPORT                        R1 K1 [plugin]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R0 R1 K4 ["createElement"]
       16 GETUPVAL                         R1 3
       17 DUPTABLE                         R2 K6 [{"Plugin"}]
       18 GETIMPORT                        R3 K1 [plugin]
       20 SETTABLEKS                       R3 R2 K5 ["Plugin"]
       22 CALL                             R0 2 1
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R1 R2 K7 ["mount"]
       26 MOVE                             R2 R0
       27 CALL                             R1 1 1
       28 SETUPVAL                         R1 4
       29 GETUPVAL                         R1 5
       30 JUMPIFNOT                        R1 ; [+28]
       31 GETIMPORT                        R2 K9 [require]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R4 R5 K10 ["Packages"]
       36 GETTABLEKS                       R3 R4 K11 ["DeveloperTools"]
       38 CALL                             R2 1 1
       39 GETTABLEKS                       R1 R2 K12 ["forStandalonePlugin"]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R2 R3 K2 ["Name"]
       44 GETIMPORT                        R3 K1 [plugin]
       46 DUPTABLE                         R4 K15 [{"rootInstance", "rootPrefix"}]
       47 GETUPVAL                         R5 4
       48 SETTABLEKS                       R5 R4 K13 ["rootInstance"]
       50 NEWTABLE                         R5 0 1
       52 LOADK                            R6 K16 ["UserInputPlaybackGui"]
       53 SETLIST                          R5 R6 1 [1]
       55 SETTABLEKS                       R5 R4 K14 ["rootPrefix"]
       57 CALL                             R1 3 1
       58 SETUPVAL                         R1 6
       59 GETUPVAL                         R1 6
       60 JUMPIFNOT                        R1 ; [+6]
       61 GETUPVAL                         R1 6
       62 LOADK                            R3 K17 ["Roact tree"]
       63 GETUPVAL                         R4 4
       64 NAMECALL                         R1 R1 K18 ["addRoactTree"]
       66 CALL                             R1 3 0
       67 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K1 ["unmount"]
       11 GETUPVAL                         R1 1
       12 CALL                             R0 1 0
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 1
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R3 K3 [script]
        7 GETTABLEKS                       R2 R3 K4 ["Parent"]
        9 GETTABLEKS                       R1 R2 K4 ["Parent"]
       11 GETTABLEKS                       R0 R1 K5 ["Common"]
       13 GETIMPORT                        R1 K7 [require]
       15 GETTABLEKS                       R2 R0 K8 ["defineLuaFlags"]
       17 CALL                             R1 1 0
       18 GETIMPORT                        R1 K10 [pcall]
       20 DUPCLOSURE                       R2 K11 [PROTO_0]
       21 CALL                             R1 1 2
       22 JUMPIFNOT                        R1 ; [+1]
       23 JUMPIF                           R2 ; [+1]
       24 RETURN                           R0 0
       25 GETIMPORT                        R3 K7 [require]
       27 GETTABLEKS                       R4 R0 K12 ["commonInit"]
       29 CALL                             R3 1 1
       30 MOVE                             R4 R3
       31 CALL                             R4 0 0
       32 GETIMPORT                        R6 K3 [script]
       34 GETTABLEKS                       R5 R6 K4 ["Parent"]
       36 GETTABLEKS                       R4 R5 K4 ["Parent"]
       38 GETIMPORT                        R5 K7 [require]
       40 GETTABLEKS                       R7 R4 K13 ["Packages"]
       42 GETTABLEKS                       R6 R7 K14 ["Roact"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K7 [require]
       47 GETTABLEKS                       R8 R4 K15 ["Src"]
       49 GETTABLEKS                       R7 R8 K16 ["MainPlugin"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K7 [require]
       54 GETTABLEKS                       R10 R4 K15 ["Src"]
       56 GETTABLEKS                       R9 R10 K17 ["Util"]
       58 GETTABLEKS                       R8 R9 K18 ["DMBridge"]
       60 CALL                             R7 1 1
       61 LOADNIL                          R8
       62 LOADNIL                          R9
       63 NEWCLOSURE                       R10 P1
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R6
       68 CAPTURE                          REF R8
       69 CAPTURE                          VAL R2
       70 CAPTURE                          REF R9
       71 GETIMPORT                        R12 K1 [plugin]
       73 GETTABLEKS                       R11 R12 K19 ["Unloading"]
       75 NEWCLOSURE                       R13 P2
       76 CAPTURE                          REF R9
       77 CAPTURE                          REF R8
       78 CAPTURE                          VAL R5
       79 NAMECALL                         R11 R11 K20 ["Connect"]
       81 CALL                             R11 2 0
       82 MOVE                             R11 R10
       83 CALL                             R11 0 0
       84 CLOSEUPVALS                      R8
       85 RETURN                           R0 0
