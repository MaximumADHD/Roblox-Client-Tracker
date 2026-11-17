PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETIMPORT                        R1 K2 [game]
        5 GETTABLEKS                       R1 R1 K3 ["Workspace"]
        7 JUMPIFEQ                         R0 R1 ; [+10]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R3 R0 K0 ["Parent"]
       12 CALL                             R2 1 1
       13 LOADK                            R3 K4 ["."]
       14 GETTABLEKS                       R4 R0 K5 ["Name"]
       16 CONCAT                           R1 R2 R4
       17 RETURN                           R1 1
       18 GETTABLEKS                       R1 R0 K5 ["Name"]
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
