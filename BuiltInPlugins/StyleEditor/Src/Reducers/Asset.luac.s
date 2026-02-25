PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Fonts"}]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R6 R0 K0 ["Fonts"]
        6 GETTABLEKS                       R7 R1 K2 ["metadata"]
        8 CALL                             R5 2 1
        9 SETTABLEKS                       R5 R4 K0 ["Fonts"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["join"]
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R6 R0 K9 ["Src"]
       29 GETTABLEKS                       R5 R6 K10 ["Types"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K11 ["Actions"]
       36 GETTABLEKS                       R5 R6 K12 ["Asset"]
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R7 R5 K13 ["SaveFontMetadata"]
       42 CALL                             R6 1 1
       43 DUPTABLE                         R7 K15 [{"Fonts"}]
       44 NEWTABLE                         R8 0 0
       46 SETTABLEKS                       R8 R7 K14 ["Fonts"]
       48 GETTABLEKS                       R8 R1 K16 ["createReducer"]
       50 MOVE                             R9 R7
       51 NEWTABLE                         R10 1 0
       53 GETTABLEKS                       R11 R6 K17 ["name"]
       55 DUPCLOSURE                       R12 K18 [PROTO_0]
       56 CAPTURE                          VAL R3
       57 SETTABLE                         R12 R10 R11
       58 CALL                             R8 2 -1
       59 RETURN                           R8 -1
