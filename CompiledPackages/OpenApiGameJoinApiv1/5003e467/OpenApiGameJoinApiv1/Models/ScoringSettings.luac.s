MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETTABLEKS                       R2 R1 K4 ["object"]
        9 DUPTABLE                         R3 K6 [{"GameInstanceIsolationTag"}]
       10 GETTABLEKS                       R4 R1 K7 ["Int32"]
       12 SETTABLEKS                       R4 R3 K5 ["GameInstanceIsolationTag"]
       14 DUPTABLE                         R4 K9 [{"AlgorithmId"}]
       15 GETTABLEKS                       R5 R1 K7 ["Int32"]
       17 SETTABLEKS                       R5 R4 K8 ["AlgorithmId"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1
