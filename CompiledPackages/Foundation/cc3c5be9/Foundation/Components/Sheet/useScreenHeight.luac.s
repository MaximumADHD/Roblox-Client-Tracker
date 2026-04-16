PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R1 R2 K1 ["Y"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

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
        2 JUMPIFNOT                        R1 ; [+19]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K0 ["AbsoluteSize"]
        7 GETTABLEKS                       R2 R3 K1 ["Y"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 LOADK                            R3 K0 ["AbsoluteSize"]
       12 NAMECALL                         R1 R1 K2 ["GetPropertyChangedSignal"]
       14 CALL                             R1 2 1
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U0
       18 NAMECALL                         R1 R1 K3 ["Connect"]
       20 CALL                             R1 2 1
       21 MOVE                             R0 R1
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          REF R0
       24 CLOSEUPVALS                      R0
       25 RETURN                           R1 1

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
       12 JUMPIFNOT                        R0 ; [+5]
       13 GETTABLEKS                       R3 R0 K2 ["AbsoluteSize"]
       15 GETTABLEKS                       R2 R3 K3 ["Y"]
       17 JUMPIF                           R2 ; [+1]
       18 LOADN                            R2 0
       19 CALL                             R1 1 2
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R3 R4 K4 ["useLayoutEffect"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 NEWTABLE                         R5 0 1
       28 MOVE                             R6 R0
       29 SETLIST                          R5 R6 1 [1]
       31 CALL                             R3 2 0
       32 RETURN                           R1 1

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
