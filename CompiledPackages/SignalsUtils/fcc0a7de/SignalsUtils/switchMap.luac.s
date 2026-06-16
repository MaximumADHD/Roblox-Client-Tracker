PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 0
        4 LOADNIL                          R1
        5 SETUPVAL                         R1 0
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 1
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K0 ["createEffect"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R1
       17 CALL                             R2 1 1
       18 SETUPVAL                         R2 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 1
        8 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["createEffect"]
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          REF R1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 CALL                             R3 1 1
       13 NEWCLOSURE                       R4 P2
       14 CAPTURE                          VAL R3
       15 CAPTURE                          REF R1
       16 CLOSEUPVALS                      R1
       17 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 NEWCLOSURE                       R4 P1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SignalsUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signals"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["provide"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_6]
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 RETURN                           R3 1
