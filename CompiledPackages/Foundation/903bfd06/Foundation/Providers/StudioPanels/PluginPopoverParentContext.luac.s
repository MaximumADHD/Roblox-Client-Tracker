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
       21 DUPTABLE                         R4 K12 [{"id", "ready"}]
       22 LOADNIL                          R5
       23 SETTABLEKS                       R5 R4 K10 ["id"]
       25 LOADB                            R5 1
       26 SETTABLEKS                       R5 R4 K11 ["ready"]
       28 GETTABLEKS                       R5 R2 K13 ["createContext"]
       30 GETTABLEKS                       R7 R3 K14 ["FoundationPopoverPluginOverlayMeasurement"]
       32 JUMPIFNOT                        R7 ; [+2]
       33 MOVE                             R6 R4
       34 JUMP                             ; [+1]
       35 LOADNIL                          R6
       36 CALL                             R5 1 1
       37 LOADK                            R6 K15 ["PluginPopoverParentContext"]
       38 SETTABLEKS                       R6 R5 K16 ["displayName"]
       40 RETURN                           R5 1
