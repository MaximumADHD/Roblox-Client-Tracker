PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GetService"]
        3 LOADK                            R1 K1 ["TelemetryService"]
        4 CALL                             R0 1 1
        5 DUPTABLE                         R3 K7 [{["eventName"], ["backends"], ["lastUpdated"], ["description"] = "AssetInsertFramework latency"}]
        6 LOADK                            R4 K8 ["AssetInsertFramework_Stat_%*"]
        7 GETUPVAL                         R6 1
        8 NAMECALL                         R4 R4 K9 ["format"]
       10 CALL                             R4 2 1
       11 SETTABLEKS                       R4 R3 K2 ["eventName"]
       13 NEWTABLE                         R4 0 1
       15 GETIMPORT                        R5 K13 [Enum.TelemetryBackend.Stat]
       17 SETLIST                          R4 R5 1 [1]
       19 SETTABLEKS                       R4 R3 K3 ["backends"]
       21 NEWTABLE                         R4 0 3
       23 LOADN                            R5 2026
       24 LOADN                            R6 10
       25 LOADN                            R7 28
       26 SETLIST                          R4 R5 3 [1]
       28 SETTABLEKS                       R4 R3 K4 ["lastUpdated"]
       30 DUPTABLE                         R4 K15 [{"customFields"}]
       31 GETUPVAL                         R5 2
       32 SETTABLEKS                       R5 R4 K14 ["customFields"]
       34 GETUPVAL                         R5 3
       35 NAMECALL                         R1 R0 K16 ["LogStat"]
       37 CALL                             R1 4 0
       38 RETURN                           R0 0

PROTO_1:
        0 MULK                             R3 R1 K0 [1000]
        1 GETUPVAL                         R4 0
        2 LOADK                            R5 K1 ["Stat AssetInsertFramework_Stat_%*, durationMs: %*"]
        3 MOVE                             R7 R0
        4 MOVE                             R8 R3
        5 NAMECALL                         R5 R5 K2 ["format"]
        7 CALL                             R5 3 1
        8 CALL                             R4 1 0
        9 GETIMPORT                        R4 K4 [pcall]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R3
       16 CALL                             R4 1 2
       17 JUMPIF                           R4 ; [+8]
       18 GETUPVAL                         R6 0
       19 LOADK                            R7 K5 ["Failed to send Stat AssetInsertFramework_Stat_%*: %*"]
       20 MOVE                             R9 R0
       21 MOVE                             R10 R5
       22 NAMECALL                         R7 R7 K2 ["format"]
       24 CALL                             R7 3 1
       25 CALL                             R6 1 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetInsertFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Services"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Utils"]
       16 GETTABLEKS                       R3 R3 K8 ["logIfDebug"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_1]
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 RETURN                           R3 1
