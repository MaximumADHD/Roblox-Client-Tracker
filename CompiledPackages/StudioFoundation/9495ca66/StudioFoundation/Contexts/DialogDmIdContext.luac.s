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
       16 LOADNIL                          R4
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K11 [table.freeze]
       20 DUPTABLE                         R5 K14 [{"Context", "Provider"}]
       21 SETTABLEKS                       R3 R5 K12 ["Context"]
       23 GETTABLEKS                       R6 R3 K13 ["Provider"]
       25 SETTABLEKS                       R6 R5 K13 ["Provider"]
       27 CALL                             R4 1 -1
       28 RETURN                           R4 -1
