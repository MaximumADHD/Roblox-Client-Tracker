MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETIMPORT                        R2 K1 [require]
        9 LOADK                            R3 K4 ["./JoinInformation"]
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K1 [require]
       13 LOADK                            R4 K5 ["./JoinTicket"]
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K1 [require]
       17 LOADK                            R5 K6 ["./StatusData"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R1 K7 ["object"]
       21 DUPTABLE                         R6 K18 [{"jobId", "status", "statusData", "joinScriptUrl", "authenticationUrl", "authenticationTicket", "message", "joinScript", "joinTicket", "queuePosition"}]
       22 GETTABLEKS                       R7 R1 K19 ["String"]
       24 SETTABLEKS                       R7 R6 K8 ["jobId"]
       26 GETTABLEKS                       R7 R1 K20 ["Int32"]
       28 SETTABLEKS                       R7 R6 K9 ["status"]
       30 SETTABLEKS                       R4 R6 K10 ["statusData"]
       32 GETTABLEKS                       R7 R1 K19 ["String"]
       34 SETTABLEKS                       R7 R6 K11 ["joinScriptUrl"]
       36 GETTABLEKS                       R7 R1 K19 ["String"]
       38 SETTABLEKS                       R7 R6 K12 ["authenticationUrl"]
       40 GETTABLEKS                       R7 R1 K19 ["String"]
       42 SETTABLEKS                       R7 R6 K13 ["authenticationTicket"]
       44 GETTABLEKS                       R7 R1 K19 ["String"]
       46 SETTABLEKS                       R7 R6 K14 ["message"]
       48 SETTABLEKS                       R2 R6 K15 ["joinScript"]
       50 SETTABLEKS                       R3 R6 K16 ["joinTicket"]
       52 GETTABLEKS                       R7 R1 K20 ["Int32"]
       54 SETTABLEKS                       R7 R6 K17 ["queuePosition"]
       56 CALL                             R5 1 -1
       57 RETURN                           R5 -1
