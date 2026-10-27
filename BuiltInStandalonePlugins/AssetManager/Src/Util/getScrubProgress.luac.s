PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R2 R2 K1 ["X"]
        4 LOADN                            R3 0
        5 JUMPIFNOTLE                      R2 R3 ; [+3]
        7 LOADN                            R3 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R7 R0 K1 ["X"]
       11 GETTABLEKS                       R8 R1 K3 ["AbsolutePosition"]
       13 GETTABLEKS                       R8 R8 K1 ["X"]
       15 SUB                              R6 R7 R8
       16 DIV                              R5 R6 R2
       17 LOADN                            R6 0
       18 LOADN                            R7 1
       19 FASTCALL                         MATH_CLAMP ; [+2]
       20 GETIMPORT                        R4 K6 [math.clamp]
       22 CALL                             R4 3 1
       23 MULK                             R3 R4 K2 [100]
       24 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
