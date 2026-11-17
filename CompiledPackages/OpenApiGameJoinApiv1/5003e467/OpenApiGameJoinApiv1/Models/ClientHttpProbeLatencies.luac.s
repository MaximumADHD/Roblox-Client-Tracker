MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETTABLEKS                       R2 R1 K4 ["object"]
        9 DUPTABLE                         R3 K6 [{"RttMsByPop"}]
       10 GETTABLEKS                       R4 R1 K7 ["dictOf"]
       12 GETTABLEKS                       R5 R1 K8 ["Int32"]
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R4 R3 K5 ["RttMsByPop"]
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1
