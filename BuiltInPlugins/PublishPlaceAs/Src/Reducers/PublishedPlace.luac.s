PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"isPublishing"}]
        7 GETTABLEKS                       R5 R1 K2 ["isPublishing"]
        9 SETTABLEKS                       R5 R4 K2 ["isPublishing"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"publishInfo"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["publishInfo"]
       14 GETTABLEKS                       R7 R1 K2 ["publishInfo"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["publishInfo"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"publishInfo", "isPublishing"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["publishInfo"]
       14 GETTABLEKS                       R7 R1 K2 ["publishInfo"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["publishInfo"]
       19 GETTABLEKS                       R5 R1 K3 ["isPublishing"]
       21 SETTABLEKS                       R5 R4 K3 ["isPublishing"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

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
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K11 [{["isPublishing"] = False, ["publishInfo"]}]
       24 DUPTABLE                         R4 K20 [{["id"] = 0, ["name"] = "", ["parentGameName"] = "", ["parentGameId"] = 0, ["settings"], ["message"] = ""}]
       25 NEWTABLE                         R5 0 0
       27 SETTABLEKS                       R5 R4 K18 ["settings"]
       29 SETTABLEKS                       R4 R3 K10 ["publishInfo"]
       31 GETTABLEKS                       R4 R1 K21 ["createReducer"]
       33 MOVE                             R5 R3
       34 DUPTABLE                         R6 K25 [{"SetIsPublishing", "SetPublishInfo", "ResetInfo"}]
       35 DUPCLOSURE                       R7 K26 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R7 R6 K22 ["SetIsPublishing"]
       39 DUPCLOSURE                       R7 K27 [PROTO_1]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R7 R6 K23 ["SetPublishInfo"]
       43 DUPCLOSURE                       R7 K28 [PROTO_2]
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R7 R6 K24 ["ResetInfo"]
       47 CALL                             R4 2 -1
       48 RETURN                           R4 -1
