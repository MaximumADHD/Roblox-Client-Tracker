MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Signal"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K9 [{"FocusInput"}]
       15 GETTABLEKS                       R3 R1 K10 ["new"]
       17 CALL                             R3 0 1
       18 SETTABLEKS                       R3 R2 K8 ["FocusInput"]
       20 RETURN                           R2 1
