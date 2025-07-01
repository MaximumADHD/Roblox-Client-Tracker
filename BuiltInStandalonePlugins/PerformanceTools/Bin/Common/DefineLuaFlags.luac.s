PROTO_0:
  GETIMPORT R0 K1 [game]
  GETUPVAL R2 0
  NAMECALL R0 R0 K2 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 2
  JUMPIF R1 [+2]
  LOADB R3 0
  RETURN R3 1
  RETURN R2 1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RIDE11263EnableFeature"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R1 K1 [pcall]
  LOADK R3 K2 ["StudioAddPerformanceBridgeMicroprofilerInfo"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R3
  CALL R1 1 2
  JUMPIF R1 [+2]
  LOADB R0 0
  RETURN R0 1
  MOVE R0 R2
  RETURN R0 1

PROTO_4:
  GETIMPORT R1 K1 [pcall]
  LOADK R3 K2 ["StudioSceneMonitorGetAutomaticGraphicsQuality"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R3
  CALL R1 1 2
  JUMPIF R1 [+2]
  LOADB R0 0
  RETURN R0 1
  MOVE R0 R2
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RIDE11263EnableFeature"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["StudioAddPerformanceBridgeMicroprofilerInfo"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPCLOSURE R0 K5 [PROTO_1]
  DUPTABLE R1 K9 [{"GetFFlagRIDE11263EnableFeature", "GetStudioAddPerformanceBridgeMicroprofilerInfo", "GetStudioSceneMonitorGetAutomaticGraphicsQuality"}]
  DUPCLOSURE R2 K10 [PROTO_2]
  SETTABLEKS R2 R1 K6 ["GetFFlagRIDE11263EnableFeature"]
  DUPCLOSURE R2 K11 [PROTO_3]
  SETTABLEKS R2 R1 K7 ["GetStudioAddPerformanceBridgeMicroprofilerInfo"]
  DUPCLOSURE R2 K12 [PROTO_4]
  SETTABLEKS R2 R1 K8 ["GetStudioSceneMonitorGetAutomaticGraphicsQuality"]
  RETURN R1 1
