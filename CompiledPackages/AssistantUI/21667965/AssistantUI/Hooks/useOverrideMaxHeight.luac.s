PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 120
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K1 ["AbsoluteSize"]
        5 GETTABLEKS                       R5 R5 K2 ["Y"]
        7 MULK                             R4 R5 K0 [0.5]
        8 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        9 GETIMPORT                        R3 K5 [math.floor]
       11 CALL                             R3 1 1
       12 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       14 GETIMPORT                        R1 K7 [math.max]
       16 CALL                             R1 2 1
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [typeof]
        7 CALL                             R1 1 1
        8 JUMPIFEQKS                       R1 K3 ["Instance"] ; [+3]
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 LOADK                            R3 K4 ["LayerCollector"]
       13 NAMECALL                         R1 R0 K5 ["FindFirstAncestorWhichIsA"]
       15 CALL                             R1 2 1
       16 JUMPIF                           R1 ; [+2]
       17 LOADNIL                          R2
       18 RETURN                           R2 1
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R1
       22 GETUPVAL                         R3 1
       23 LOADN                            R5 120
       24 GETTABLEKS                       R8 R1 K7 ["AbsoluteSize"]
       26 GETTABLEKS                       R8 R8 K8 ["Y"]
       28 MULK                             R7 R8 K6 [0.5]
       29 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       30 GETIMPORT                        R6 K11 [math.floor]
       32 CALL                             R6 1 1
       33 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       35 GETIMPORT                        R4 K13 [math.max]
       37 CALL                             R4 2 1
       38 CALL                             R3 1 0
       39 LOADK                            R5 K7 ["AbsoluteSize"]
       40 NAMECALL                         R3 R1 K14 ["GetPropertyChangedSignal"]
       42 CALL                             R3 2 1
       43 MOVE                             R5 R2
       44 NAMECALL                         R3 R3 K15 ["Connect"]
       46 CALL                             R3 2 1
       47 NEWCLOSURE                       R4 P1
       48 CAPTURE                          VAL R3
       49 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 NEWTABLE                         R5 0 0
       13 CALL                             R3 2 0
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_3]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
