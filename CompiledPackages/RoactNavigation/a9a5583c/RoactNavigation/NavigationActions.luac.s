PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K3 [{"type", "key", "immediate"}]
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R3 R2 K0 ["type"]
        8 GETTABLEKS                       R3 R1 K1 ["key"]
       10 SETTABLEKS                       R3 R2 K1 ["key"]
       12 GETTABLEKS                       R3 R1 K2 ["immediate"]
       14 SETTABLEKS                       R3 R2 K2 ["immediate"]
       16 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K2 [{"type", "params"}]
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R3 R2 K0 ["type"]
        8 GETTABLEKS                       R3 R1 K1 ["params"]
       10 SETTABLEKS                       R3 R2 K1 ["params"]
       12 RETURN                           R2 1

PROTO_2:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K5 [{"type", "routeName", "params", "action", "key"}]
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R3 R2 K0 ["type"]
        8 GETTABLEKS                       R3 R1 K1 ["routeName"]
       10 SETTABLEKS                       R3 R2 K1 ["routeName"]
       12 GETTABLEKS                       R3 R1 K2 ["params"]
       14 SETTABLEKS                       R3 R2 K2 ["params"]
       16 GETTABLEKS                       R3 R1 K3 ["action"]
       18 SETTABLEKS                       R3 R2 K3 ["action"]
       20 GETTABLEKS                       R3 R1 K4 ["key"]
       22 SETTABLEKS                       R3 R2 K4 ["key"]
       24 RETURN                           R2 1

PROTO_3:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K3 [{"type", "key", "params"}]
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R3 R2 K0 ["type"]
        8 GETTABLEKS                       R3 R1 K1 ["key"]
       10 SETTABLEKS                       R3 R2 K1 ["key"]
       12 GETTABLEKS                       R3 R1 K2 ["params"]
       14 SETTABLEKS                       R3 R2 K2 ["params"]
       16 RETURN                           R2 1

PROTO_4:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K3 [{"type", "key", "toChildKey"}]
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R3 R2 K0 ["type"]
        8 GETTABLEKS                       R3 R1 K1 ["key"]
       10 SETTABLEKS                       R3 R2 K1 ["key"]
       12 GETTABLEKS                       R3 R1 K2 ["toChildKey"]
       14 SETTABLEKS                       R3 R2 K2 ["toChildKey"]
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["NavigationSymbol"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 LOADK                            R2 K6 ["BACK"]
       12 CALL                             R1 1 1
       13 MOVE                             R2 R0
       14 LOADK                            R3 K7 ["INIT"]
       15 CALL                             R2 1 1
       16 MOVE                             R3 R0
       17 LOADK                            R4 K8 ["NAVIGATE"]
       18 CALL                             R3 1 1
       19 MOVE                             R4 R0
       20 LOADK                            R5 K9 ["SET_PARAMS"]
       21 CALL                             R4 1 1
       22 MOVE                             R5 R0
       23 LOADK                            R6 K10 ["COMPLETE_TRANSITION"]
       24 CALL                             R5 1 1
       25 DUPTABLE                         R6 K16 [{"Back", "Init", "Navigate", "SetParams", "CompleteTransition"}]
       26 SETTABLEKS                       R1 R6 K11 ["Back"]
       28 SETTABLEKS                       R2 R6 K12 ["Init"]
       30 SETTABLEKS                       R3 R6 K13 ["Navigate"]
       32 SETTABLEKS                       R4 R6 K14 ["SetParams"]
       34 SETTABLEKS                       R5 R6 K15 ["CompleteTransition"]
       36 SETTABLEKS                       R6 R6 K17 ["__index"]
       38 DUPCLOSURE                       R7 K18 [PROTO_0]
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R7 R6 K19 ["back"]
       42 DUPCLOSURE                       R7 K20 [PROTO_1]
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R7 R6 K21 ["init"]
       46 DUPCLOSURE                       R7 K22 [PROTO_2]
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R7 R6 K23 ["navigate"]
       50 DUPCLOSURE                       R7 K24 [PROTO_3]
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R7 R6 K25 ["setParams"]
       54 DUPCLOSURE                       R7 K26 [PROTO_4]
       55 CAPTURE                          VAL R5
       56 SETTABLEKS                       R7 R6 K27 ["completeTransition"]
       58 RETURN                           R6 1
