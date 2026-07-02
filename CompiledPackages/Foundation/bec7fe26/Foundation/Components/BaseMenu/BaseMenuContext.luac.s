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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["InputSize"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R2 K12 ["createContext"]
       30 DUPTABLE                         R6 K18 [{["onActivated"] = , ["size"], ["hasLeading"] = , ["setHasLeading"] = }]
       31 GETTABLEKS                       R7 R4 K19 ["Medium"]
       33 SETTABLEKS                       R7 R6 K15 ["size"]
       35 CALL                             R5 1 1
       36 RETURN                           R5 1
