PROTO_0:
        0 FASTCALL1                        MATH_RAD R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K2 [math.rad]
        4 CALL                             R3 1 1
        5 FASTCALL1                        MATH_COS R3 ; [+3]
        6 MOVE                             R5 R3
        7 GETIMPORT                        R4 K4 [math.cos]
        9 CALL                             R4 1 1
       10 FASTCALL1                        MATH_SIN R3 ; [+3]
       11 MOVE                             R6 R3
       12 GETIMPORT                        R5 K6 [math.sin]
       14 CALL                             R5 1 1
       15 GETIMPORT                        R6 K9 [Vector2.new]
       17 GETTABLEKS                       R9 R2 K10 ["X"]
       19 MUL                              R8 R9 R4
       20 GETTABLEKS                       R10 R2 K11 ["Y"]
       22 MUL                              R9 R10 R5
       23 SUB                              R7 R8 R9
       24 GETTABLEKS                       R10 R2 K11 ["Y"]
       26 MUL                              R9 R10 R4
       27 GETTABLEKS                       R11 R2 K10 ["X"]
       29 MUL                              R10 R11 R5
       30 ADD                              R8 R9 R10
       31 CALL                             R6 2 1
       32 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["rotateVector"]
        6 RETURN                           R0 1
