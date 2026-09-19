PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Analytics"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["AnalyticsTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["React"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K12 [{"logCounter", "logEvent", "logStat"}]
       24 DUPCLOSURE                       R4 K13 [PROTO_0]
       25 SETTABLEKS                       R4 R3 K9 ["logCounter"]
       27 DUPCLOSURE                       R4 K14 [PROTO_1]
       28 SETTABLEKS                       R4 R3 K10 ["logEvent"]
       30 DUPCLOSURE                       R4 K15 [PROTO_2]
       31 SETTABLEKS                       R4 R3 K11 ["logStat"]
       33 GETTABLEKS                       R4 R2 K16 ["createContext"]
       35 MOVE                             R5 R3
       36 CALL                             R4 1 1
       37 RETURN                           R4 1
