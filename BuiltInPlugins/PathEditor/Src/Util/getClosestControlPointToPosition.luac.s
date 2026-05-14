PROTO_0:
        0 LOADN                            R4 0
        1 LOADN                            R5 1
        2 FASTCALL3                        MATH_CLAMP R1 R4 R5
        4 MOVE                             R3 R1
        5 GETIMPORT                        R2 K2 [math.clamp]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 NAMECALL                         R4 R0 K4 ["GetControlPoints"]
       11 CALL                             R4 1 1
       12 LENGTH                           R3 R4
       13 SUBK                             R2 R3 K3 [1]
       14 MUL                              R4 R1 R2
       15 LOADN                            R5 0
       16 SUBK                             R6 R2 K3 [1]
       17 FASTCALL                         MATH_CLAMP ; [+2]
       18 GETIMPORT                        R3 K2 [math.clamp]
       20 CALL                             R3 3 1
       21 MUL                              R5 R1 R2
       22 SUB                              R4 R5 R3
       23 NEWTABLE                         R5 0 2
       25 MOVE                             R6 R3
       26 MOVE                             R7 R4
       27 SETLIST                          R5 R6 2 [1]
       29 RETURN                           R5 1

PROTO_1:
        0 LOADN                            R2 136
        1 LOADN                            R3 0
        2 LOADN                            R4 0
        3 LOADNIL                          R5
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R7 R1
        6 GETIMPORT                        R6 K1 [typeof]
        8 CALL                             R6 1 1
        9 JUMPIFNOTEQKS                    R6 K2 ["UDim2"] ; [+8]
       11 GETUPVAL                         R6 0
       12 MOVE                             R7 R1
       13 GETTABLEKS                       R8 R0 K3 ["Parent"]
       15 CALL                             R6 2 1
       16 MOVE                             R5 R6
       17 JUMP                             ; [+1]
       18 MOVE                             R5 R1
       19 LOADN                            R8 0
       20 LOADN                            R6 244
       21 LOADN                            R7 1
       22 FORNPREP                         R6
       23 GETUPVAL                         R9 0
       24 DIVK                             R12 R8 K4 [500]
       25 NAMECALL                         R10 R0 K5 ["getPositionOnCurve"]
       27 CALL                             R10 2 1
       28 GETTABLEKS                       R11 R0 K3 ["Parent"]
       30 CALL                             R9 2 1
       31 SUB                              R10 R9 R5
       32 GETTABLEKS                       R10 R10 K6 ["Magnitude"]
       34 JUMPIFNOTLT                      R10 R2 ; [+8]
       36 MOVE                             R2 R10
       37 GETUPVAL                         R11 1
       38 MOVE                             R12 R0
       39 DIVK                             R13 R8 K4 [500]
       40 CALL                             R11 2 1
       41 GETTABLEN                        R3 R11 1
       42 DIVK                             R4 R8 K4 [500]
       43 FORNLOOP                         R6
       44 NEWTABLE                         R6 0 3
       46 MOVE                             R7 R3
       47 MOVE                             R8 R2
       48 MOVE                             R9 R4
       49 SETLIST                          R6 R7 3 [1]
       51 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["getVector2FromUDim2Scale"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 DUPCLOSURE                       R3 K9 [PROTO_1]
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1
