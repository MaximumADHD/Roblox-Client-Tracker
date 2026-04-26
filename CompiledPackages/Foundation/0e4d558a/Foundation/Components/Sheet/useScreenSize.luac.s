PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["AbsoluteSize"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+17]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["AbsoluteSize"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 LOADK                            R3 K0 ["AbsoluteSize"]
       10 NAMECALL                         R1 R1 K1 ["GetPropertyChangedSignal"]
       12 CALL                             R1 2 1
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U0
       16 NAMECALL                         R1 R1 K2 ["Connect"]
       18 CALL                             R1 2 1
       19 MOVE                             R0 R1
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          REF R0
       22 CLOSEUPVALS                      R0
       23 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationOverlayKeyboardAwarenessHardened"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 JUMP                             ; [+2]
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 1
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K1 ["useState"]
       12 JUMPIFNOT                        R0 ; [+3]
       13 GETTABLEKS                       R2 R0 K2 ["AbsoluteSize"]
       15 JUMPIF                           R2 ; [+5]
       16 GETIMPORT                        R2 K5 [Vector2.new]
       18 LOADN                            R3 0
       19 LOADN                            R4 0
       20 CALL                             R2 2 1
       21 CALL                             R1 1 2
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R3 R4 K6 ["useLayoutEffect"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R2
       28 NEWTABLE                         R5 0 1
       30 MOVE                             R6 R0
       31 SETLIST                          R5 R6 1 [1]
       33 CALL                             R3 2 0
       34 RETURN                           R1 1

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
       16 GETTABLEKS                       R5 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R5 K9 ["Flags"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Providers"]
       25 GETTABLEKS                       R6 R7 K11 ["Overlay"]
       27 GETTABLEKS                       R5 R6 K12 ["useOverlay"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R8 R0 K10 ["Providers"]
       34 GETTABLEKS                       R7 R8 K11 ["Overlay"]
       36 GETTABLEKS                       R6 R7 K13 ["useScreen"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K14 [PROTO_3]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R2
       44 RETURN                           R6 1
