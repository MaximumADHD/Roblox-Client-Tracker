PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["mock"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K1 ["new"]
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R4 2
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 GETUPVAL                         R4 3
       18 NAMECALL                         R2 R1 K2 ["extend"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Style"]
       18 GETTABLEKS                       R4 R2 K8 ["Themes"]
       20 GETTABLEKS                       R3 R4 K9 ["StudioTheme"]
       22 GETTABLEKS                       R4 R2 K10 ["StyleKey"]
       24 DUPTABLE                         R5 K12 [{"mainWindow"}]
       25 DUPTABLE                         R6 K14 [{"backgroundColor"}]
       26 GETTABLEKS                       R7 R4 K15 ["MainBackground"]
       28 SETTABLEKS                       R7 R6 K13 ["backgroundColor"]
       30 SETTABLEKS                       R6 R5 K11 ["mainWindow"]
       32 DUPTABLE                         R6 K12 [{"mainWindow"}]
       33 DUPTABLE                         R7 K14 [{"backgroundColor"}]
       34 GETTABLEKS                       R8 R4 K15 ["MainBackground"]
       36 SETTABLEKS                       R8 R7 K13 ["backgroundColor"]
       38 SETTABLEKS                       R7 R6 K11 ["mainWindow"]
       40 NEWTABLE                         R7 0 0
       42 DUPCLOSURE                       R8 K16 [PROTO_0]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R7
       47 RETURN                           R8 1
