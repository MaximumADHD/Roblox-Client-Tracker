PROTO_0:
        0 NEWTABLE                         R1 0 4
        2 LOADK                            R2 K0 ["None"]
        3 LOADK                            R3 K1 ["Geometry Complexity"]
        4 LOADK                            R4 K2 ["Transparent"]
        5 LOADK                            R5 K3 ["Decal"]
        6 SETLIST                          R1 R2 4 [1]
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_2:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R0 K0 ["None"]
        1 DUPTABLE                         R1 K4 [{"GetAvailableViewModesAsync", "GetViewModeAsync", "SetViewModeAsync"}]
        2 DUPCLOSURE                       R2 K5 [PROTO_0]
        3 SETTABLEKS                       R2 R1 K1 ["GetAvailableViewModesAsync"]
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          REF R0
        7 SETTABLEKS                       R2 R1 K2 ["GetViewModeAsync"]
        9 NEWCLOSURE                       R2 P2
       10 CAPTURE                          REF R0
       11 SETTABLEKS                       R2 R1 K3 ["SetViewModeAsync"]
       13 CLOSEUPVALS                      R0
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 1 0
       16 DUPCLOSURE                       R3 K8 [PROTO_3]
       17 SETTABLEKS                       R3 R2 K9 ["new"]
       19 RETURN                           R2 1
