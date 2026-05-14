PROTO_0:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Context has not been provided"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["overlayStartsOpen"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["createElement"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["Provider"]
       12 DUPTABLE                         R5 K5 [{"value"}]
       13 DUPTABLE                         R6 K8 [{"overlayFocused", "setOverlayFocused"}]
       14 SETTABLEKS                       R1 R6 K6 ["overlayFocused"]
       16 SETTABLEKS                       R2 R6 K7 ["setOverlayFocused"]
       18 SETTABLEKS                       R6 R5 K4 ["value"]
       20 GETTABLEKS                       R6 R0 K9 ["children"]
       22 CALL                             R3 3 -1
       23 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createContext"]
       16 DUPTABLE                         R3 K11 [{"overlayFocused", "setOverlayFocused"}]
       17 LOADB                            R4 0
       18 SETTABLEKS                       R4 R3 K9 ["overlayFocused"]
       20 DUPCLOSURE                       R4 K12 [PROTO_0]
       21 SETTABLEKS                       R4 R3 K10 ["setOverlayFocused"]
       23 CALL                             R2 1 1
       24 DUPCLOSURE                       R3 K13 [PROTO_1]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 DUPTABLE                         R4 K16 [{"Context", "Provider"}]
       28 SETTABLEKS                       R2 R4 K14 ["Context"]
       30 SETTABLEKS                       R3 R4 K15 ["Provider"]
       32 RETURN                           R4 1
