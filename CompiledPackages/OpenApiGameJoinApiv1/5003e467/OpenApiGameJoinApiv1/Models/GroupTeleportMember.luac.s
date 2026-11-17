MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETIMPORT                        R2 K1 [require]
        9 LOADK                            R3 K4 ["./GameSession"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R1 K5 ["object"]
       13 DUPTABLE                         R4 K8 [{"userId", "gameSession"}]
       14 GETTABLEKS                       R5 R1 K9 ["Integer"]
       16 SETTABLEKS                       R5 R4 K6 ["userId"]
       18 SETTABLEKS                       R2 R4 K7 ["gameSession"]
       20 CALL                             R3 1 -1
       21 RETURN                           R3 -1
