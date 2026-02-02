PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["logEvent"]
  DUPTABLE R1 K6 [{"eventName", "backends", "throttlingPercentage", "description", "lastUpdated"}]
  LOADK R2 K7 ["LuaExplorerInitialSettings"]
  SETTABLEKS R2 R1 K1 ["eventName"]
  NEWTABLE R2 0 1
  LOADK R3 K8 ["EventIngest"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K2 ["backends"]
  GETIMPORT R2 K10 [game]
  LOADK R4 K11 ["LuaExplorerInitialSettingsTelemetryThrottlingHundredthsPercent"]
  LOADN R5 16
  NAMECALL R2 R2 K12 ["DefineFastInt"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K3 ["throttlingPercentage"]
  LOADK R2 K13 ["The settings at the time of launch"]
  SETTABLEKS R2 R1 K4 ["description"]
  LOADK R2 K14 ["2024-12-03"]
  SETTABLEKS R2 R1 K5 ["lastUpdated"]
  DUPTABLE R2 K17 [{"incrementNames", "expandHierarchy"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K18 ["getIncrementNamesAsync"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K15 ["incrementNames"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K19 ["getExpandHierarchy"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K16 ["expandHierarchy"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K2 [task.cancel]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K2 [task.spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R0 1 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useContext"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["AnalyticsContext"]
  CALL R0 1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["Context"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["useEffect"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWTABLE R4 0 2
  MOVE R5 R0
  MOVE R6 R1
  SETLIST R4 R5 2 [1]
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["Analytics"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K7 ["Parent"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["Contexts"]
  GETTABLEKS R4 R5 K11 ["SettingsContext"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R4 1
