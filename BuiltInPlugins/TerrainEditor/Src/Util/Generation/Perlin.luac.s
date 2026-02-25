PROTO_0:
        0 ORK                              R3 R2 K0 [1]
        1 GETIMPORT                        R4 K3 [math.noise]
        3 GETTABLEKS                       R8 R0 K4 ["X"]
        5 DIV                              R7 R8 R3
        6 MULK                             R8 R1 K5 [17]
        7 ADD                              R6 R7 R8
        8 GETUPVAL                         R7 0
        9 ADD                              R5 R6 R7
       10 GETTABLEKS                       R8 R0 K6 ["Y"]
       12 DIV                              R7 R8 R3
       13 GETUPVAL                         R8 0
       14 SUB                              R6 R7 R8
       15 GETTABLEKS                       R9 R0 K7 ["Z"]
       17 DIV                              R8 R9 R3
       18 MUL                              R9 R1 R1
       19 SUB                              R7 R8 R9
       20 CALL                             R4 3 -1
       21 RETURN                           R4 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
