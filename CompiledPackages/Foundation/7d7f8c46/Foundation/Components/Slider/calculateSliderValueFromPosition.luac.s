PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["AbsoluteRotation"]
        2 GETTABLEKS                       R5 R1 K1 ["AbsoluteSize"]
        4 GETTABLEKS                       R4 R5 K2 ["Magnitude"]
        6 GETTABLEKS                       R6 R1 K3 ["AbsolutePosition"]
        8 GETTABLEKS                       R8 R1 K1 ["AbsoluteSize"]
       10 MULK                             R7 R8 K4 [0.5]
       11 ADD                              R5 R6 R7
       12 FASTCALL1                        MATH_RAD R3 ; [+3]
       13 MOVE                             R7 R3
       14 GETIMPORT                        R6 K7 [math.rad]
       16 CALL                             R6 1 1
       17 GETIMPORT                        R7 K10 [Vector2.new]
       19 FASTCALL1                        MATH_COS R6 ; [+3]
       20 MOVE                             R9 R6
       21 GETIMPORT                        R8 K12 [math.cos]
       23 CALL                             R8 1 1
       24 FASTCALL1                        MATH_SIN R6 ; [+3]
       25 MOVE                             R10 R6
       26 GETIMPORT                        R9 K14 [math.sin]
       28 CALL                             R9 1 1
       29 CALL                             R7 2 1
       30 SUB                              R8 R0 R5
       31 MOVE                             R10 R7
       32 NAMECALL                         R8 R8 K15 ["Dot"]
       34 CALL                             R8 2 1
       35 DIV                              R10 R8 R4
       36 ADDK                             R9 R10 K4 [0.5]
       37 LOADN                            R12 0
       38 LOADN                            R13 1
       39 FASTCALL3                        MATH_CLAMP R9 R12 R13
       41 MOVE                             R11 R9
       42 GETIMPORT                        R10 K17 [math.clamp]
       44 CALL                             R10 3 1
       45 GETTABLEKS                       R12 R2 K18 ["Max"]
       47 GETTABLEKS                       R13 R2 K19 ["Min"]
       49 SUB                              R11 R12 R13
       50 MUL                              R13 R10 R11
       51 GETTABLEKS                       R14 R2 K19 ["Min"]
       53 ADD                              R12 R13 R14
       54 GETTABLEKS                       R15 R2 K19 ["Min"]
       56 GETTABLEKS                       R16 R2 K18 ["Max"]
       58 FASTCALL3                        MATH_CLAMP R12 R15 R16
       60 MOVE                             R14 R12
       61 GETIMPORT                        R13 K17 [math.clamp]
       63 CALL                             R13 3 1
       64 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
