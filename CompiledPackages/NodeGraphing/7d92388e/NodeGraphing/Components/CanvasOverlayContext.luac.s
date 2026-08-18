MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K10 [{["layer"] = }]
       15 GETTABLEKS                       R3 R1 K11 ["createContext"]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 1
       19 DUPTABLE                         R4 K14 [{"Context", "default"}]
       20 SETTABLEKS                       R3 R4 K12 ["Context"]
       22 SETTABLEKS                       R2 R4 K13 ["default"]
       24 RETURN                           R4 1
