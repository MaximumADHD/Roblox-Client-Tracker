PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 NEWTABLE                         R4 1 0
        8 GETTABLEKS                       R5 R1 K2 ["assetType"]
       10 GETTABLEKS                       R5 R5 K3 ["Name"]
       12 GETTABLEKS                       R6 R1 K4 ["configuration"]
       14 SETTABLE                         R6 R4 R5
       15 CALL                             R2 2 1
       16 MOVE                             R0 R2
       17 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K8 ["Src"]
       23 GETTABLEKS                       R4 R4 K9 ["Actions"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R4 K10 ["SetHomeConfiguration"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Src"]
       34 GETTABLEKS                       R7 R7 K11 ["Types"]
       36 GETTABLEKS                       R7 R7 K12 ["HomeTypes"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R3 K13 ["createReducer"]
       41 NEWTABLE                         R8 0 0
       43 NEWTABLE                         R9 1 0
       45 GETTABLEKS                       R10 R5 K14 ["name"]
       47 DUPCLOSURE                       R11 K15 [PROTO_0]
       48 CAPTURE                          VAL R2
       49 SETTABLE                         R11 R9 R10
       50 CALL                             R7 2 -1
       51 RETURN                           R7 -1
