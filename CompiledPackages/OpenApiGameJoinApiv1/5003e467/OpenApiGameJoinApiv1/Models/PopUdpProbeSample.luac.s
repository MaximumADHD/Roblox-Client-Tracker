MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETTABLEKS                       R2 R1 K4 ["object"]
        9 DUPTABLE                         R3 K9 [{"pop", "rttMs", "history", "tsMs"}]
       10 GETTABLEKS                       R4 R1 K10 ["String"]
       12 SETTABLEKS                       R4 R3 K5 ["pop"]
       14 GETTABLEKS                       R4 R1 K11 ["Number"]
       16 SETTABLEKS                       R4 R3 K6 ["rttMs"]
       18 GETTABLEKS                       R4 R1 K12 ["arrayOf"]
       20 GETTABLEKS                       R5 R1 K11 ["Number"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K7 ["history"]
       25 GETTABLEKS                       R4 R1 K13 ["Integer"]
       27 SETTABLEKS                       R4 R3 K8 ["tsMs"]
       29 CALL                             R2 1 -1
       30 RETURN                           R2 -1
