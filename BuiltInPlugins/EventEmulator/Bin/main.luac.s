PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Name"]
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["createElement"]
        9 GETUPVAL                         R1 3
       10 DUPTABLE                         R2 K5 [{"Plugin", "ClickableWhenViewportHidden", "pluginLoaderContext"}]
       11 GETUPVAL                         R3 0
       12 SETTABLEKS                       R3 R2 K2 ["Plugin"]
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K3 ["ClickableWhenViewportHidden"]
       17 GETUPVAL                         R3 4
       18 SETTABLEKS                       R3 R2 K4 ["pluginLoaderContext"]
       20 CALL                             R0 2 1
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K6 ["mount"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 1
       26 SETUPVAL                         R1 5
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [script]
        2 GETTABLEKS                       R2 R2 K2 ["Parent"]
        4 GETTABLEKS                       R2 R2 K2 ["Parent"]
        6 GETIMPORT                        R3 K4 [require]
        8 GETTABLEKS                       R4 R2 K5 ["Packages"]
       10 GETTABLEKS                       R4 R4 K6 ["Roact"]
       12 CALL                             R3 1 1
       13 GETIMPORT                        R4 K4 [require]
       15 GETTABLEKS                       R5 R2 K7 ["Src"]
       17 GETTABLEKS                       R5 R5 K8 ["MainPlugin"]
       19 CALL                             R4 1 1
       20 LOADNIL                          R5
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R1
       27 CAPTURE                          REF R5
       28 GETTABLEKS                       R7 R0 K9 ["Unloading"]
       30 NEWCLOSURE                       R9 P1
       31 CAPTURE                          REF R5
       32 CAPTURE                          VAL R3
       33 NAMECALL                         R7 R7 K10 ["Connect"]
       35 CALL                             R7 2 0
       36 GETTABLEKS                       R7 R2 K11 ["Name"]
       38 SETTABLEKS                       R7 R0 K11 ["Name"]
       40 GETTABLEKS                       R7 R3 K12 ["createElement"]
       42 MOVE                             R8 R4
       43 DUPTABLE                         R9 K16 [{"Plugin", "ClickableWhenViewportHidden", "pluginLoaderContext"}]
       44 SETTABLEKS                       R0 R9 K13 ["Plugin"]
       46 LOADB                            R10 1
       47 SETTABLEKS                       R10 R9 K14 ["ClickableWhenViewportHidden"]
       49 SETTABLEKS                       R1 R9 K15 ["pluginLoaderContext"]
       51 CALL                             R7 2 1
       52 GETTABLEKS                       R8 R3 K17 ["mount"]
       54 MOVE                             R9 R7
       55 CALL                             R8 1 1
       56 MOVE                             R5 R8
       57 CLOSEUPVALS                      R5
       58 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
