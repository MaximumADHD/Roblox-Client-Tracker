PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K5 [os.clock]
        6 CALL                             R0 0 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K6 ["guestRpcInterface"]
       10 GETTABLEKS                       R1 R2 K7 ["getClockAsync"]
       12 CALL                             R1 0 1
       13 GETIMPORT                        R2 K5 [os.clock]
       15 CALL                             R2 0 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K8 ["analyticsInterface"]
       19 GETTABLEKS                       R3 R4 K9 ["logStat"]
       21 DUPTABLE                         R4 K15 [{"eventName", "backends", "throttlingPercentage", "description", "lastUpdated"}]
       22 LOADK                            R5 K16 ["LuaExplorerHeartbeatTimeToReachGuest"]
       23 SETTABLEKS                       R5 R4 K10 ["eventName"]
       25 NEWTABLE                         R5 0 1
       27 LOADK                            R6 K17 ["RobloxTelemetryStat"]
       28 SETLIST                          R5 R6 1 [1]
       30 SETTABLEKS                       R5 R4 K11 ["backends"]
       32 GETIMPORT                        R5 K19 [game]
       34 LOADK                            R7 K20 ["LuaExplorerHeartbeatTimeToReachGuestThrottlingHundredthsPercent"]
       35 LOADN                            R8 16
       36 NAMECALL                         R5 R5 K21 ["DefineFastInt"]
       38 CALL                             R5 3 1
       39 SETTABLEKS                       R5 R4 K12 ["throttlingPercentage"]
       41 LOADK                            R5 K22 ["Time it takes for the heartbeat request to reach the guest."]
       42 SETTABLEKS                       R5 R4 K13 ["description"]
       44 LOADK                            R5 K23 ["2024-12-05"]
       45 SETTABLEKS                       R5 R4 K14 ["lastUpdated"]
       47 NEWTABLE                         R5 0 0
       49 SUB                              R6 R1 R0
       50 CALL                             R3 3 0
       51 GETUPVAL                         R5 1
       52 GETTABLEKS                       R4 R5 K8 ["analyticsInterface"]
       54 GETTABLEKS                       R3 R4 K9 ["logStat"]
       56 DUPTABLE                         R4 K15 [{"eventName", "backends", "throttlingPercentage", "description", "lastUpdated"}]
       57 LOADK                            R5 K24 ["LuaExplorerHeartbeatTimeToReachHost"]
       58 SETTABLEKS                       R5 R4 K10 ["eventName"]
       60 NEWTABLE                         R5 0 1
       62 LOADK                            R6 K17 ["RobloxTelemetryStat"]
       63 SETLIST                          R5 R6 1 [1]
       65 SETTABLEKS                       R5 R4 K11 ["backends"]
       67 GETIMPORT                        R5 K19 [game]
       69 LOADK                            R7 K25 ["LuaExplorerHeartbeatTimeToReachHostThrottlingHundredthsPercent"]
       70 LOADN                            R8 16
       71 NAMECALL                         R5 R5 K21 ["DefineFastInt"]
       73 CALL                             R5 3 1
       74 SETTABLEKS                       R5 R4 K12 ["throttlingPercentage"]
       76 LOADK                            R5 K26 ["Time it takes for the heartbeat response to reach the host."]
       77 SETTABLEKS                       R5 R4 K13 ["description"]
       79 LOADK                            R5 K23 ["2024-12-05"]
       80 SETTABLEKS                       R5 R4 K14 ["lastUpdated"]
       82 NEWTABLE                         R5 0 0
       84 SUB                              R6 R2 R1
       85 CALL                             R3 3 0
       86 JUMPBACK                         ; [-87]
       87 RETURN                           R0 0

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
        9 GETTABLEKS                       R4 R0 K6 ["Networking"]
       11 GETTABLEKS                       R3 R4 K7 ["createSession"]
       13 GETTABLEKS                       R2 R3 K8 ["createSessionTypes"]
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
