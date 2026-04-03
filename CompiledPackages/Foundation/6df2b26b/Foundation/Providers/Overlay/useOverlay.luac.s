PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["requestOverlay"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["FoundationLazyOverlayLoading"]
        8 JUMPIFNOT                        R1 ; [+8]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K2 ["useEffect"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R3 0 0
       16 CALL                             R1 2 0
       17 GETTABLEKS                       R1 R0 K3 ["instance"]
       19 RETURN                           R1 1

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
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K8 ["OverlayContext"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R0 K9 ["Utility"]
       27 GETTABLEKS                       R5 R6 K10 ["Flags"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K11 [PROTO_1]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 RETURN                           R5 1
