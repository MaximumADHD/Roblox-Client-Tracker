MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R5 K1 [script]
       16 GETTABLEKS                       R4 R5 K2 ["Parent"]
       18 GETTABLEKS                       R3 R4 K6 ["ReactWorkTags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R5 R6 K2 ["Parent"]
       27 GETTABLEKS                       R4 R5 K7 ["ReactTypeOfMode"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R6 R7 K2 ["Parent"]
       36 GETTABLEKS                       R5 R6 K8 ["ReactFiberFlags"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETIMPORT                        R8 K1 [script]
       43 GETTABLEKS                       R7 R8 K2 ["Parent"]
       45 GETTABLEKS                       R6 R7 K9 ["ReactRootTags"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K4 [require]
       50 GETTABLEKS                       R7 R0 K5 ["Shared"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K4 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Scheduler"]
       57 CALL                             R7 1 1
       58 NEWTABLE                         R8 0 0
       60 RETURN                           R8 1
