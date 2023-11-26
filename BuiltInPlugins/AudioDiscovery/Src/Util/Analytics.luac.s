PROTO_0:
  GETIMPORT R4 K2 [task.spawn]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["ReportInfluxSeries"]
  GETUPVAL R6 0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R4 5 0
  RETURN R0 0

PROTO_1:
  GETGLOBAL R1 K0 ["ReportedOpen"]
  JUMPIF R1 [+10]
  LOADB R1 1
  SETGLOBAL R1 K0 ["ReportedOpen"]
  LOADK R3 K1 ["StudioAudioDiscoveryOpen"]
  NEWTABLE R4 0 0
  GETUPVAL R5 0
  NAMECALL R1 R0 K2 ["_sendToKibana"]
  CALL R1 4 0
  RETURN R0 0

PROTO_2:
  GETGLOBAL R1 K0 ["ReportedSelect"]
  JUMPIF R1 [+10]
  LOADB R1 1
  SETGLOBAL R1 K0 ["ReportedSelect"]
  LOADK R3 K1 ["StudioAudioDiscoverySelect"]
  NEWTABLE R4 0 0
  GETUPVAL R5 0
  NAMECALL R1 R0 K2 ["_sendToKibana"]
  CALL R1 4 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R3 K2 [{"good", "bad"}]
  SETTABLEKS R1 R3 K0 ["good"]
  SETTABLEKS R2 R3 K1 ["bad"]
  LOADK R6 K3 ["StudioAudioDiscoveryBreakdown"]
  MOVE R7 R3
  GETUPVAL R8 0
  NAMECALL R4 R0 K4 ["_sendToKibana"]
  CALL R4 4 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R2 K3 [{"responseCode", "responseBody", "responseTimeMs"}]
  GETTABLEKS R3 R1 K0 ["responseCode"]
  SETTABLEKS R3 R2 K0 ["responseCode"]
  GETTABLEKS R3 R1 K1 ["responseBody"]
  SETTABLEKS R3 R2 K1 ["responseBody"]
  GETTABLEKS R3 R1 K2 ["responseTimeMs"]
  SETTABLEKS R3 R2 K2 ["responseTimeMs"]
  LOADK R5 K4 ["StudioAudioDiscoveryPermissionCheck"]
  MOVE R6 R2
  GETUPVAL R7 0
  NAMECALL R3 R0 K5 ["_sendToKibana"]
  CALL R3 4 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RbxAnalyticsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NEWTABLE R1 8 0
  GETIMPORT R2 K1 [game]
  LOADK R4 K4 ["StudioAudioDiscoveryOpenAnalyticThrottle"]
  NAMECALL R2 R2 K5 ["GetFastInt"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["StudioAudioDiscoverySelectAnalyticsThrottle"]
  NAMECALL R3 R3 K5 ["GetFastInt"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["StudioAudioDiscoveryBreakdownAnalyticsThrottle"]
  NAMECALL R4 R4 K5 ["GetFastInt"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K8 ["StudioAudioDiscoveryPermissionCheckAnalyticsThrottle"]
  NAMECALL R5 R5 K9 ["getFastInt"]
  CALL R5 2 1
  DUPCLOSURE R6 K10 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R6 R1 K11 ["_sendToKibana"]
  LOADB R6 0
  SETGLOBAL R6 K12 ["ReportedOpen"]
  DUPCLOSURE R6 K13 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R6 R1 K14 ["reportOpen"]
  LOADB R6 0
  SETGLOBAL R6 K15 ["ReportedSelect"]
  DUPCLOSURE R6 K16 [PROTO_2]
  CAPTURE VAL R3
  SETTABLEKS R6 R1 K17 ["reportSelect"]
  DUPCLOSURE R6 K18 [PROTO_3]
  CAPTURE VAL R4
  SETTABLEKS R6 R1 K19 ["reportBreakdown"]
  DUPCLOSURE R6 K20 [PROTO_4]
  CAPTURE VAL R5
  SETTABLEKS R6 R1 K21 ["reportPermissionCheck"]
  RETURN R1 1
