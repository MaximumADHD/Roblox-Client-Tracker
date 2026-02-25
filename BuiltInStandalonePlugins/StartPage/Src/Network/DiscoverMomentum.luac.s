PROTO_0:
        0 GETUPVAL                         R5 0
        1 MOVE                             R7 R3
        2 LENGTH                           R8 R0
        3 NAMECALL                         R5 R5 K0 ["setTargetCount"]
        5 CALL                             R5 3 0
        6 GETUPVAL                         R5 0
        7 MOVE                             R7 R3
        8 LOADN                            R8 0
        9 MOVE                             R9 R0
       10 NAMECALL                         R5 R5 K1 ["upsertItemsForList"]
       12 CALL                             R5 4 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K6 ["Src"]
       18 GETTABLEKS                       R5 R6 K8 ["Util"]
       20 GETTABLEKS                       R4 R5 K9 ["Telemetry"]
       22 GETTABLEKS                       R3 R4 K10 ["TelemetryContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K11 ["Network"]
       31 GETTABLEKS                       R4 R5 K12 ["GameCache"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K13 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
