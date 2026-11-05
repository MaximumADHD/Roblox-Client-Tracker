MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETIMPORT                        R2 K1 [script]
        9 GETTABLEKS                       R2 R2 K5 ["Array"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K6 ["Map"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K7 ["Object"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R5 R5 K8 ["Set"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETIMPORT                        R6 K1 [script]
       37 GETTABLEKS                       R6 R6 K9 ["WeakMap"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETIMPORT                        R7 K1 [script]
       44 GETTABLEKS                       R7 R7 K10 ["inspect"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R8 R0 K11 ["ES7Types"]
       51 CALL                             R7 1 1
       52 DUPTABLE                         R8 K14 [{"Array", "Object", "Map", "coerceToMap", "coerceToTable", "Set", "WeakMap", "inspect"}]
       53 SETTABLEKS                       R1 R8 K5 ["Array"]
       55 SETTABLEKS                       R3 R8 K7 ["Object"]
       57 GETTABLEKS                       R9 R2 K6 ["Map"]
       59 SETTABLEKS                       R9 R8 K6 ["Map"]
       61 GETTABLEKS                       R9 R2 K12 ["coerceToMap"]
       63 SETTABLEKS                       R9 R8 K12 ["coerceToMap"]
       65 GETTABLEKS                       R9 R2 K13 ["coerceToTable"]
       67 SETTABLEKS                       R9 R8 K13 ["coerceToTable"]
       69 SETTABLEKS                       R4 R8 K8 ["Set"]
       71 SETTABLEKS                       R5 R8 K9 ["WeakMap"]
       73 SETTABLEKS                       R6 R8 K10 ["inspect"]
       75 RETURN                           R8 1
