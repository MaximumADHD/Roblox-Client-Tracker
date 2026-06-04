MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 DUPTABLE                         R2 K9 [{"value", "multiple"}]
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K7 ["value"]
       16 LOADB                            R3 1
       17 SETTABLEKS                       R3 R2 K8 ["multiple"]
       19 RETURN                           R2 1
