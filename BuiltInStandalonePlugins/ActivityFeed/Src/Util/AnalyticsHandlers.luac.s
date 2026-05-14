PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        8 GETTABLEKS                       R1 R1 K1 ["join"]
       10 DUPTABLE                         R2 K4 [{"studioSid", "clientId"}]
       11 GETUPVAL                         R3 1
       12 NAMECALL                         R3 R3 K5 ["GetSessionId"]
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K2 ["studioSid"]
       17 GETUPVAL                         R3 1
       18 NAMECALL                         R3 R3 K6 ["GetClientId"]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K3 ["clientId"]
       23 MOVE                             R3 R0
       24 CALL                             R1 2 1
       25 GETUPVAL                         R2 1
       26 LOADK                            R4 K7 ["studio"]
       27 LOADK                            R5 K8 ["ActivityHistory"]
       28 LOADK                            R6 K9 ["ActivityHistoryAction"]
       29 MOVE                             R7 R1
       30 NAMECALL                         R2 R2 K10 ["SendEventDeferred"]
       32 CALL                             R2 5 0
       33 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 DUPTABLE                         R5 K4 [{"analyticsEventType", "bubblesSeenOnSessionEndCount", "placeId", "universeId"}]
        2 LOADK                            R6 K5 ["bubblesSeenOnSessionEnd"]
        3 SETTABLEKS                       R6 R5 K0 ["analyticsEventType"]
        5 SETTABLEKS                       R1 R5 K1 ["bubblesSeenOnSessionEndCount"]
        7 SETTABLEKS                       R2 R5 K2 ["placeId"]
        9 SETTABLEKS                       R3 R5 K3 ["universeId"]
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R5 0
        1 DUPTABLE                         R6 K5 [{"analyticsEventType", "eventtype", "deeplinktype", "placeId", "universeId"}]
        2 LOADK                            R7 K6 ["deeplink"]
        3 SETTABLEKS                       R7 R6 K0 ["analyticsEventType"]
        5 SETTABLEKS                       R1 R6 K1 ["eventtype"]
        7 SETTABLEKS                       R2 R6 K2 ["deeplinktype"]
        9 SETTABLEKS                       R3 R6 K3 ["placeId"]
       11 SETTABLEKS                       R4 R6 K4 ["universeId"]
       13 CALL                             R5 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R9 0
        1 DUPTABLE                         R10 K9 [{"analyticsEventType", "filterUsersNumSelected", "filterUsersNumOptions", "filterEventCategoriesNumSelected", "filterEventCategoriesNumOptions", "filterEventCategoriesSelected", "filterJumpToDaysAgo", "placeId", "universeId"}]
        2 LOADK                            R11 K10 ["applyFilters"]
        3 SETTABLEKS                       R11 R10 K0 ["analyticsEventType"]
        5 SETTABLEKS                       R1 R10 K1 ["filterUsersNumSelected"]
        7 SETTABLEKS                       R2 R10 K2 ["filterUsersNumOptions"]
        9 SETTABLEKS                       R3 R10 K3 ["filterEventCategoriesNumSelected"]
       11 SETTABLEKS                       R4 R10 K4 ["filterEventCategoriesNumOptions"]
       13 SETTABLEKS                       R5 R10 K5 ["filterEventCategoriesSelected"]
       15 SETTABLEKS                       R6 R10 K6 ["filterJumpToDaysAgo"]
       17 SETTABLEKS                       R7 R10 K7 ["placeId"]
       19 SETTABLEKS                       R8 R10 K8 ["universeId"]
       21 CALL                             R9 1 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K3 [{"analyticsEventType", "placeId", "universeId"}]
        2 LOADK                            R5 K4 ["clearFilters"]
        3 SETTABLEKS                       R5 R4 K0 ["analyticsEventType"]
        5 SETTABLEKS                       R1 R4 K1 ["placeId"]
        7 SETTABLEKS                       R2 R4 K2 ["universeId"]
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 DUPTABLE                         R2 K4 [{"bubblesSeenOnSessionEnd", "deeplink", "applyFilters", "clearFilters"}]
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R3 R2 K0 ["bubblesSeenOnSessionEnd"]
        8 NEWCLOSURE                       R3 P2
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R3 R2 K1 ["deeplink"]
       12 NEWCLOSURE                       R3 P3
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R3 R2 K2 ["applyFilters"]
       16 NEWCLOSURE                       R3 P4
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R3 R2 K3 ["clearFilters"]
       20 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_5]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
