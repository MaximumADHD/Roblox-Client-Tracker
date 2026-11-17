PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETIMPORT                        R2 K1 [error]
        5 LOADK                            R4 K2 ["Function "]
        6 MOVE                             R5 R0
        7 LOADK                            R6 K3 [" already registered"]
        8 CONCAT                           R3 R4 R6
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 0
       11 SETTABLE                         R1 R2 R0
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 RETURN                           R2 1

PROTO_2:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R2 0
        2 GETTABLE                         R1 R2 R0
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLE                         R1 R2 R0
        6 GETVARARGS                       R2 -1
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1
        9 GETIMPORT                        R1 K1 [error]
       11 LOADK                            R3 K2 ["Function "]
       12 MOVE                             R4 R0
       13 LOADK                            R5 K3 [" not found"]
       14 CONCAT                           R2 R3 R5
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 DUPCLOSURE                       R1 K0 [PROTO_1]
        4 CAPTURE                          VAL R0
        5 DUPCLOSURE                       R2 K1 [PROTO_2]
        6 CAPTURE                          VAL R0
        7 DUPTABLE                         R3 K4 [{"registerFunction", "callFunction"}]
        8 SETTABLEKS                       R1 R3 K2 ["registerFunction"]
       10 SETTABLEKS                       R2 R3 K3 ["callFunction"]
       12 RETURN                           R3 1
