MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R3 K4 [script]
        7 GETTABLEKS                       R2 R3 K2 ["get-queries-for-element"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K1 [require]
       12 GETIMPORT                        R4 K4 [script]
       14 GETTABLEKS                       R3 R4 K5 ["queries"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K1 [require]
       19 GETIMPORT                        R5 K4 [script]
       21 GETTABLEKS                       R4 R5 K6 ["query-helpers"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K1 [require]
       26 GETIMPORT                        R6 K4 [script]
       28 GETTABLEKS                       R5 R6 K7 ["screen"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K1 [require]
       33 GETIMPORT                        R7 K4 [script]
       35 GETTABLEKS                       R6 R7 K8 ["wait-for"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K1 [require]
       40 GETIMPORT                        R8 K4 [script]
       42 GETTABLEKS                       R7 R8 K9 ["wait-for-element-to-be-removed"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K1 [require]
       47 GETIMPORT                        R9 K4 [script]
       49 GETTABLEKS                       R8 R9 K10 ["matches"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K1 [require]
       54 GETIMPORT                        R10 K4 [script]
       56 GETTABLEKS                       R9 R10 K11 ["get-node-text"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K1 [require]
       61 GETIMPORT                        R11 K4 [script]
       63 GETTABLEKS                       R10 R11 K12 ["events"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K1 [require]
       68 GETIMPORT                        R12 K4 [script]
       70 GETTABLEKS                       R11 R12 K13 ["pretty-dom"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K1 [require]
       75 GETIMPORT                        R13 K4 [script]
       77 GETTABLEKS                       R12 R13 K14 ["config"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K1 [require]
       82 GETIMPORT                        R14 K4 [script]
       84 GETTABLEKS                       R13 R14 K15 ["suggestions"]
       86 CALL                             R12 1 1
       87 RETURN                           R0 1
