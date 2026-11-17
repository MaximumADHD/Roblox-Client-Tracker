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
       18 LOADK                            R4 K9 ["DialogContext"]
       19 SETTABLEKS                       R4 R3 K10 ["displayName"]
       21 GETIMPORT                        R4 K13 [table.freeze]
       23 DUPTABLE                         R5 K16 [{"Context", "Provider"}]
       24 SETTABLEKS                       R3 R5 K14 ["Context"]
       26 GETTABLEKS                       R6 R3 K15 ["Provider"]
       28 SETTABLEKS                       R6 R5 K15 ["Provider"]
       30 CALL                             R4 1 -1
       31 RETURN                           R4 -1
