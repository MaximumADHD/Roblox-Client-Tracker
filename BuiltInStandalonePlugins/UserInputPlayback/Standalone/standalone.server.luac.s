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
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["setPluginObject"]
       10 GETIMPORT                        R1 K1 [plugin]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K4 ["createElement"]
       16 GETUPVAL                         R1 3
       17 DUPTABLE                         R2 K6 [{"Plugin"}]
       18 GETIMPORT                        R3 K1 [plugin]
       20 SETTABLEKS                       R3 R2 K5 ["Plugin"]
       22 CALL                             R0 2 1
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K7 ["mount"]
       26 MOVE                             R2 R0
       27 CALL                             R1 1 1
       28 SETUPVAL                         R1 4
       29 GETUPVAL                         R1 5
       30 JUMPIFNOT                        R1 ; [+28]
       31 GETIMPORT                        R1 K9 [require]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K10 ["Packages"]
       36 GETTABLEKS                       R2 R2 K11 ["DeveloperTools"]
       38 CALL                             R1 1 1
       39 GETTABLEKS                       R1 R1 K12 ["forStandalonePlugin"]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K2 ["Name"]
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
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["unmount"]
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
        5 GETIMPORT                        R0 K3 [script]
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETTABLEKS                       R0 R0 K4 ["Parent"]
       11 GETTABLEKS                       R0 R0 K5 ["Common"]
       13 GETIMPORT                        R1 K7 [pcall]
       15 DUPCLOSURE                       R2 K8 [PROTO_0]
       16 CALL                             R1 1 2
       17 JUMPIFNOT                        R1 ; [+1]
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R0 0
       20 GETIMPORT                        R3 K10 [require]
       22 GETTABLEKS                       R4 R0 K11 ["commonInit"]
       24 CALL                             R3 1 1
       25 MOVE                             R4 R3
       26 CALL                             R4 0 0
       27 GETIMPORT                        R4 K3 [script]
       29 GETTABLEKS                       R4 R4 K4 ["Parent"]
       31 GETTABLEKS                       R4 R4 K4 ["Parent"]
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R4 K12 ["Packages"]
       37 GETTABLEKS                       R6 R6 K13 ["Roact"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R4 K14 ["Src"]
       44 GETTABLEKS                       R7 R7 K15 ["MainPlugin"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R4 K14 ["Src"]
       51 GETTABLEKS                       R8 R8 K16 ["Util"]
       53 GETTABLEKS                       R8 R8 K17 ["DMBridge"]
       55 CALL                             R7 1 1
       56 LOADNIL                          R8
       57 LOADNIL                          R9
       58 NEWCLOSURE                       R10 P1
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 CAPTURE                          REF R8
       64 CAPTURE                          VAL R2
       65 CAPTURE                          REF R9
       66 GETIMPORT                        R11 K1 [plugin]
       68 GETTABLEKS                       R11 R11 K18 ["Unloading"]
       70 NEWCLOSURE                       R13 P2
       71 CAPTURE                          REF R9
       72 CAPTURE                          REF R8
       73 CAPTURE                          VAL R5
       74 NAMECALL                         R11 R11 K19 ["Connect"]
       76 CALL                             R11 2 0
       77 MOVE                             R11 R10
       78 CALL                             R11 0 0
       79 CLOSEUPVALS                      R8
       80 RETURN                           R0 0
