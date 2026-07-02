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
       21 DUPTABLE                         R4 K14 [{["id"] = , ["ready"] = True}]
       22 GETTABLEKS                       R5 R2 K15 ["createContext"]
       24 GETTABLEKS                       R7 R3 K16 ["FoundationPopoverPluginOverlayMeasurement"]
       26 JUMPIFNOT                        R7 ; [+2]
       27 MOVE                             R6 R4
       28 JUMP                             ; [+1]
       29 LOADNIL                          R6
       30 CALL                             R5 1 1
       31 LOADK                            R6 K17 ["PluginPopoverParentContext"]
       32 SETTABLEKS                       R6 R5 K18 ["displayName"]
       34 RETURN                           R5 1
