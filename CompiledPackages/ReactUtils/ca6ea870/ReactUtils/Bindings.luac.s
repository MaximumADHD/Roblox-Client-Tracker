PROTO_0:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["map"]
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_1:
        0 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["binding"]
        8 MOVE                             R4 R1
        9 CALL                             R3 1 1
       10 MOVE                             R4 R2
       11 RETURN                           R3 2

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createBinding"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["binding"]
        8 MOVE                             R4 R1
        9 CALL                             R3 1 1
       10 MOVE                             R4 R2
       11 RETURN                           R3 2

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["binding"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["joinBindings"]
        6 DUPTABLE                         R4 K4 [{"first", "second"}]
        7 SETTABLEKS                       R0 R4 K2 ["first"]
        9 SETTABLEKS                       R1 R4 K3 ["second"]
       11 CALL                             R3 1 -1
       12 CALL                             R2 -1 -1
       13 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["first"]
        3 GETTABLEKS                       R3 R0 K1 ["second"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["map"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["binding"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K2 ["joinBindings"]
        9 DUPTABLE                         R6 K5 [{"first", "second"}]
       10 SETTABLEKS                       R0 R6 K3 ["first"]
       12 SETTABLEKS                       R1 R6 K4 ["second"]
       14 CALL                             R5 1 -1
       15 CALL                             R4 -1 1
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R2
       18 CALL                             R3 2 -1
       19 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["binding"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["joinBindings"]
        6 DUPTABLE                         R5 K5 [{"first", "second", "third"}]
        7 SETTABLEKS                       R0 R5 K2 ["first"]
        9 SETTABLEKS                       R1 R5 K3 ["second"]
       11 SETTABLEKS                       R2 R5 K4 ["third"]
       13 CALL                             R4 1 -1
       14 CALL                             R3 -1 -1
       15 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["first"]
        3 GETTABLEKS                       R3 R0 K1 ["second"]
        5 GETTABLEKS                       R4 R0 K2 ["third"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["map"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["binding"]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K2 ["joinBindings"]
        9 DUPTABLE                         R7 K6 [{"first", "second", "third"}]
       10 SETTABLEKS                       R0 R7 K3 ["first"]
       12 SETTABLEKS                       R1 R7 K4 ["second"]
       14 SETTABLEKS                       R2 R7 K5 ["third"]
       16 CALL                             R6 1 -1
       17 CALL                             R5 -1 1
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R3
       20 CALL                             R4 2 -1
       21 RETURN                           R4 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["first"]
        3 GETTABLEKS                       R3 R0 K1 ["second"]
        5 GETTABLEKS                       R4 R0 K2 ["third"]
        7 GETTABLEKS                       R5 R0 K3 ["fourth"]
        9 CALL                             R1 4 -1
       10 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["map"]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K1 ["binding"]
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R7 R7 K2 ["joinBindings"]
        9 DUPTABLE                         R8 K7 [{"first", "second", "third", "fourth"}]
       10 SETTABLEKS                       R0 R8 K3 ["first"]
       12 SETTABLEKS                       R1 R8 K4 ["second"]
       14 SETTABLEKS                       R2 R8 K5 ["third"]
       16 SETTABLEKS                       R3 R8 K6 ["fourth"]
       18 CALL                             R7 1 -1
       19 CALL                             R6 -1 1
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          VAL R4
       22 CALL                             R5 2 -1
       23 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReactUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 16 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 SETTABLEKS                       R3 R2 K9 ["map"]
       19 DUPCLOSURE                       R3 K10 [PROTO_1]
       20 SETTABLEKS                       R3 R2 K11 ["binding"]
       22 DUPCLOSURE                       R3 K12 [PROTO_2]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R3 R2 K13 ["useBinding"]
       27 DUPCLOSURE                       R3 K14 [PROTO_3]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R3 R2 K15 ["createBinding"]
       32 DUPCLOSURE                       R3 K16 [PROTO_4]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R3 R2 K17 ["joinBindings2"]
       37 DUPCLOSURE                       R3 K18 [PROTO_6]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R3 R2 K19 ["mapBindings2"]
       42 DUPCLOSURE                       R3 K20 [PROTO_7]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R3 R2 K21 ["joinBindings3"]
       47 DUPCLOSURE                       R3 K22 [PROTO_9]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R3 R2 K23 ["mapBindings3"]
       52 DUPCLOSURE                       R3 K24 [PROTO_11]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R3 R2 K25 ["mapBindings4"]
       57 RETURN                           R2 1
