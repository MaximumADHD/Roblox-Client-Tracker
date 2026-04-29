MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"utils", "store", "cache", "devtools"}]
        2 GETIMPORT                        R1 K6 [require]
        4 GETIMPORT                        R3 K8 [script]
        6 GETTABLEKS                       R2 R3 K0 ["utils"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["utils"]
       11 GETIMPORT                        R1 K6 [require]
       13 GETIMPORT                        R3 K8 [script]
       15 GETTABLEKS                       R2 R3 K1 ["store"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["store"]
       20 GETIMPORT                        R1 K6 [require]
       22 GETIMPORT                        R3 K8 [script]
       24 GETTABLEKS                       R2 R3 K2 ["cache"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["cache"]
       29 DUPTABLE                         R1 K10 [{"Components"}]
       30 DUPTABLE                         R2 K12 [{"views"}]
       31 DUPTABLE                         R3 K14 [{"types"}]
       32 GETIMPORT                        R4 K6 [require]
       34 GETIMPORT                        R8 K8 [script]
       36 GETTABLEKS                       R7 R8 K11 ["views"]
       38 GETTABLEKS                       R6 R7 K9 ["Components"]
       40 GETTABLEKS                       R5 R6 K13 ["types"]
       42 CALL                             R4 1 1
       43 SETTABLEKS                       R4 R3 K13 ["types"]
       45 SETTABLEKS                       R3 R2 K11 ["views"]
       47 SETTABLEKS                       R2 R1 K9 ["Components"]
       49 SETTABLEKS                       R1 R0 K3 ["devtools"]
       51 RETURN                           R0 1
