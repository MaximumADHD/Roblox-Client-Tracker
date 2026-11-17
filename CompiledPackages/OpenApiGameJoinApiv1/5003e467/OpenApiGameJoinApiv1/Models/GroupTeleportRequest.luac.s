MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETIMPORT                        R2 K1 [require]
        9 LOADK                            R3 K4 ["./GroupTeleportMember"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R1 K5 ["object"]
       13 DUPTABLE                         R4 K10 [{"teleportId", "members", "placeId", "gameId"}]
       14 GETTABLEKS                       R5 R1 K11 ["constrain"]
       16 GETTABLEKS                       R6 R1 K12 ["String"]
       18 DUPTABLE                         R7 K15 [{["format"] = "uuid"}]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K6 ["teleportId"]
       22 GETTABLEKS                       R5 R1 K16 ["arrayOf"]
       24 MOVE                             R6 R2
       25 CALL                             R5 1 1
       26 SETTABLEKS                       R5 R4 K7 ["members"]
       28 GETTABLEKS                       R5 R1 K17 ["Integer"]
       30 SETTABLEKS                       R5 R4 K8 ["placeId"]
       32 GETTABLEKS                       R5 R1 K11 ["constrain"]
       34 GETTABLEKS                       R6 R1 K12 ["String"]
       36 DUPTABLE                         R7 K15 [{["format"] = "uuid"}]
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K9 ["gameId"]
       40 CALL                             R3 1 -1
       41 RETURN                           R3 -1
