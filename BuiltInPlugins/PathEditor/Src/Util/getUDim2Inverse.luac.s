PROTO_0:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 GETTABLEKS                       R4 R0 K4 ["X"]
        4 GETTABLEKS                       R3 R4 K5 ["Scale"]
        6 MULK                             R2 R3 K3 [-1]
        7 GETTABLEKS                       R5 R0 K4 ["X"]
        9 GETTABLEKS                       R4 R5 K6 ["Offset"]
       11 MULK                             R3 R4 K3 [-1]
       12 GETTABLEKS                       R6 R0 K7 ["Y"]
       14 GETTABLEKS                       R5 R6 K5 ["Scale"]
       16 MULK                             R4 R5 K3 [-1]
       17 GETTABLEKS                       R7 R0 K7 ["Y"]
       19 GETTABLEKS                       R6 R7 K6 ["Offset"]
       21 MULK                             R5 R6 K3 [-1]
       22 CALL                             R1 4 -1
       23 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
