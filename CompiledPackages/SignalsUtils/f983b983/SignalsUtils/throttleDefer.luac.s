PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQ                         R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 LOADNIL                          R0
        6 SETUPVAL                         R0 0
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R1 3
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 1
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 SETUPVAL                         R1 0
        4 GETUPVAL                         R1 2
        5 JUMPIF                           R1 ; [+12]
        6 LOADNIL                          R1
        7 GETIMPORT                        R2 K2 [task.defer]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          REF R1
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U0
       14 CALL                             R2 1 1
       15 MOVE                             R1 R2
       16 SETUPVAL                         R1 2
       17 CLOSEUPVALS                      R1
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["createEffect"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          REF R2
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          REF R1
        9 CAPTURE                          VAL R0
       10 CALL                             R3 1 1
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          REF R1
       13 CAPTURE                          VAL R3
       14 CLOSEUPVALS                      R1
       15 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 NEWCLOSURE                       R3 P1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

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
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["provide"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K9 [PROTO_5]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
