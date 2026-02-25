PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["AbsoluteSize"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["X"]
        3 GETTABLEKS                       R1 R2 K1 ["Offset"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K0 ["X"]
        8 GETUPVAL                         R4 2
        9 SUB                              R2 R3 R4
       10 FASTCALL2                        MATH_MIN R1 R2 ; [+3]
       12 GETIMPORT                        R0 K4 [math.min]
       14 CALL                             R0 2 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K5 ["Y"]
       18 GETTABLEKS                       R2 R3 K1 ["Offset"]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K5 ["Y"]
       23 GETUPVAL                         R5 3
       24 SUB                              R3 R4 R5
       25 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
       27 GETIMPORT                        R1 K4 [math.min]
       29 CALL                             R1 2 1
       30 GETUPVAL                         R2 4
       31 GETIMPORT                        R3 K8 [UDim2.fromOffset]
       33 MOVE                             R4 R0
       34 MOVE                             R5 R1
       35 CALL                             R3 2 -1
       36 CALL                             R2 -1 0
       37 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["use"]
        3 CALL                             R3 1 1
        4 NAMECALL                         R3 R3 K1 ["get"]
        6 CALL                             R3 1 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["useState"]
       10 GETTABLEKS                       R5 R3 K3 ["AbsoluteSize"]
       12 CALL                             R4 1 2
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K2 ["useState"]
       16 MOVE                             R7 R0
       17 CALL                             R6 1 2
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R8 R9 K4 ["useEffect"]
       21 NEWCLOSURE                       R9 P0
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R5
       24 NEWTABLE                         R10 0 1
       26 MOVE                             R11 R3
       27 SETLIST                          R10 R11 1 [1]
       29 CALL                             R8 2 0
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R8 R9 K4 ["useEffect"]
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
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Focus"]
       25 DUPCLOSURE                       R5 K11 [PROTO_4]
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R1
       28 RETURN                           R5 1
