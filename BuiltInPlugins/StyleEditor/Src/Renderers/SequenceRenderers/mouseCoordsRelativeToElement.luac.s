PROTO_0:
        0 JUMPIF                           R0 ; [+6]
        1 GETIMPORT                        R2 K2 [Vector2.new]
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1
        7 FASTCALL2K                       ASSERT R0 K3 ; [+5]
        9 MOVE                             R3 R0
       10 LOADK                            R4 K3 ["element should be valid"]
       11 GETIMPORT                        R2 K5 [assert]
       13 CALL                             R2 2 0
       14 GETTABLEKS                       R2 R0 K6 ["AbsoluteSize"]
       16 GETTABLEKS                       R4 R0 K7 ["AbsolutePosition"]
       18 SUB                              R3 R1 R4
       19 GETIMPORT                        R4 K2 [Vector2.new]
       21 GETTABLEKS                       R7 R3 K8 ["X"]
       23 GETTABLEKS                       R8 R2 K8 ["X"]
       25 DIV                              R6 R7 R8
       26 LOADN                            R7 0
       27 LOADN                            R8 1
       28 FASTCALL                         MATH_CLAMP ; [+2]
       29 GETIMPORT                        R5 K11 [math.clamp]
       31 CALL                             R5 3 1
       32 GETTABLEKS                       R8 R3 K12 ["Y"]
       34 GETTABLEKS                       R9 R2 K12 ["Y"]
       36 DIV                              R7 R8 R9
       37 LOADN                            R8 0
       38 LOADN                            R9 1
       39 FASTCALL                         MATH_CLAMP ; [+2]
       40 GETIMPORT                        R6 K11 [math.clamp]
       42 CALL                             R6 3 1
       43 CALL                             R4 2 -1
       44 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
