PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K5 [os.clock]
        6 CALL                             R0 0 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K6 ["guestRpcInterface"]
       10 GETTABLEKS                       R1 R1 K7 ["getClockAsync"]
       12 CALL                             R1 0 1
       13 GETIMPORT                        R2 K5 [os.clock]
       15 CALL                             R2 0 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K8 ["analyticsInterface"]
       19 GETTABLEKS                       R3 R3 K9 ["logStat"]
       21 DUPTABLE                         R4 K18 [{["eventName"] = "LuaExplorerHeartbeatTimeToReachGuest", ["backends"], ["throttlingPercentage"], ["description"] = "Time it takes for the heartbeat request to reach the guest.", ["lastUpdated"] = "2024-12-05"}]
       22 NEWTABLE                         R5 0 1
       24 LOADK                            R6 K19 ["RobloxTelemetryStat"]
       25 SETLIST                          R5 R6 1 [1]
       27 SETTABLEKS                       R5 R4 K12 ["backends"]
       29 GETIMPORT                        R5 K21 [game]
       31 LOADK                            R7 K22 ["LuaExplorerHeartbeatTimeToReachGuestThrottlingHundredthsPercent"]
       32 LOADN                            R8 10000
       33 NAMECALL                         R5 R5 K23 ["DefineFastInt"]
       35 CALL                             R5 3 1
       36 SETTABLEKS                       R5 R4 K13 ["throttlingPercentage"]
       38 NEWTABLE                         R5 0 0
       40 SUB                              R6 R1 R0
       41 CALL                             R3 3 0
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R3 R3 K8 ["analyticsInterface"]
       45 GETTABLEKS                       R3 R3 K9 ["logStat"]
       47 DUPTABLE                         R4 K26 [{["eventName"] = "LuaExplorerHeartbeatTimeToReachHost", ["backends"], ["throttlingPercentage"], ["description"] = "Time it takes for the heartbeat response to reach the host.", ["lastUpdated"] = "2024-12-05"}]
       48 NEWTABLE                         R5 0 1
       50 LOADK                            R6 K19 ["RobloxTelemetryStat"]
       51 SETLIST                          R5 R6 1 [1]
       53 SETTABLEKS                       R5 R4 K12 ["backends"]
       55 GETIMPORT                        R5 K21 [game]
       57 LOADK                            R7 K27 ["LuaExplorerHeartbeatTimeToReachHostThrottlingHundredthsPercent"]
       58 LOADN                            R8 10000
       59 NAMECALL                         R5 R5 K23 ["DefineFastInt"]
       61 CALL                             R5 3 1
       62 SETTABLEKS                       R5 R4 K13 ["throttlingPercentage"]
       64 NEWTABLE                         R5 0 0
       66 SUB                              R6 R2 R1
       67 CALL                             R3 3 0
       68 JUMPBACK                         ; [-69]
       69 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+5]
        2 DUPTABLE                         R1 K1 [{"destroy"}]
        3 DUPCLOSURE                       R2 K2 [PROTO_0]
        4 SETTABLEKS                       R2 R1 K0 ["destroy"]
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K5 [task.spawn]
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CALL                             R1 1 1
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          VAL R1
       15 DUPTABLE                         R3 K1 [{"destroy"}]
       16 SETTABLEKS                       R2 R3 K0 ["destroy"]
       18 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Networking"]
       11 GETTABLEKS                       R2 R2 K7 ["createSession"]
       13 GETTABLEKS                       R2 R2 K8 ["createSessionTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K10 [game]
       18 LOADK                            R4 K11 ["ExplorerHeartbeatTelemetry"]
       19 LOADB                            R5 0
       20 NAMECALL                         R2 R2 K12 ["DefineFastFlag"]
       22 CALL                             R2 3 1
       23 GETIMPORT                        R3 K10 [game]
       25 LOADK                            R5 K13 ["ExplorerHeartbeatInterval"]
       26 LOADN                            R6 30
       27 NAMECALL                         R3 R3 K14 ["DefineFastInt"]
       29 CALL                             R3 3 1
       30 DUPCLOSURE                       R4 K15 [PROTO_3]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 RETURN                           R4 1
