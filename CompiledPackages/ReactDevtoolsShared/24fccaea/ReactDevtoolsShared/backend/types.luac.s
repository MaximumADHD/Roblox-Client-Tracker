MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Shared"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R0 K7 ["ReactReconciler"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K4 [require]
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K2 ["Parent"]
       32 GETTABLEKS                       R6 R6 K2 ["Parent"]
       34 GETTABLEKS                       R6 R6 K8 ["types"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K4 [require]
       39 GETIMPORT                        R7 K1 [script]
       41 GETTABLEKS                       R7 R7 K2 ["Parent"]
       43 GETTABLEKS                       R7 R7 K2 ["Parent"]
       45 GETTABLEKS                       R7 R7 K9 ["devtools"]
       47 GETTABLEKS                       R7 R7 K10 ["views"]
       49 GETTABLEKS                       R7 R7 K11 ["Profiler"]
       51 GETTABLEKS                       R7 R7 K8 ["types"]
       53 CALL                             R6 1 1
       54 LOADK                            R7 K12 ["full-data"]
       55 SETTABLEKS                       R7 R2 K13 ["InspectElementFullDataType"]
       57 LOADK                            R7 K14 ["no-change"]
       58 SETTABLEKS                       R7 R2 K15 ["InspectElementNoChangeType"]
       60 LOADK                            R7 K16 ["not-found"]
       61 SETTABLEKS                       R7 R2 K17 ["InspectElementNotFoundType"]
       63 LOADK                            R7 K18 ["hydrated-path"]
       64 SETTABLEKS                       R7 R2 K19 ["InspectElementHydratedPathType"]
       66 RETURN                           R2 1
