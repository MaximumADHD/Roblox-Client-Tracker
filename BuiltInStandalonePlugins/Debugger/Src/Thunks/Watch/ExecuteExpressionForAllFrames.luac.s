PROTO_0:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        ASSERT R3 ; [+2]
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R4 1
        7 NAMECALL                         R2 R2 K2 ["GetThreadById"]
        9 CALL                             R2 2 1
       10 FASTCALL1                        ASSERT R2 ; [+3]
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K1 [assert]
       14 CALL                             R3 1 0
       15 LOADN                            R5 1
       16 GETTABLEKS                       R3 R2 K3 ["FrameCount"]
       18 LOADN                            R4 1
       19 FORNPREP                         R3
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R6 R7 K4 ["ctor"]
       23 GETUPVAL                         R7 3
       24 GETUPVAL                         R8 1
       25 MOVE                             R9 R5
       26 CALL                             R6 3 1
       27 GETUPVAL                         R9 4
       28 GETUPVAL                         R10 5
       29 MOVE                             R11 R6
       30 GETUPVAL                         R12 0
       31 CALL                             R9 3 -1
       32 NAMECALL                         R7 R0 K5 ["dispatch"]
       34 CALL                             R7 -1 0
       35 FORNLOOP                         R3
       36 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R3
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R2 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R2 K4 ["Models"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["StepStateBundle"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K8 ["DebuggerStateToken"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R8 R0 K3 ["Src"]
       29 GETTABLEKS                       R7 R8 K9 ["Thunks"]
       31 GETTABLEKS                       R6 R7 K10 ["Watch"]
       33 GETTABLEKS                       R5 R6 K11 ["ExecuteExpressionThunk"]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K12 [PROTO_1]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 RETURN                           R5 1
