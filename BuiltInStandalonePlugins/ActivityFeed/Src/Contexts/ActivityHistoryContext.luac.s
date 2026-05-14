PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 LOADN                            R0 0
        1 LOADN                            R1 0
        2 RETURN                           R0 2

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Clients"]
       22 GETTABLEKS                       R3 R3 K9 ["MockActivityHistoryClient"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["SharedTypes"]
       33 CALL                             R3 1 1
       34 NEWTABLE                         R4 0 0
       36 DUPTABLE                         R5 K21 [{"activityHistoryClient", "showSaveOrPublishPlaceToRobloxFn", "getActivityHistoryManager", "useCollaborators", "usePlaceAndUniverseId", "useConnectToDataModelSessionEffect", "DEPRECATED_openBrowserLink", "openLink", "contextType"}]
       37 SETTABLEKS                       R2 R5 K12 ["activityHistoryClient"]
       39 DUPCLOSURE                       R6 K22 [PROTO_0]
       40 SETTABLEKS                       R6 R5 K13 ["showSaveOrPublishPlaceToRobloxFn"]
       42 DUPCLOSURE                       R6 K23 [PROTO_1]
       43 SETTABLEKS                       R6 R5 K14 ["getActivityHistoryManager"]
       45 DUPCLOSURE                       R6 K24 [PROTO_2]
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R6 R5 K15 ["useCollaborators"]
       49 DUPCLOSURE                       R6 K25 [PROTO_3]
       50 SETTABLEKS                       R6 R5 K16 ["usePlaceAndUniverseId"]
       52 DUPCLOSURE                       R6 K26 [PROTO_4]
       53 SETTABLEKS                       R6 R5 K17 ["useConnectToDataModelSessionEffect"]
       55 DUPCLOSURE                       R6 K27 [PROTO_5]
       56 SETTABLEKS                       R6 R5 K18 ["DEPRECATED_openBrowserLink"]
       58 DUPCLOSURE                       R6 K28 [PROTO_6]
       59 SETTABLEKS                       R6 R5 K19 ["openLink"]
       61 LOADK                            R6 K29 ["mock context (default)"]
       62 SETTABLEKS                       R6 R5 K20 ["contextType"]
       64 GETTABLEKS                       R6 R1 K30 ["createContext"]
       66 MOVE                             R7 R5
       67 CALL                             R6 1 1
       68 RETURN                           R6 1
