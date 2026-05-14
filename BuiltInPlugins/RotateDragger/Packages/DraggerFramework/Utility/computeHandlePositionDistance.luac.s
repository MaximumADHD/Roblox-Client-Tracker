PROTO_0:
        0 SUB                              R6 R1 R0
        1 GETTABLEKS                       R6 R6 K0 ["Magnitude"]
        3 SUB                              R5 R2 R6
        4 SUB                              R4 R3 R5
        5 RETURN                           R4 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+8]
        1 FASTCALL1                        MATH_ABS R4 ; [+3]
        2 MOVE                             R9 R4
        3 GETIMPORT                        R8 K2 [math.abs]
        5 CALL                             R8 1 1
        6 LOADK                            R9 K3 [0.001]
        7 JUMPIFNOTLT                      R8 R9 ; [+7]
        9 SUB                              R10 R3 R1
       10 GETTABLEKS                       R10 R10 K4 ["Magnitude"]
       12 SUB                              R9 R5 R10
       13 SUB                              R8 R6 R9
       14 RETURN                           R8 1
       15 GETTABLEKS                       R8 R0 K5 ["CFrame"]
       17 GETTABLEKS                       R9 R8 K6 ["LookVector"]
       19 GETTABLEKS                       R13 R0 K7 ["FieldOfView"]
       21 FASTCALL1                        MATH_RAD R13 ; [+2]
       22 GETIMPORT                        R12 K9 [math.rad]
       24 CALL                             R12 1 1
       25 FASTCALL1                        MATH_SIN R12 ; [+2]
       26 GETIMPORT                        R11 K11 [math.sin]
       28 CALL                             R11 1 1
       29 GETUPVAL                         R12 0
       30 MUL                              R10 R11 R12
       31 JUMPIFEQKNIL                     R7 ; [+2]
       33 MUL                              R10 R10 R7
       34 GETTABLEKS                       R12 R8 K12 ["Position"]
       36 MOVE                             R14 R9
       37 NAMECALL                         R12 R12 K13 ["Dot"]
       39 CALL                             R12 2 1
       40 MUL                              R11 R10 R12
       41 MUL                              R13 R5 R2
       42 ADD                              R12 R1 R13
       43 MUL                              R14 R6 R2
       44 ADD                              R13 R1 R14
       45 SUB                              R15 R12 R3
       46 MOVE                             R17 R2
       47 NAMECALL                         R15 R15 K13 ["Dot"]
       49 CALL                             R15 2 1
       50 DIV                              R14 R15 R4
       51 MOVE                             R18 R2
       52 NAMECALL                         R16 R13 K13 ["Dot"]
       54 CALL                             R16 2 1
       55 MUL                              R17 R14 R11
       56 ADD                              R15 R16 R17
       57 MUL                              R18 R14 R10
       58 MUL                              R17 R18 R9
       59 ADD                              R16 R17 R2
       60 MOVE                             R19 R16
       61 NAMECALL                         R17 R2 K13 ["Dot"]
       63 CALL                             R17 2 1
       64 FASTCALL1                        MATH_ABS R17 ; [+3]
       65 MOVE                             R19 R17
       66 GETIMPORT                        R18 K2 [math.abs]
       68 CALL                             R18 1 1
       69 LOADK                            R19 K3 [0.001]
       70 JUMPIFNOTLT                      R18 R19 ; [+7]
       72 SUB                              R20 R3 R1
       73 GETTABLEKS                       R20 R20 K4 ["Magnitude"]
       75 SUB                              R19 R5 R20
       76 SUB                              R18 R6 R19
       77 RETURN                           R18 1
       78 MOVE                             R22 R16
       79 NAMECALL                         R20 R1 K13 ["Dot"]
       81 CALL                             R20 2 1
       82 SUB                              R19 R15 R20
       83 DIV                              R18 R19 R17
       84 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Flags"]
       11 GETTABLEKS                       R2 R2 K6 ["getFFlagNextGenDraggers"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 MOVE                             R4 R1
       16 CALL                             R4 0 1
       17 JUMPIFNOT                        R4 ; [+2]
       18 LOADK                            R3 K8 [0.033]
       19 JUMP                             ; [+1]
       20 LOADK                            R3 K9 [0.05]
       21 DUPCLOSURE                       R4 K10 [PROTO_1]
       22 CAPTURE                          VAL R3
       23 RETURN                           R4 1
