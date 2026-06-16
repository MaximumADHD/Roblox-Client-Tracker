PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["Provider"]
        5 DUPTABLE                         R4 K2 [{"value"}]
        6 SETTABLEKS                       R1 R4 K1 ["value"]
        8 GETTABLEKS                       R5 R0 K3 ["children"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Analytics"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["AnalyticsContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K6 ["Parent"]
       29 GETTABLEKS                       R4 R4 K9 ["TelemetryServiceInterface"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R2 K10 ["createElement"]
       34 DUPCLOSURE                       R5 K11 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R1
       38 RETURN                           R5 1
