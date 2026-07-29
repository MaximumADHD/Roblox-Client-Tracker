PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["CONTEXT_EDGE_INSET"]
        3 GETTABLEKS                       R8 R1 K1 ["X"]
        5 GETTABLEKS                       R9 R2 K1 ["X"]
        7 SUB                              R7 R8 R9
        8 SUB                              R6 R7 R3
        9 FASTCALL2                        MATH_MAX R3 R6 ; [+4]
       11 MOVE                             R5 R3
       12 GETIMPORT                        R4 K4 [math.max]
       14 CALL                             R4 2 1
       15 GETTABLEKS                       R9 R1 K5 ["Y"]
       17 GETTABLEKS                       R10 R2 K5 ["Y"]
       19 SUB                              R8 R9 R10
       20 SUB                              R7 R8 R3
       21 FASTCALL2                        MATH_MAX R3 R7 ; [+4]
       23 MOVE                             R6 R3
       24 GETIMPORT                        R5 K4 [math.max]
       26 CALL                             R5 2 1
       27 GETIMPORT                        R6 K8 [Vector2.new]
       29 GETTABLEKS                       R8 R0 K1 ["X"]
       31 FASTCALL3                        MATH_CLAMP R8 R3 R4
       33 MOVE                             R9 R3
       34 MOVE                             R10 R4
       35 GETIMPORT                        R7 K10 [math.clamp]
       37 CALL                             R7 3 1
       38 GETTABLEKS                       R9 R0 K5 ["Y"]
       40 FASTCALL3                        MATH_CLAMP R9 R3 R5
       42 MOVE                             R10 R3
       43 MOVE                             R11 R5
       44 GETIMPORT                        R8 K10 [math.clamp]
       46 CALL                             R8 3 1
       47 CALL                             R6 2 -1
       48 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Constants"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
