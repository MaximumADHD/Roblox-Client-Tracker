PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["requestOverlay"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["useLayoutEffect"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["FoundationOverlayKeyboardAwarenessHardened"]
       13 JUMPIFNOT                        R4 ; [+7]
       14 NEWTABLE                         R3 0 1
       16 GETTABLEKS                       R4 R0 K3 ["requestOverlay"]
       18 SETLIST                          R3 R4 1 [1]
       20 JUMP                             ; [+2]
       21 NEWTABLE                         R3 0 0
       23 CALL                             R1 2 0
       24 GETTABLEKS                       R1 R0 K4 ["instance"]
       26 RETURN                           R1 1

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
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["OverlayContext"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Utility"]
       27 GETTABLEKS                       R5 R5 K10 ["Flags"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K11 [PROTO_1]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 RETURN                           R5 1
