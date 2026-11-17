PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["events"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["join"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R2
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K8 ["Src"]
       25 GETTABLEKS                       R3 R3 K9 ["Actions"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R3 K10 ["UpdateEvents"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R3 K11 ["ClearEvents"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R1 K12 ["createReducer"]
       39 NEWTABLE                         R7 0 0
       41 NEWTABLE                         R8 2 0
       43 GETTABLEKS                       R9 R4 K13 ["name"]
       45 DUPCLOSURE                       R10 K14 [PROTO_0]
       46 CAPTURE                          VAL R2
       47 SETTABLE                         R10 R8 R9
       48 GETTABLEKS                       R9 R5 K13 ["name"]
       50 DUPCLOSURE                       R10 K15 [PROTO_1]
       51 SETTABLE                         R10 R8 R9
       52 CALL                             R6 2 1
       53 RETURN                           R6 1
