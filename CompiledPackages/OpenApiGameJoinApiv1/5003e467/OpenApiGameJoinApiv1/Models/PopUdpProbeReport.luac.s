MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETIMPORT                        R2 K1 [require]
        9 LOADK                            R3 K4 ["./PopUdpProbeSample"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R1 K5 ["object"]
       13 DUPTABLE                         R4 K10 [{"type", "version", "samples", "samplesV6"}]
       14 GETTABLEKS                       R5 R1 K11 ["String"]
       16 SETTABLEKS                       R5 R4 K6 ["type"]
       18 GETTABLEKS                       R5 R1 K12 ["Int32"]
       20 SETTABLEKS                       R5 R4 K7 ["version"]
       22 GETTABLEKS                       R5 R1 K13 ["arrayOf"]
       24 MOVE                             R6 R2
       25 CALL                             R5 1 1
       26 SETTABLEKS                       R5 R4 K8 ["samples"]
       28 GETTABLEKS                       R5 R1 K13 ["arrayOf"]
       30 MOVE                             R6 R2
       31 CALL                             R5 1 1
       32 SETTABLEKS                       R5 R4 K9 ["samplesV6"]
       34 CALL                             R3 1 -1
       35 RETURN                           R3 -1
