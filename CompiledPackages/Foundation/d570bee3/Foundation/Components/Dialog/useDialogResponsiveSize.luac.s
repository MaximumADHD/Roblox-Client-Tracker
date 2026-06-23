PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["setResponsiveSize"]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["AbsoluteSize"]
       10 GETTABLEKS                       R2 R2 K2 ["X"]
       12 GETUPVAL                         R3 3
       13 GETUPVAL                         R4 4
       14 CALL                             R1 3 -1
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 GETUPVAL                         R0 0
        6 LOADK                            R2 K0 ["AbsoluteSize"]
        7 NAMECALL                         R0 R0 K1 ["GetPropertyChangedSignal"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R2 1
       11 NAMECALL                         R0 R0 K2 ["Connect"]
       13 CALL                             R0 2 1
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["useCallback"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R6 0 4
       17 MOVE                             R7 R2
       18 MOVE                             R8 R0
       19 MOVE                             R9 R1
       20 GETTABLEKS                       R10 R3 K1 ["size"]
       22 SETLIST                          R6 R7 4 [1]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K2 ["useLayoutEffect"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 NEWTABLE                         R7 0 3
       33 MOVE                             R8 R2
       34 MOVE                             R9 R0
       35 MOVE                             R10 R4
       36 SETLIST                          R7 R8 3 [1]
       38 CALL                             R5 2 0
       39 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["DialogSize"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Providers"]
       25 GETTABLEKS                       R5 R5 K11 ["Overlay"]
       27 GETTABLEKS                       R5 R5 K12 ["useOverlay"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Providers"]
       34 GETTABLEKS                       R6 R6 K13 ["Style"]
       36 GETTABLEKS                       R6 R6 K14 ["useTokens"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETIMPORT                        R7 K1 [script]
       43 GETTABLEKS                       R7 R7 K4 ["Parent"]
       45 GETTABLEKS                       R7 R7 K15 ["getResponsiveSize"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETIMPORT                        R8 K1 [script]
       52 GETTABLEKS                       R8 R8 K4 ["Parent"]
       54 GETTABLEKS                       R8 R8 K16 ["useDialog"]
       56 CALL                             R7 1 1
       57 DUPCLOSURE                       R8 K17 [PROTO_3]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R6
       63 RETURN                           R8 1
