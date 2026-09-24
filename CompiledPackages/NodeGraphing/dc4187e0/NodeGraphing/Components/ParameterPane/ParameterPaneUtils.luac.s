PROTO_0:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["Min"]
        4 GETTABLEKS                       R3 R3 K4 ["X"]
        6 GETTABLEKS                       R5 R0 K6 ["Width"]
        8 DIVK                             R4 R5 K5 [2]
        9 ADD                              R2 R3 R4
       10 GETTABLEKS                       R4 R0 K7 ["Max"]
       12 GETTABLEKS                       R4 R4 K8 ["Y"]
       14 GETTABLEKS                       R6 R0 K9 ["Height"]
       16 DIVK                             R5 R6 K5 [2]
       17 SUB                              R3 R4 R5
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["getNodeInsertPosition"]
        6 RETURN                           R0 1
