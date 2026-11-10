MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["strict"]
       11 CALL                             R0 1 1
       12 MOVE                             R1 R0
       13 DUPTABLE                         R2 K14 [{"checkListConsistency", "equalKey", "fieldCount", "listDifferences", "print", "shallowEqual", "tableDifference", "toString"}]
       14 GETIMPORT                        R3 K1 [require]
       16 GETIMPORT                        R4 K3 [script]
       18 GETTABLEKS                       R4 R4 K6 ["checkListConsistency"]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K6 ["checkListConsistency"]
       23 GETIMPORT                        R3 K1 [require]
       25 GETIMPORT                        R4 K3 [script]
       27 GETTABLEKS                       R4 R4 K7 ["equalKey"]
       29 CALL                             R3 1 1
       30 SETTABLEKS                       R3 R2 K7 ["equalKey"]
       32 GETIMPORT                        R3 K1 [require]
       34 GETIMPORT                        R4 K3 [script]
       36 GETTABLEKS                       R4 R4 K8 ["fieldCount"]
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R3 R2 K8 ["fieldCount"]
       41 GETIMPORT                        R3 K1 [require]
       43 GETIMPORT                        R4 K3 [script]
       45 GETTABLEKS                       R4 R4 K9 ["listDifferences"]
       47 CALL                             R3 1 1
       48 SETTABLEKS                       R3 R2 K9 ["listDifferences"]
       50 GETIMPORT                        R3 K1 [require]
       52 GETIMPORT                        R4 K3 [script]
       54 GETTABLEKS                       R4 R4 K10 ["print"]
       56 CALL                             R3 1 1
       57 GETIMPORT                        R4 K15 [print]
       59 CALL                             R3 1 1
       60 SETTABLEKS                       R3 R2 K10 ["print"]
       62 GETIMPORT                        R3 K1 [require]
       64 GETIMPORT                        R4 K3 [script]
       66 GETTABLEKS                       R4 R4 K11 ["shallowEqual"]
       68 CALL                             R3 1 1
       69 SETTABLEKS                       R3 R2 K11 ["shallowEqual"]
       71 GETIMPORT                        R3 K1 [require]
       73 GETIMPORT                        R4 K3 [script]
       75 GETTABLEKS                       R4 R4 K12 ["tableDifference"]
       77 CALL                             R3 1 1
       78 SETTABLEKS                       R3 R2 K12 ["tableDifference"]
       80 GETIMPORT                        R3 K1 [require]
       82 GETIMPORT                        R4 K3 [script]
       84 GETTABLEKS                       R4 R4 K13 ["toString"]
       86 CALL                             R3 1 1
       87 SETTABLEKS                       R3 R2 K13 ["toString"]
       89 CALL                             R1 1 -1
       90 RETURN                           R1 -1
