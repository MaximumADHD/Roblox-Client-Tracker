PROTO_0:
        0 DUPTABLE                         R0 K1 [{"scaleBoundaries"}]
        1 DUPTABLE                         R1 K3 [{"boundaries"}]
        2 NEWTABLE                         R2 0 0
        4 SETTABLEKS                       R2 R1 K2 ["boundaries"]
        6 SETTABLEKS                       R1 R0 K0 ["scaleBoundaries"]
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"scaleBoundaries"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["scaleBoundaries"]
       14 DUPTABLE                         R7 K5 [{"boundaries"}]
       15 GETTABLEKS                       R8 R1 K6 ["rulesData"]
       17 GETTABLEKS                       R8 R8 K7 ["scales"]
       19 SETTABLEKS                       R8 R7 K4 ["boundaries"]
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K2 ["scaleBoundaries"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K8 [PROTO_0]
       26 GETTABLEKS                       R4 R2 K9 ["createReducer"]
       28 MOVE                             R5 R3
       29 CALL                             R5 0 1
       30 DUPTABLE                         R6 K12 [{"ResetStore", "SettingsSaveScaleBoundaries"}]
       31 DUPCLOSURE                       R7 K13 [PROTO_1]
       32 CAPTURE                          VAL R3
       33 SETTABLEKS                       R7 R6 K10 ["ResetStore"]
       35 DUPCLOSURE                       R7 K14 [PROTO_2]
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R7 R6 K11 ["SettingsSaveScaleBoundaries"]
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1
