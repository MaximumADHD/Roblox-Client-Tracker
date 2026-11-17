MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETIMPORT                        R2 K1 [require]
        9 LOADK                            R3 K4 ["./PopUdpProbeReport"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R1 K5 ["object"]
       13 DUPTABLE                         R4 K19 [{"gameJoinAttemptId", "placeId", "gamerTag", "isPlayTogetherGame", "browserTrackerId", "isTeleport", "teleportToken", "isQueueAllowedOverride", "isImmersiveAdsTeleport", "joinOrigin", "partyId", "popUdpProbeReport", "dataModelRecording"}]
       14 GETTABLEKS                       R5 R1 K20 ["constrain"]
       16 GETTABLEKS                       R6 R1 K21 ["String"]
       18 DUPTABLE                         R7 K24 [{["format"] = "uuid"}]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K6 ["gameJoinAttemptId"]
       22 GETTABLEKS                       R5 R1 K25 ["Integer"]
       24 SETTABLEKS                       R5 R4 K7 ["placeId"]
       26 GETTABLEKS                       R5 R1 K21 ["String"]
       28 SETTABLEKS                       R5 R4 K8 ["gamerTag"]
       30 GETTABLEKS                       R5 R1 K26 ["Boolean"]
       32 SETTABLEKS                       R5 R4 K9 ["isPlayTogetherGame"]
       34 GETTABLEKS                       R5 R1 K25 ["Integer"]
       36 SETTABLEKS                       R5 R4 K10 ["browserTrackerId"]
       38 GETTABLEKS                       R5 R1 K26 ["Boolean"]
       40 SETTABLEKS                       R5 R4 K11 ["isTeleport"]
       42 GETTABLEKS                       R5 R1 K21 ["String"]
       44 SETTABLEKS                       R5 R4 K12 ["teleportToken"]
       46 GETTABLEKS                       R5 R1 K26 ["Boolean"]
       48 SETTABLEKS                       R5 R4 K13 ["isQueueAllowedOverride"]
       50 GETTABLEKS                       R5 R1 K26 ["Boolean"]
       52 SETTABLEKS                       R5 R4 K14 ["isImmersiveAdsTeleport"]
       54 GETTABLEKS                       R5 R1 K21 ["String"]
       56 SETTABLEKS                       R5 R4 K15 ["joinOrigin"]
       58 GETTABLEKS                       R5 R1 K20 ["constrain"]
       60 GETTABLEKS                       R6 R1 K21 ["String"]
       62 DUPTABLE                         R7 K24 [{["format"] = "uuid"}]
       63 CALL                             R5 2 1
       64 SETTABLEKS                       R5 R4 K16 ["partyId"]
       66 SETTABLEKS                       R2 R4 K17 ["popUdpProbeReport"]
       68 GETTABLEKS                       R5 R1 K26 ["Boolean"]
       70 SETTABLEKS                       R5 R4 K18 ["dataModelRecording"]
       72 CALL                             R3 1 -1
       73 RETURN                           R3 -1
