PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["LocalizationTools"]
        2 SETTABLEKS                       R1 R0 K1 ["Name"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K2 ["createElement"]
        7 GETUPVAL                         R1 2
        8 DUPTABLE                         R2 K5 [{"Plugin", "pluginLoaderContext"}]
        9 GETUPVAL                         R3 0
       10 SETTABLEKS                       R3 R2 K3 ["Plugin"]
       12 GETUPVAL                         R4 3
       13 ORK                              R3 R4 K6 []
       14 SETTABLEKS                       R3 R2 K4 ["pluginLoaderContext"]
       16 CALL                             R0 2 1
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K7 ["mount"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 1
       22 SETUPVAL                         R1 4
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R4 K1 [script]
        2 GETTABLEKS                       R3 R4 K2 ["Parent"]
        4 GETTABLEKS                       R2 R3 K2 ["Parent"]
        6 GETIMPORT                        R3 K4 [require]
        8 GETTABLEKS                       R5 R2 K5 ["Packages"]
       10 GETTABLEKS                       R4 R5 K6 ["Roact"]
       12 CALL                             R3 1 1
       13 GETIMPORT                        R4 K4 [require]
       15 GETTABLEKS                       R6 R2 K7 ["Src"]
       17 GETTABLEKS                       R5 R6 K8 ["MainPlugin"]
       19 CALL                             R4 1 1
       20 LOADNIL                          R5
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R1
       26 CAPTURE                          REF R5
       27 GETTABLEKS                       R7 R0 K9 ["Unloading"]
       29 NEWCLOSURE                       R9 P1
       30 CAPTURE                          REF R5
       31 CAPTURE                          VAL R3
       32 NAMECALL                         R7 R7 K10 ["Connect"]
       34 CALL                             R7 2 0
       35 LOADK                            R7 K11 ["LocalizationTools"]
       36 SETTABLEKS                       R7 R0 K12 ["Name"]
       38 GETTABLEKS                       R7 R3 K13 ["createElement"]
       40 MOVE                             R8 R4
       41 DUPTABLE                         R9 K16 [{"Plugin", "pluginLoaderContext"}]
       42 SETTABLEKS                       R0 R9 K14 ["Plugin"]
       44 ORK                              R10 R1 K17 []
       45 SETTABLEKS                       R10 R9 K15 ["pluginLoaderContext"]
       47 CALL                             R7 2 1
       48 GETTABLEKS                       R8 R3 K18 ["mount"]
       50 MOVE                             R9 R7
       51 CALL                             R8 1 1
       52 MOVE                             R5 R8
       53 CLOSEUPVALS                      R5
       54 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
