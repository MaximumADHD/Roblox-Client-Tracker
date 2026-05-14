PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFNOT                        R1 ; [+16]
        3 GETIMPORT                        R1 K2 [game]
        5 GETTABLEKS                       R1 R1 K3 ["Workspace"]
        7 JUMPIFEQ                         R0 R1 ; [+11]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R6 R0 K0 ["Parent"]
       12 CALL                             R5 1 1
       13 MOVE                             R2 R5
       14 LOADK                            R3 K4 ["."]
       15 GETTABLEKS                       R4 R0 K5 ["Name"]
       17 CONCAT                           R1 R2 R4
       18 RETURN                           R1 1
       19 GETTABLEKS                       R1 R0 K5 ["Name"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
