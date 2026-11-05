MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ES7Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K6 ["Map"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K7 ["coerceToMap"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R5 R5 K8 ["coerceToTable"]
       32 CALL                             R4 1 1
       33 DUPTABLE                         R5 K9 [{"Map", "coerceToMap", "coerceToTable"}]
       34 SETTABLEKS                       R2 R5 K6 ["Map"]
       36 SETTABLEKS                       R3 R5 K7 ["coerceToMap"]
       38 SETTABLEKS                       R4 R5 K8 ["coerceToTable"]
       40 RETURN                           R5 1
