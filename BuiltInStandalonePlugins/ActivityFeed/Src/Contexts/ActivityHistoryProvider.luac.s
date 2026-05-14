PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 LOADN                            R0 0
        1 LOADN                            R1 0
        2 RETURN                           R0 2

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R0 K9 [{"activityHistoryClient", "showSaveOrPublishPlaceToRobloxFn", "useCollaborators", "usePlaceAndUniverseId", "useConnectToDataModelSessionEffect", "DEPRECATED_openBrowserLink", "openLink", "contextType", "getActivityHistoryManager"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["activityHistoryClient"]
        4 SETTABLEKS                       R1 R0 K0 ["activityHistoryClient"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["showSaveOrPublishPlaceToRobloxFn"]
        9 JUMPIF                           R1 ; [+1]
       10 DUPCLOSURE                       R1 K10 [PROTO_0]
       11 SETTABLEKS                       R1 R0 K1 ["showSaveOrPublishPlaceToRobloxFn"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K2 ["useCollaborators"]
       16 JUMPIF                           R1 ; [+2]
       17 DUPCLOSURE                       R1 K11 [PROTO_1]
       18 CAPTURE                          UPVAL U1
       19 SETTABLEKS                       R1 R0 K2 ["useCollaborators"]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K3 ["usePlaceAndUniverseId"]
       24 JUMPIF                           R1 ; [+1]
       25 DUPCLOSURE                       R1 K12 [PROTO_2]
       26 SETTABLEKS                       R1 R0 K3 ["usePlaceAndUniverseId"]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K4 ["useConnectToDataModelSessionEffect"]
       31 JUMPIF                           R1 ; [+1]
       32 DUPCLOSURE                       R1 K13 [PROTO_3]
       33 SETTABLEKS                       R1 R0 K4 ["useConnectToDataModelSessionEffect"]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K5 ["DEPRECATED_openBrowserLink"]
       38 JUMPIF                           R1 ; [+1]
       39 DUPCLOSURE                       R1 K14 [PROTO_4]
       40 SETTABLEKS                       R1 R0 K5 ["DEPRECATED_openBrowserLink"]
       42 GETUPVAL                         R1 0
       43 GETTABLEKS                       R1 R1 K6 ["openLink"]
       45 JUMPIF                           R1 ; [+1]
       46 DUPCLOSURE                       R1 K15 [PROTO_5]
       47 SETTABLEKS                       R1 R0 K6 ["openLink"]
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K7 ["contextType"]
       52 SETTABLEKS                       R1 R0 K7 ["contextType"]
       54 GETUPVAL                         R1 0
       55 GETTABLEKS                       R1 R1 K8 ["getActivityHistoryManager"]
       57 JUMPIF                           R1 ; [+1]
       58 DUPCLOSURE                       R1 K16 [PROTO_6]
       59 SETTABLEKS                       R1 R0 K8 ["getActivityHistoryManager"]
       61 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 9
        8 GETTABLEKS                       R4 R0 K1 ["activityHistoryClient"]
       10 GETTABLEKS                       R5 R0 K2 ["showSaveOrPublishPlaceToRobloxFn"]
       12 GETTABLEKS                       R6 R0 K3 ["DEPRECATED_openBrowserLink"]
       14 GETTABLEKS                       R7 R0 K4 ["openLink"]
       16 GETTABLEKS                       R8 R0 K5 ["contextType"]
       18 GETTABLEKS                       R9 R0 K6 ["useCollaborators"]
       20 GETTABLEKS                       R10 R0 K7 ["usePlaceAndUniverseId"]
       22 GETTABLEKS                       R11 R0 K8 ["useConnectToDataModelSessionEffect"]
       24 GETTABLEKS                       R12 R0 K9 ["getActivityHistoryManager"]
       26 SETLIST                          R3 R4 9 [1]
       28 CALL                             R1 2 1
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K10 ["createElement"]
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R3 R3 K11 ["Provider"]
       35 DUPTABLE                         R4 K13 [{"value"}]
       36 SETTABLEKS                       R1 R4 K12 ["value"]
       38 GETTABLEKS                       R5 R0 K14 ["children"]
       40 CALL                             R2 3 -1
       41 RETURN                           R2 -1

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
       20 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K9 ["ActivityHistoryContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["SharedTypes"]
       33 CALL                             R3 1 1
       34 NEWTABLE                         R4 0 0
       36 DUPCLOSURE                       R5 K12 [PROTO_8]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 RETURN                           R5 1
