PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Name"]
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["createElement"]
        9 GETUPVAL                         R1 3
       10 DUPTABLE                         R2 K4 [{"Plugin", "PluginLoaderContext"}]
       11 GETUPVAL                         R3 0
       12 SETTABLEKS                       R3 R2 K2 ["Plugin"]
       14 GETUPVAL                         R3 4
       15 SETTABLEKS                       R3 R2 K3 ["PluginLoaderContext"]
       17 CALL                             R0 2 1
       18 GETUPVAL                         R2 6
       19 GETTABLEKS                       R1 R2 K5 ["createRoot"]
       21 GETIMPORT                        R2 K8 [Instance.new]
       23 LOADK                            R3 K9 ["Frame"]
       24 CALL                             R2 1 -1
       25 CALL                             R1 -1 1
       26 SETUPVAL                         R1 5
       27 GETUPVAL                         R1 5
       28 MOVE                             R3 R0
       29 NAMECALL                         R1 R1 K10 ["render"]
       31 CALL                             R1 2 0
       32 GETUPVAL                         R1 7
       33 JUMPIFNOT                        R1 ; [+6]
       34 GETUPVAL                         R1 7
       35 LOADK                            R3 K11 ["Roact tree"]
       36 GETUPVAL                         R4 5
       37 NAMECALL                         R1 R1 K12 ["addRoactTree"]
       39 CALL                             R1 3 0
       40 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+5]
        8 GETUPVAL                         R0 1
        9 LOADNIL                          R2
       10 NAMECALL                         R0 R0 K1 ["render"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [require]
        4 GETIMPORT                        R5 K3 [script]
        6 GETTABLEKS                       R4 R5 K4 ["Parent"]
        8 GETTABLEKS                       R3 R4 K5 ["commonInit"]
       10 CALL                             R2 1 1
       11 MOVE                             R3 R2
       12 CALL                             R3 0 0
       13 GETIMPORT                        R5 K3 [script]
       15 GETTABLEKS                       R4 R5 K4 ["Parent"]
       17 GETTABLEKS                       R3 R4 K4 ["Parent"]
       19 GETIMPORT                        R4 K1 [require]
       21 GETTABLEKS                       R6 R3 K6 ["Packages"]
       23 GETTABLEKS                       R5 R6 K7 ["React"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K1 [require]
       28 GETTABLEKS                       R7 R3 K6 ["Packages"]
       30 GETTABLEKS                       R6 R7 K8 ["ReactRoblox"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K1 [require]
       35 GETTABLEKS                       R8 R3 K6 ["Packages"]
       37 GETTABLEKS                       R7 R8 K9 ["DeveloperTools"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K1 [require]
       42 GETTABLEKS                       R9 R3 K6 ["Packages"]
       44 GETTABLEKS                       R8 R9 K10 ["TestLoader"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K1 [require]
       49 GETTABLEKS                       R10 R3 K11 ["Src"]
       51 GETTABLEKS                       R9 R10 K12 ["MainPlugin"]
       53 CALL                             R8 1 1
       54 LOADNIL                          R9
       55 LOADNIL                          R10
       56 GETTABLEKS                       R11 R7 K13 ["hasInternalPermission"]
       58 CALL                             R11 0 1
       59 JUMPIFNOT                        R11 ; [+7]
       60 GETTABLEKS                       R11 R6 K14 ["forPlugin"]
       62 GETTABLEKS                       R12 R3 K15 ["Name"]
       64 MOVE                             R13 R0
       65 CALL                             R11 2 1
       66 MOVE                             R10 R11
       67 NEWCLOSURE                       R11 P0
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R1
       73 CAPTURE                          REF R9
       74 CAPTURE                          VAL R5
       75 CAPTURE                          REF R10
       76 GETTABLEKS                       R12 R0 K16 ["Unloading"]
       78 NEWCLOSURE                       R14 P1
       79 CAPTURE                          REF R10
       80 CAPTURE                          REF R9
       81 NAMECALL                         R12 R12 K17 ["Connect"]
       83 CALL                             R12 2 0
       84 MOVE                             R12 R11
       85 CALL                             R12 0 0
       86 CLOSEUPVALS                      R9
       87 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
