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
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K5 ["mount"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 1
       23 SETUPVAL                         R1 5
       24 GETUPVAL                         R1 6
       25 JUMPIFNOT                        R1 ; [+6]
       26 GETUPVAL                         R1 6
       27 LOADK                            R3 K6 ["R15 Migrator"]
       28 GETUPVAL                         R4 5
       29 NAMECALL                         R1 R1 K7 ["addRoactTree"]
       31 CALL                             R1 3 0
       32 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [require]
        4 GETIMPORT                        R5 K3 [script]
        6 GETTABLEKS                       R4 R5 K4 ["Parent"]
        8 GETTABLEKS                       R3 R4 K5 ["defineLuaFlags"]
       10 CALL                             R2 1 0
       11 GETIMPORT                        R2 K1 [require]
       13 GETIMPORT                        R5 K3 [script]
       15 GETTABLEKS                       R4 R5 K4 ["Parent"]
       17 GETTABLEKS                       R3 R4 K6 ["commonInit"]
       19 CALL                             R2 1 1
       20 MOVE                             R3 R2
       21 CALL                             R3 0 0
       22 GETIMPORT                        R5 K3 [script]
       24 GETTABLEKS                       R4 R5 K4 ["Parent"]
       26 GETTABLEKS                       R3 R4 K4 ["Parent"]
       28 GETIMPORT                        R4 K1 [require]
       30 GETTABLEKS                       R6 R3 K7 ["Packages"]
       32 GETTABLEKS                       R5 R6 K8 ["Roact"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K1 [require]
       37 GETTABLEKS                       R7 R3 K9 ["Src"]
       39 GETTABLEKS                       R6 R7 K10 ["MainPlugin"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K1 [require]
       44 GETTABLEKS                       R9 R3 K9 ["Src"]
       46 GETTABLEKS                       R8 R9 K11 ["Util"]
       48 GETTABLEKS                       R7 R8 K12 ["hasInternalPermission"]
       50 CALL                             R6 1 1
       51 CALL                             R6 0 1
       52 LOADNIL                          R7
       53 LOADNIL                          R8
       54 JUMPIFNOT                        R6 ; [+16]
       55 GETIMPORT                        R9 K1 [require]
       57 GETTABLEKS                       R12 R3 K7 ["Packages"]
       59 GETTABLEKS                       R11 R12 K13 ["Dev"]
       61 GETTABLEKS                       R10 R11 K14 ["DeveloperTools"]
       63 CALL                             R9 1 1
       64 GETTABLEKS                       R10 R9 K15 ["forPlugin"]
       66 GETTABLEKS                       R11 R3 K16 ["Name"]
       68 MOVE                             R12 R0
       69 CALL                             R10 2 1
       70 MOVE                             R8 R10
       71 NEWCLOSURE                       R9 P0
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R1
       77 CAPTURE                          REF R7
       78 CAPTURE                          REF R8
       79 GETTABLEKS                       R10 R0 K17 ["Unloading"]
       81 NEWCLOSURE                       R12 P1
       82 CAPTURE                          REF R8
       83 CAPTURE                          REF R7
       84 CAPTURE                          VAL R4
       85 NAMECALL                         R10 R10 K18 ["Connect"]
       87 CALL                             R10 2 0
       88 MOVE                             R10 R9
       89 CALL                             R10 0 0
       90 CLOSEUPVALS                      R7
       91 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
