PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K2 [{"type", "n"}]
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R3 R2 K0 ["type"]
        8 GETTABLEKS                       R3 R1 K1 ["n"]
       10 SETTABLEKS                       R3 R2 K1 ["n"]
       12 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K2 [{"type", "key"}]
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R3 R2 K0 ["type"]
        8 GETTABLEKS                       R3 R1 K1 ["key"]
       10 SETTABLEKS                       R3 R2 K1 ["key"]
       12 RETURN                           R2 1

PROTO_2:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K4 [{"type", "routeName", "params", "action"}]
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R3 R2 K0 ["type"]
        8 GETTABLEKS                       R3 R1 K1 ["routeName"]
       10 SETTABLEKS                       R3 R2 K1 ["routeName"]
       12 GETTABLEKS                       R3 R1 K2 ["params"]
       14 SETTABLEKS                       R3 R2 K2 ["params"]
       16 GETTABLEKS                       R3 R1 K3 ["action"]
       18 SETTABLEKS                       R3 R2 K3 ["action"]
       20 RETURN                           R2 1

PROTO_3:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K4 [{"type", "index", "actions", "key"}]
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R3 R2 K0 ["type"]
        8 GETTABLEKS                       R3 R1 K1 ["index"]
       10 SETTABLEKS                       R3 R2 K1 ["index"]
       12 GETTABLEKS                       R3 R1 K2 ["actions"]
       14 SETTABLEKS                       R3 R2 K2 ["actions"]
       16 GETTABLEKS                       R3 R1 K3 ["key"]
       18 SETTABLEKS                       R3 R2 K3 ["key"]
       20 RETURN                           R2 1

PROTO_4:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K7 [{"type", "key", "newKey", "routeName", "params", "action", "immediate"}]
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R3 R2 K0 ["type"]
        8 GETTABLEKS                       R3 R1 K1 ["key"]
       10 SETTABLEKS                       R3 R2 K1 ["key"]
       12 GETTABLEKS                       R3 R1 K2 ["newKey"]
       14 SETTABLEKS                       R3 R2 K2 ["newKey"]
       16 GETTABLEKS                       R3 R1 K3 ["routeName"]
       18 SETTABLEKS                       R3 R2 K3 ["routeName"]
       20 GETTABLEKS                       R3 R1 K4 ["params"]
       22 SETTABLEKS                       R3 R2 K4 ["params"]
       24 GETTABLEKS                       R3 R1 K5 ["action"]
       26 SETTABLEKS                       R3 R2 K5 ["action"]
       28 GETTABLEKS                       R3 R1 K6 ["immediate"]
       30 SETTABLEKS                       R3 R2 K6 ["immediate"]
       32 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["NavigationSymbol"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 LOADK                            R2 K6 ["POP"]
       12 CALL                             R1 1 1
       13 MOVE                             R2 R0
       14 LOADK                            R3 K7 ["POP_TO_TOP"]
       15 CALL                             R2 1 1
       16 MOVE                             R3 R0
       17 LOADK                            R4 K8 ["PUSH"]
       18 CALL                             R3 1 1
       19 MOVE                             R4 R0
       20 LOADK                            R5 K9 ["RESET"]
       21 CALL                             R4 1 1
       22 MOVE                             R5 R0
       23 LOADK                            R6 K10 ["REPLACE"]
       24 CALL                             R5 1 1
       25 DUPTABLE                         R6 K16 [{"Pop", "PopToTop", "Push", "Reset", "Replace"}]
       26 SETTABLEKS                       R1 R6 K11 ["Pop"]
       28 SETTABLEKS                       R2 R6 K12 ["PopToTop"]
       30 SETTABLEKS                       R3 R6 K13 ["Push"]
       32 SETTABLEKS                       R4 R6 K14 ["Reset"]
       34 SETTABLEKS                       R5 R6 K15 ["Replace"]
       36 SETTABLEKS                       R6 R6 K17 ["__index"]
       38 DUPCLOSURE                       R7 K18 [PROTO_0]
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R7 R6 K19 ["pop"]
       42 DUPCLOSURE                       R7 K20 [PROTO_1]
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R7 R6 K21 ["popToTop"]
       46 DUPCLOSURE                       R7 K22 [PROTO_2]
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R7 R6 K23 ["push"]
       50 DUPCLOSURE                       R7 K24 [PROTO_3]
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R7 R6 K25 ["reset"]
       54 DUPCLOSURE                       R7 K26 [PROTO_4]
       55 CAPTURE                          VAL R5
       56 SETTABLEKS                       R7 R6 K27 ["replace"]
       58 RETURN                           R6 1
