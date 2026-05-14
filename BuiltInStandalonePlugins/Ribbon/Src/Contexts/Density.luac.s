MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createContext"]
       16 MOVE                             R3 R2
       17 DUPTABLE                         R4 K10 [{"mode"}]
       18 LOADK                            R5 K11 ["DensityDefault"]
       19 SETTABLEKS                       R5 R4 K9 ["mode"]
       21 CALL                             R3 1 -1
       22 RETURN                           R3 -1
