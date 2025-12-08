PROTO_0:
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K2 [task.wait]
  GETUPVAL R1 0
  CALL R0 1 0
  GETIMPORT R0 K5 [os.clock]
  CALL R0 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["guestRpcInterface"]
  GETTABLEKS R1 R2 K7 ["getClockAsync"]
  CALL R1 0 1
  GETIMPORT R2 K5 [os.clock]
  CALL R2 0 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["analyticsInterface"]
  GETTABLEKS R3 R4 K9 ["logStat"]
  DUPTABLE R4 K15 [{"eventName", "backends", "throttlingPercentage", "description", "lastUpdated"}]
  LOADK R5 K16 ["LuaExplorerHeartbeatTimeToReachGuest"]
  SETTABLEKS R5 R4 K10 ["eventName"]
  NEWTABLE R5 0 1
  LOADK R6 K17 ["RobloxTelemetryStat"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K11 ["backends"]
  GETIMPORT R5 K19 [game]
  LOADK R7 K20 ["LuaExplorerHeartbeatTimeToReachGuestThrottlingHundredthsPercent"]
  LOADN R8 16
  NAMECALL R5 R5 K21 ["DefineFastInt"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K12 ["throttlingPercentage"]
  LOADK R5 K22 ["Time it takes for the heartbeat request to reach the guest."]
  SETTABLEKS R5 R4 K13 ["description"]
  LOADK R5 K23 ["2024-12-05"]
  SETTABLEKS R5 R4 K14 ["lastUpdated"]
  NEWTABLE R5 0 0
  SUB R6 R1 R0
  CALL R3 3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["analyticsInterface"]
  GETTABLEKS R3 R4 K9 ["logStat"]
  DUPTABLE R4 K15 [{"eventName", "backends", "throttlingPercentage", "description", "lastUpdated"}]
  LOADK R5 K24 ["LuaExplorerHeartbeatTimeToReachHost"]
  SETTABLEKS R5 R4 K10 ["eventName"]
  NEWTABLE R5 0 1
  LOADK R6 K17 ["RobloxTelemetryStat"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K11 ["backends"]
  GETIMPORT R5 K19 [game]
  LOADK R7 K25 ["LuaExplorerHeartbeatTimeToReachHostThrottlingHundredthsPercent"]
  LOADN R8 16
  NAMECALL R5 R5 K21 ["DefineFastInt"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K12 ["throttlingPercentage"]
  LOADK R5 K26 ["Time it takes for the heartbeat response to reach the host."]
  SETTABLEKS R5 R4 K13 ["description"]
  LOADK R5 K23 ["2024-12-05"]
  SETTABLEKS R5 R4 K14 ["lastUpdated"]
  NEWTABLE R5 0 0
  SUB R6 R2 R1
  CALL R3 3 0
  JUMPBACK [-87]
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K2 [task.cancel]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  JUMPIF R1 [+5]
  DUPTABLE R1 K1 [{"destroy"}]
  DUPCLOSURE R2 K2 [PROTO_0]
  SETTABLEKS R2 R1 K0 ["destroy"]
  RETURN R1 1
  GETIMPORT R1 K5 [task.spawn]
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 1
  NEWCLOSURE R2 P2
  CAPTURE VAL R1
  DUPTABLE R3 K1 [{"destroy"}]
  SETTABLEKS R2 R3 K0 ["destroy"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Networking"]
  GETTABLEKS R3 R4 K7 ["createSession"]
  GETTABLEKS R2 R3 K8 ["createSessionTypes"]
  CALL R1 1 1
  GETIMPORT R2 K10 [game]
  LOADK R4 K11 ["ExplorerHeartbeatTelemetry"]
  LOADB R5 0
  NAMECALL R2 R2 K12 ["DefineFastFlag"]
  CALL R2 3 1
  GETIMPORT R3 K10 [game]
  LOADK R5 K13 ["ExplorerHeartbeatInterval"]
  LOADN R6 30
  NAMECALL R3 R3 K14 ["DefineFastInt"]
  CALL R3 3 1
  DUPCLOSURE R4 K15 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1
