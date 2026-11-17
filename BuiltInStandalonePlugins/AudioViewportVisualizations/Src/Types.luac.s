MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 0 2
       16 LOADK                            R3 K8 ["AudioEmitter"]
       17 LOADK                            R4 K9 ["Sound"]
       18 SETLIST                          R2 R3 2 [1]
       20 DUPTABLE                         R3 K11 [{"SupportedTypes"}]
       21 SETTABLEKS                       R2 R3 K10 ["SupportedTypes"]
       23 RETURN                           R3 1
