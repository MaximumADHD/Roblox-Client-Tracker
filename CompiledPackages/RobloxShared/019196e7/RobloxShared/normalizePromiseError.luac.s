PROTO_0:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["toJSBoolean"]
        4 GETTABLEKS                       R3 R1 K1 ["trace"]
        6 CALL                             R2 1 1
        7 JUMPIF                           R2 ; [+6]
        8 GETTABLEKS                       R2 R1 K2 ["parent"]
       10 JUMPIFNOT                        R2 ; [+3]
       11 GETTABLEKS                       R1 R1 K2 ["parent"]
       13 JUMPBACK                         ; [-13]
       14 GETTABLEKS                       R3 R1 K1 ["trace"]
       16 ORK                              R2 R3 K3 [""]
       17 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R1 R0
        1 GETTABLEKS                       R2 R0 K0 ["error"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["toJSBoolean"]
        6 GETTABLEKS                       R4 R1 K2 ["trace"]
        8 CALL                             R3 1 1
        9 JUMPIF                           R3 ; [+9]
       10 GETTABLEKS                       R3 R1 K3 ["parent"]
       12 JUMPIFNOT                        R3 ; [+6]
       13 GETTABLEKS                       R1 R1 K3 ["parent"]
       15 GETTABLEKS                       R3 R1 K0 ["error"]
       17 OR                               R2 R3 R2
       18 JUMPBACK                         ; [-16]
       19 GETTABLEKS                       R4 R1 K4 ["message"]
       21 OR                               R3 R4 R2
       22 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 SETTABLEKS                       R1 R0 K0 ["message"]
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R1 R0 K1 ["stack"]
       10 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Boolean"]
       14 DUPCLOSURE                       R4 K7 [PROTO_0]
       15 CAPTURE                          VAL R3
       16 DUPCLOSURE                       R5 K8 [PROTO_1]
       17 CAPTURE                          VAL R3
       18 DUPCLOSURE                       R6 K9 [PROTO_2]
       19 CAPTURE                          VAL R5
       20 CAPTURE                          VAL R4
       21 RETURN                           R6 1
