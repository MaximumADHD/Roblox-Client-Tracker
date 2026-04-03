MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Shared"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETIMPORT                        R6 K1 [script]
       21 GETTABLEKS                       R5 R6 K2 ["Parent"]
       23 GETTABLEKS                       R4 R5 K7 ["ReactWorkTags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETIMPORT                        R7 K1 [script]
       30 GETTABLEKS                       R6 R7 K2 ["Parent"]
       32 GETTABLEKS                       R5 R6 K8 ["ReactTypeOfMode"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETIMPORT                        R8 K1 [script]
       39 GETTABLEKS                       R7 R8 K2 ["Parent"]
       41 GETTABLEKS                       R6 R7 K9 ["ReactFiberFlags"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETIMPORT                        R9 K1 [script]
       48 GETTABLEKS                       R8 R9 K2 ["Parent"]
       50 GETTABLEKS                       R7 R8 K10 ["ReactRootTags"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K4 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Shared"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K11 ["Scheduler"]
       62 CALL                             R8 1 1
       63 NEWTABLE                         R9 0 0
       65 RETURN                           R9 1
