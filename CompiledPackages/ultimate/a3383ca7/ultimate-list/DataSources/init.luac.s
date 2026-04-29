PROTO_0:
        0 DUPTABLE                         R1 K2 [{"type", "array"}]
        1 LOADK                            R2 K1 ["array"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["array"]
        6 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"type", "methods"}]
        1 LOADK                            R2 K3 ["mutableSource"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["methods"]
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 SUBK                             R1 R2 K0 [1]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 ADDK                             R1 R2 K0 [1]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 LOADN                            R1 1
        1 JUMPIFLT                         R0 R1 ; [+4]
        3 GETUPVAL                         R1 0
        4 JUMPIFNOTLT                      R1 R0 ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 DUPTABLE                         R1 K3 [{"before", "value", "after"}]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R1 K0 ["before"]
       14 GETUPVAL                         R2 2
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K1 ["value"]
       19 NEWCLOSURE                       R2 P1
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R1 K2 ["after"]
       24 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 MOVE                             R3 R2
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 RETURN                           R3 1

PROTO_6:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["array"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["mutableSource"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K4 ["utilities"]
       13 DUPCLOSURE                       R1 K5 [PROTO_6]
       14 GETTABLEKS                       R2 R0 K4 ["utilities"]
       16 SETTABLEKS                       R1 R2 K6 ["createGetSimpleCursor"]
       18 RETURN                           R0 1
