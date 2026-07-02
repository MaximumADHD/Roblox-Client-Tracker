MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K10 [{"checkListConsistency", "deepEqual", "deepCopy", "equalKey", "fieldCount", "listDifferences", "print", "shallowEqual", "tableDifference", "toString"}]
        2 GETIMPORT                        R1 K12 [require]
        4 GETIMPORT                        R2 K14 [script]
        6 GETTABLEKS                       R2 R2 K0 ["checkListConsistency"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["checkListConsistency"]
       11 GETIMPORT                        R1 K12 [require]
       13 GETIMPORT                        R2 K14 [script]
       15 GETTABLEKS                       R2 R2 K1 ["deepEqual"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["deepEqual"]
       20 GETIMPORT                        R1 K12 [require]
       22 GETIMPORT                        R2 K14 [script]
       24 GETTABLEKS                       R2 R2 K2 ["deepCopy"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["deepCopy"]
       29 GETIMPORT                        R1 K12 [require]
       31 GETIMPORT                        R2 K14 [script]
       33 GETTABLEKS                       R2 R2 K3 ["equalKey"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K3 ["equalKey"]
       38 GETIMPORT                        R1 K12 [require]
       40 GETIMPORT                        R2 K14 [script]
       42 GETTABLEKS                       R2 R2 K4 ["fieldCount"]
       44 CALL                             R1 1 1
       45 SETTABLEKS                       R1 R0 K4 ["fieldCount"]
       47 GETIMPORT                        R1 K12 [require]
       49 GETIMPORT                        R2 K14 [script]
       51 GETTABLEKS                       R2 R2 K5 ["listDifferences"]
       53 CALL                             R1 1 1
       54 SETTABLEKS                       R1 R0 K5 ["listDifferences"]
       56 GETIMPORT                        R1 K12 [require]
       58 GETIMPORT                        R2 K14 [script]
       60 GETTABLEKS                       R2 R2 K6 ["print"]
       62 CALL                             R1 1 1
       63 GETIMPORT                        R2 K15 [print]
       65 CALL                             R1 1 1
       66 SETTABLEKS                       R1 R0 K6 ["print"]
       68 GETIMPORT                        R1 K12 [require]
       70 GETIMPORT                        R2 K14 [script]
       72 GETTABLEKS                       R2 R2 K7 ["shallowEqual"]
       74 CALL                             R1 1 1
       75 SETTABLEKS                       R1 R0 K7 ["shallowEqual"]
       77 GETIMPORT                        R1 K12 [require]
       79 GETIMPORT                        R2 K14 [script]
       81 GETTABLEKS                       R2 R2 K8 ["tableDifference"]
       83 CALL                             R1 1 1
       84 SETTABLEKS                       R1 R0 K8 ["tableDifference"]
       86 GETIMPORT                        R1 K12 [require]
       88 GETIMPORT                        R2 K14 [script]
       90 GETTABLEKS                       R2 R2 K9 ["toString"]
       92 CALL                             R1 1 1
       93 SETTABLEKS                       R1 R0 K9 ["toString"]
       95 RETURN                           R0 1
