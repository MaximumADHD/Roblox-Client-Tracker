MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETTABLEKS                       R2 R1 K4 ["object"]
        9 DUPTABLE                         R3 K10 [{"startTime", "durationSeconds", "displayReason", "displayReasonTextFilterStatus", "isInherited"}]
       10 GETTABLEKS                       R4 R1 K11 ["constrain"]
       12 GETTABLEKS                       R5 R1 K12 ["String"]
       14 DUPTABLE                         R6 K15 [{["format"] = "date-time"}]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K5 ["startTime"]
       18 GETTABLEKS                       R4 R1 K16 ["Integer"]
       20 SETTABLEKS                       R4 R3 K6 ["durationSeconds"]
       22 GETTABLEKS                       R4 R1 K12 ["String"]
       24 SETTABLEKS                       R4 R3 K7 ["displayReason"]
       26 GETTABLEKS                       R4 R1 K17 ["Int32"]
       28 SETTABLEKS                       R4 R3 K8 ["displayReasonTextFilterStatus"]
       30 GETTABLEKS                       R4 R1 K18 ["Boolean"]
       32 SETTABLEKS                       R4 R3 K9 ["isInherited"]
       34 CALL                             R2 1 -1
       35 RETURN                           R2 -1
