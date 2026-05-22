PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADN                            R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K0 ["Size"]
       12 GETTABLEKS                       R3 R3 K1 ["Size_150"]
       14 JUMP                             ; [+1]
       15 LOADN                            R3 0
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADN                            R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETTABLEKS                       R3 R0 K0 ["ScrollBarThickness"]
       11 JUMP                             ; [+1]
       12 LOADN                            R3 0
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["FoundationDialogContentScrollbarLayout"]
        8 JUMPIFNOT                        R3 ; [+3]
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K1 ["FoundationDialogContentScrollbarLayout"]
       16 JUMPIFNOT                        R3 ; [+26]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K2 ["useBinding"]
       20 LOADN                            R4 0
       21 CALL                             R3 1 2
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R2
       30 NEWTABLE                         R7 0 1
       32 GETTABLEKS                       R8 R2 K4 ["Size"]
       34 GETTABLEKS                       R8 R8 K5 ["Size_150"]
       36 SETLIST                          R7 R8 1 [1]
       38 CALL                             R5 2 1
       39 MOVE                             R6 R0
       40 MOVE                             R7 R3
       41 MOVE                             R8 R5
       42 RETURN                           R6 3
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R3 R3 K0 ["useState"]
       46 LOADN                            R4 0
       47 CALL                             R3 1 2
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       51 NEWCLOSURE                       R6 P1
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R4
       55 NEWTABLE                         R7 0 0
       57 CALL                             R5 2 1
       58 MOVE                             R6 R0
       59 MOVE                             R7 R3
       60 MOVE                             R8 R5
       61 RETURN                           R6 3

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
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R4 K9 ["Flags"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Utility"]
       25 GETTABLEKS                       R5 R5 K10 ["isScrollingFrameOverflowingY"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Providers"]
       32 GETTABLEKS                       R6 R6 K12 ["Style"]
       34 GETTABLEKS                       R6 R6 K13 ["useTokens"]
       36 CALL                             R5 1 1
       37 DUPCLOSURE                       R6 K14 [PROTO_2]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 RETURN                           R6 1
