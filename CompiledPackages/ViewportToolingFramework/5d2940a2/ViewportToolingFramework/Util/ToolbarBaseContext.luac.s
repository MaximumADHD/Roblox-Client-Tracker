MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K9 [{"Direction"}]
       15 LOADK                            R3 K10 ["Horizontal"]
       16 SETTABLEKS                       R3 R2 K8 ["Direction"]
       18 GETTABLEKS                       R3 R1 K11 ["createContext"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 RETURN                           R3 1
