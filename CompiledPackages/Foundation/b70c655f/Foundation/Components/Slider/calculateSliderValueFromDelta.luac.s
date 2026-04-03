PROTO_0:
        0 GETTABLEKS                       R4 R2 K0 ["Max"]
        2 GETTABLEKS                       R5 R2 K1 ["Min"]
        4 SUB                              R3 R4 R5
        5 MUL                              R4 R1 R3
        6 ADD                              R6 R0 R4
        7 GETTABLEKS                       R7 R2 K1 ["Min"]
        9 GETTABLEKS                       R8 R2 K0 ["Max"]
       11 FASTCALL                         MATH_CLAMP ; [+2]
       12 GETIMPORT                        R5 K4 [math.clamp]
       14 CALL                             R5 3 1
       15 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
