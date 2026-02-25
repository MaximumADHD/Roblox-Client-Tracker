MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Tests"]
       11 GETTABLEKS                       R2 R3 K7 ["TestMatch"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K10 [{"displayName", "testMatch"}]
       15 LOADK                            R3 K11 ["Reimport:lib"]
       16 SETTABLEKS                       R3 R2 K8 ["displayName"]
       18 SETTABLEKS                       R1 R2 K9 ["testMatch"]
       20 RETURN                           R2 1
