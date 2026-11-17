MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETTABLEKS                       R2 R1 K4 ["object"]
        9 DUPTABLE                         R3 K7 [{"PotentialGameChanceOverride", "PotentialGameTopRanksOverride"}]
       10 GETTABLEKS                       R4 R1 K8 ["Number"]
       12 SETTABLEKS                       R4 R3 K5 ["PotentialGameChanceOverride"]
       14 GETTABLEKS                       R4 R1 K9 ["Int32"]
       16 SETTABLEKS                       R4 R3 K6 ["PotentialGameTopRanksOverride"]
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1
