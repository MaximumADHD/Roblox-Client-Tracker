MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["createContext"]
       16 GETIMPORT                        R4 K10 [game]
       18 LOADK                            R6 K11 ["TelemetryService"]
       19 NAMECALL                         R4 R4 K12 ["GetService"]
       21 CALL                             R4 2 -1
       22 CALL                             R3 -1 -1
       23 RETURN                           R3 -1
