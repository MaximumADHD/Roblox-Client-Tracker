PROTO_0:
        0 DUPTABLE                         R2 K2 [{"stepStateBundle", "watchRow"}]
        1 SETTABLEKS                       R0 R2 K0 ["stepStateBundle"]
        3 SETTABLEKS                       R1 R2 K1 ["watchRow"]
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Util"]
       20 GETTABLEKS                       R3 R2 K8 ["Action"]
       22 GETTABLEKS                       R4 R0 K9 ["Src"]
       24 GETTABLEKS                       R4 R4 K10 ["Models"]
       26 GETIMPORT                        R5 K4 [require]
       28 GETTABLEKS                       R6 R4 K11 ["Watch"]
       30 GETTABLEKS                       R6 R6 K12 ["WatchRow"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Src"]
       37 GETTABLEKS                       R7 R7 K10 ["Models"]
       39 GETTABLEKS                       R7 R7 K13 ["StepStateBundle"]
       41 CALL                             R6 1 1
       42 MOVE                             R7 R3
       43 GETIMPORT                        R8 K1 [script]
       45 GETTABLEKS                       R8 R8 K14 ["Name"]
       47 DUPCLOSURE                       R9 K15 [PROTO_0]
       48 CALL                             R7 2 -1
       49 RETURN                           R7 -1
