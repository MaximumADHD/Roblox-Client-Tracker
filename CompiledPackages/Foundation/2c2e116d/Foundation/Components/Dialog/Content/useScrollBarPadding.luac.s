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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["useBinding"]
       10 LOADN                            R4 0
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R2
       20 NEWTABLE                         R7 0 1
       22 GETTABLEKS                       R8 R2 K3 ["Size"]
       24 GETTABLEKS                       R8 R8 K4 ["Size_150"]
       26 SETLIST                          R7 R8 1 [1]
       28 CALL                             R5 2 1
       29 MOVE                             R6 R0
       30 MOVE                             R7 R3
       31 MOVE                             R8 R5
       32 RETURN                           R6 3

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
       18 GETTABLEKS                       R4 R4 K9 ["isScrollingFrameOverflowingY"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Providers"]
       25 GETTABLEKS                       R5 R5 K11 ["Style"]
       27 GETTABLEKS                       R5 R5 K12 ["useTokens"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K13 [PROTO_1]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 RETURN                           R5 1
