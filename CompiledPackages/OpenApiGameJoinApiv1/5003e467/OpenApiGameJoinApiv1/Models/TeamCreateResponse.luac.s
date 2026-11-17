MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETIMPORT                        R2 K1 [require]
        9 LOADK                            R3 K4 ["./JoinTicket"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R1 K5 ["object"]
       13 DUPTABLE                         R4 K10 [{"status", "message", "settings", "joinTicket"}]
       14 GETTABLEKS                       R5 R1 K11 ["Int32"]
       16 SETTABLEKS                       R5 R4 K6 ["status"]
       18 GETTABLEKS                       R5 R1 K12 ["String"]
       20 SETTABLEKS                       R5 R4 K7 ["message"]
       22 GETTABLEKS                       R5 R1 K13 ["Any"]
       24 SETTABLEKS                       R5 R4 K8 ["settings"]
       26 SETTABLEKS                       R2 R4 K9 ["joinTicket"]
       28 CALL                             R3 1 -1
       29 RETURN                           R3 -1
