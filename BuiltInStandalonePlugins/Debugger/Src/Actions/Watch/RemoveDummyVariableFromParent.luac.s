PROTO_0:
        0 DUPTABLE                         R3 K3 [{"stepStateBundle", "parentPath", "isVariablesTab"}]
        1 SETTABLEKS                       R0 R3 K0 ["stepStateBundle"]
        3 SETTABLEKS                       R1 R3 K1 ["parentPath"]
        5 SETTABLEKS                       R2 R3 K2 ["isVariablesTab"]
        7 RETURN                           R3 1

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
       22 GETIMPORT                        R4 K4 [require]
       24 GETTABLEKS                       R5 R0 K9 ["Src"]
       26 GETTABLEKS                       R5 R5 K10 ["Models"]
       28 GETTABLEKS                       R5 R5 K11 ["StepStateBundle"]
       30 CALL                             R4 1 1
       31 MOVE                             R5 R3
       32 GETIMPORT                        R6 K1 [script]
       34 GETTABLEKS                       R6 R6 K12 ["Name"]
       36 DUPCLOSURE                       R7 K13 [PROTO_0]
       37 CALL                             R5 2 -1
       38 RETURN                           R5 -1
