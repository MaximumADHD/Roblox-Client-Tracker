PROTO_0:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R4 K3 ["%s must be a string, did you write DeveloperTools:%s() instead of DeveloperTools.%s() by mistake?"]
  MOVE R6 R0
  LOADK R7 K4 ["forPlugin"]
  LOADK R8 K4 ["forPlugin"]
  NAMECALL R4 R4 K5 ["format"]
  CALL R4 4 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K7 [assert]
  CALL R2 -1 0
  FASTCALL2K ASSERT R1 K8 [+5]
  MOVE R3 R1
  LOADK R4 K8 ["DeveloperTools:forPlugin() expected plugin for argument #2"]
  GETIMPORT R2 K7 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K9 ["new"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["string"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  LOADK R5 K3 ["%s must be a string, did you write DeveloperTools:%s() instead of DeveloperTools.%s() by mistake?"]
  MOVE R7 R0
  LOADK R8 K4 ["forStandalonePlugin"]
  LOADK R9 K4 ["forStandalonePlugin"]
  NAMECALL R5 R5 K5 ["format"]
  CALL R5 4 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R3 K7 [assert]
  CALL R3 -1 0
  FASTCALL2K ASSERT R1 K8 [+5]
  MOVE R4 R1
  LOADK R5 K8 ["DeveloperTools:forStandalonePlugin() expected plugin for argument #2"]
  GETIMPORT R3 K7 [assert]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["new"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1

PROTO_2:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R4 K3 ["%s must be a string, did you write DeveloperTools:%s() instead of DeveloperTools.%s() by mistake?"]
  MOVE R6 R0
  LOADK R7 K4 ["appName"]
  LOADK R8 K4 ["appName"]
  NAMECALL R4 R4 K5 ["format"]
  CALL R4 4 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K7 [assert]
  CALL R2 -1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["new"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R4 K3 ["%s must be a string, did you write DeveloperTools:%s() instead of DeveloperTools.%s() by mistake?"]
  MOVE R6 R0
  LOADK R7 K4 ["libraryName"]
  LOADK R8 K4 ["libraryName"]
  NAMECALL R4 R4 K5 ["format"]
  CALL R4 4 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K7 [assert]
  CALL R2 -1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["new"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Classes"]
  GETTABLEKS R1 R2 K5 ["PluginDebugInterface"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Classes"]
  GETTABLEKS R2 R3 K6 ["CoreGuiDebugInterface"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Classes"]
  GETTABLEKS R3 R4 K7 ["StandalonePluginDebugInterface"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Classes"]
  GETTABLEKS R4 R5 K8 ["LibraryDebugInterface"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Classes"]
  GETTABLEKS R5 R6 K9 ["InspectorDebugInterface"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K10 ["RoactInspector"]
  GETTABLEKS R7 R8 K4 ["Classes"]
  GETTABLEKS R6 R7 K11 ["RoactInspectorApi"]
  CALL R5 1 1
  DUPTABLE R6 K17 [{"forPlugin", "forStandalonePlugin", "forCoreGui", "forLibrary", "forInspector", "RoactInspectorApi"}]
  DUPCLOSURE R7 K18 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K12 ["forPlugin"]
  DUPCLOSURE R7 K19 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K13 ["forStandalonePlugin"]
  DUPCLOSURE R7 K20 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K14 ["forCoreGui"]
  DUPCLOSURE R7 K21 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K15 ["forLibrary"]
  DUPCLOSURE R7 K22 [PROTO_4]
  CAPTURE VAL R4
  SETTABLEKS R7 R6 K16 ["forInspector"]
  SETTABLEKS R5 R6 K11 ["RoactInspectorApi"]
  RETURN R6 1
