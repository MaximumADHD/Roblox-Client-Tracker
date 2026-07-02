PROTO_0:
        0 MUL                              R6 R0 R4
        1 MUL                              R5 R3 R6
        2 MUL                              R7 R1 R4
        3 MUL                              R6 R3 R7
        4 MUL                              R8 R2 R4
        5 MUL                              R7 R3 R8
        6 SUB                              R8 R6 R5
        7 SUB                              R9 R7 R5
        8 MOVE                             R12 R9
        9 NAMECALL                         R10 R8 K0 ["Cross"]
       11 CALL                             R10 2 1
       12 GETTABLEKS                       R10 R10 K1 ["Unit"]
       14 MOVE                             R11 R5
       15 MOVE                             R12 R6
       16 MOVE                             R13 R7
       17 MOVE                             R14 R10
       18 RETURN                           R11 4

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["transformTriangleToWorld"]
        6 RETURN                           R0 1
