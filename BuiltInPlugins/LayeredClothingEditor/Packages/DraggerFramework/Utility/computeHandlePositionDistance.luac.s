PROTO_0:
        0 SUB                              R7 R1 R0
        1 GETTABLEKS                       R6 R7 K0 ["Magnitude"]
        3 SUB                              R5 R2 R6
        4 SUB                              R4 R3 R5
        5 RETURN                           R4 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+8]
        1 FASTCALL1                        MATH_ABS R4 ; [+3]
        2 MOVE                             R8 R4
        3 GETIMPORT                        R7 K2 [math.abs]
        5 CALL                             R7 1 1
        6 LOADK                            R8 K3 [0.001]
        7 JUMPIFNOTLT                      R7 R8 ; [+7]
        9 SUB                              R10 R3 R1
       10 GETTABLEKS                       R9 R10 K4 ["Magnitude"]
       12 SUB                              R8 R5 R9
       13 SUB                              R7 R6 R8
       14 RETURN                           R7 1
       15 GETTABLEKS                       R7 R0 K5 ["CFrame"]
       17 GETTABLEKS                       R8 R7 K6 ["LookVector"]
       19 GETTABLEKS                       R12 R0 K8 ["FieldOfView"]
       21 FASTCALL1                        MATH_RAD R12 ; [+2]
       22 GETIMPORT                        R11 K10 [math.rad]
       24 CALL                             R11 1 1
       25 FASTCALL1                        MATH_SIN R11 ; [+2]
       26 GETIMPORT                        R10 K12 [math.sin]
       28 CALL                             R10 1 1
       29 MULK                             R9 R10 K7 [0.05]
       30 GETTABLEKS                       R11 R7 K13 ["Position"]
       32 MOVE                             R13 R8
       33 NAMECALL                         R11 R11 K14 ["Dot"]
       35 CALL                             R11 2 1
       36 MUL                              R10 R9 R11
       37 MUL                              R12 R5 R2
       38 ADD                              R11 R1 R12
       39 MUL                              R13 R6 R2
       40 ADD                              R12 R1 R13
       41 SUB                              R14 R11 R3
       42 MOVE                             R16 R2
       43 NAMECALL                         R14 R14 K14 ["Dot"]
       45 CALL                             R14 2 1
       46 DIV                              R13 R14 R4
       47 MOVE                             R17 R2
       48 NAMECALL                         R15 R12 K14 ["Dot"]
       50 CALL                             R15 2 1
       51 MUL                              R16 R13 R10
       52 ADD                              R14 R15 R16
       53 MUL                              R17 R13 R9
       54 MUL                              R16 R17 R8
       55 ADD                              R15 R16 R2
       56 MOVE                             R18 R15
       57 NAMECALL                         R16 R2 K14 ["Dot"]
       59 CALL                             R16 2 1
       60 FASTCALL1                        MATH_ABS R16 ; [+3]
       61 MOVE                             R18 R16
       62 GETIMPORT                        R17 K2 [math.abs]
       64 CALL                             R17 1 1
       65 LOADK                            R18 K3 [0.001]
       66 JUMPIFNOTLT                      R17 R18 ; [+7]
       68 SUB                              R20 R3 R1
       69 GETTABLEKS                       R19 R20 K4 ["Magnitude"]
       71 SUB                              R18 R5 R19
       72 SUB                              R17 R6 R18
       73 RETURN                           R17 1
       74 MOVE                             R21 R15
       75 NAMECALL                         R19 R1 K14 ["Dot"]
       77 CALL                             R19 2 1
       78 SUB                              R18 R14 R19
       79 DIV                              R17 R18 R16
       80 RETURN                           R17 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 DUPCLOSURE                       R1 K3 [PROTO_0]
        8 DUPCLOSURE                       R2 K4 [PROTO_1]
        9 RETURN                           R2 1
