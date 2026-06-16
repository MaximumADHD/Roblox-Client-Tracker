PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationDialogContentSelectable"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 LOADN                            R3 1
        7 CALL                             R1 2 1
        8 JUMP                             ; [+12]
        9 GETTABLEKS                       R2 R0 K1 ["AbsoluteCanvasSize"]
       11 GETTABLEKS                       R2 R2 K2 ["Y"]
       13 GETTABLEKS                       R3 R0 K3 ["AbsoluteSize"]
       15 GETTABLEKS                       R3 R3 K2 ["Y"]
       17 JUMPIFLT                         R3 R2 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 GETUPVAL                         R2 2
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 3
       25 JUMPIFNOT                        R1 ; [+3]
       26 GETTABLEKS                       R3 R0 K4 ["ScrollBarThickness"]
       28 JUMP                             ; [+1]
       29 LOADN                            R3 0
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADN                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R6 0 0
       20 CALL                             R4 2 1
       21 MOVE                             R5 R0
       22 MOVE                             R6 R2
       23 MOVE                             R7 R4
       24 RETURN                           R5 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K7 ["Utility"]
       25 GETTABLEKS                       R5 R5 K10 ["isScrollingFrameOverflowingY"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K11 [PROTO_1]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 RETURN                           R5 1
