MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETTABLEKS                       R2 R1 K4 ["object"]
        9 DUPTABLE                         R3 K9 [{"userIds", "placeId", "gameId", "accessCode"}]
       10 GETTABLEKS                       R4 R1 K10 ["arrayOf"]
       12 GETTABLEKS                       R5 R1 K11 ["Integer"]
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R4 R3 K5 ["userIds"]
       17 GETTABLEKS                       R4 R1 K11 ["Integer"]
       19 SETTABLEKS                       R4 R3 K6 ["placeId"]
       21 GETTABLEKS                       R4 R1 K12 ["constrain"]
       23 GETTABLEKS                       R5 R1 K13 ["String"]
       25 DUPTABLE                         R6 K16 [{["format"] = "uuid"}]
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K7 ["gameId"]
       29 GETTABLEKS                       R4 R1 K13 ["String"]
       31 SETTABLEKS                       R4 R3 K8 ["accessCode"]
       33 CALL                             R2 1 -1
       34 RETURN                           R2 -1
