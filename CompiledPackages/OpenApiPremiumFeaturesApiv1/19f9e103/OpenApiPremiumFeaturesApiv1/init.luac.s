MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["HttpWrapper"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K6 ["Api"]
       16 GETTABLEKS                       R2 R2 K7 ["PremiumFeaturesProducts"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K6 ["Api"]
       25 GETTABLEKS                       R3 R3 K8 ["PremiumFeaturesUsers"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K11 [table.freeze]
       30 DUPTABLE                         R4 K12 [{"PremiumFeaturesProducts", "PremiumFeaturesUsers"}]
       31 SETTABLEKS                       R1 R4 K7 ["PremiumFeaturesProducts"]
       33 SETTABLEKS                       R2 R4 K8 ["PremiumFeaturesUsers"]
       35 CALL                             R3 1 -1
       36 RETURN                           R3 -1
