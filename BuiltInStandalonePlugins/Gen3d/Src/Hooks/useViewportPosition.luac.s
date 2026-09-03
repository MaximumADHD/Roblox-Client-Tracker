PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AbsoluteSize"]
        2 NAMECALL                         R0 R0 K1 ["GetPropertyChangedSignal"]
        4 CALL                             R0 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R0 R0 K2 ["Connect"]
       10 CALL                             R0 2 1
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["X"]
        3 GETTABLEKS                       R1 R1 K1 ["Offset"]
        5 LOADN                            R2 0
        6 LOADN                            R4 0
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K0 ["X"]
       10 GETUPVAL                         R7 2
       11 SUB                              R5 R6 R7
       12 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       14 GETIMPORT                        R3 K4 [math.max]
       16 CALL                             R3 2 1
       17 FASTCALL                         MATH_CLAMP ; [+2]
       18 GETIMPORT                        R0 K6 [math.clamp]
       20 CALL                             R0 3 1
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K7 ["Y"]
       24 GETTABLEKS                       R2 R2 K1 ["Offset"]
       26 LOADN                            R3 0
       27 LOADN                            R5 0
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K7 ["Y"]
       31 GETUPVAL                         R8 3
       32 SUB                              R6 R7 R8
       33 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       35 GETIMPORT                        R4 K4 [math.max]
       37 CALL                             R4 2 1
       38 FASTCALL                         MATH_CLAMP ; [+2]
       39 GETIMPORT                        R1 K6 [math.clamp]
       41 CALL                             R1 3 1
       42 GETUPVAL                         R2 4
       43 GETIMPORT                        R3 K10 [UDim2.fromOffset]
       45 MOVE                             R4 R0
       46 MOVE                             R5 R1
       47 CALL                             R3 2 -1
       48 CALL                             R2 -1 0
       49 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["use"]
        3 CALL                             R3 1 1
        4 NAMECALL                         R3 R3 K1 ["get"]
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["useState"]
       10 GETTABLEKS                       R5 R3 K3 ["AbsoluteSize"]
       12 CALL                             R4 1 2
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K2 ["useState"]
       16 MOVE                             R7 R0
       17 CALL                             R6 1 2
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K4 ["useEffect"]
       21 NEWCLOSURE                       R9 P0
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R5
       24 NEWTABLE                         R10 0 1
       26 MOVE                             R11 R3
       27 SETLIST                          R10 R11 1 [1]
       29 CALL                             R8 2 0
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R8 R8 K4 ["useEffect"]
       33 NEWCLOSURE                       R9 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R7
       39 NEWTABLE                         R10 0 4
       41 MOVE                             R11 R0
       42 MOVE                             R12 R1
       43 MOVE                             R13 R2
       44 MOVE                             R14 R4
       45 SETLIST                          R10 R11 4 [1]
       47 CALL                             R8 2 0
       48 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Focus"]
       25 DUPCLOSURE                       R5 K11 [PROTO_4]
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R1
       28 RETURN                           R5 1
