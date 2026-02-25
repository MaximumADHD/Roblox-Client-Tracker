PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"isPublishing"}]
        7 GETTABLEKS                       R5 R1 K2 ["isPublishing"]
        9 SETTABLEKS                       R5 R4 K2 ["isPublishing"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"publishInfo"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["publishInfo"]
       14 GETTABLEKS                       R7 R1 K2 ["publishInfo"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["publishInfo"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"publishInfo", "isPublishing"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
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
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K10 [{"isPublishing", "publishInfo"}]
       24 LOADB                            R4 0
       25 SETTABLEKS                       R4 R3 K8 ["isPublishing"]
       27 DUPTABLE                         R4 K17 [{"id", "name", "parentGameName", "parentGameId", "settings", "message"}]
       28 LOADN                            R5 0
       29 SETTABLEKS                       R5 R4 K11 ["id"]
       31 LOADK                            R5 K18 [""]
       32 SETTABLEKS                       R5 R4 K12 ["name"]
       34 LOADK                            R5 K18 [""]
       35 SETTABLEKS                       R5 R4 K13 ["parentGameName"]
       37 LOADN                            R5 0
       38 SETTABLEKS                       R5 R4 K14 ["parentGameId"]
       40 NEWTABLE                         R5 0 0
       42 SETTABLEKS                       R5 R4 K15 ["settings"]
       44 LOADK                            R5 K18 [""]
       45 SETTABLEKS                       R5 R4 K16 ["message"]
       47 SETTABLEKS                       R4 R3 K9 ["publishInfo"]
       49 GETTABLEKS                       R4 R1 K19 ["createReducer"]
       51 MOVE                             R5 R3
       52 DUPTABLE                         R6 K23 [{"SetIsPublishing", "SetPublishInfo", "ResetInfo"}]
       53 DUPCLOSURE                       R7 K24 [PROTO_0]
       54 CAPTURE                          VAL R2
       55 SETTABLEKS                       R7 R6 K20 ["SetIsPublishing"]
       57 DUPCLOSURE                       R7 K25 [PROTO_1]
       58 CAPTURE                          VAL R2
       59 SETTABLEKS                       R7 R6 K21 ["SetPublishInfo"]
       61 DUPCLOSURE                       R7 K26 [PROTO_2]
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R7 R6 K22 ["ResetInfo"]
       65 CALL                             R4 2 -1
       66 RETURN                           R4 -1
