PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getFFlagLoadAttenuationCurveEditorInAssetDM"]
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  LOADK R0 K1 ["Asset"]
  RETURN R0 1
  LOADK R0 K2 ["Standalone"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AttenuationCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 1
  DUPTABLE R2 K12 [{"asset", "standalone", "get"}]
  LOADK R3 K13 ["Asset"]
  SETTABLEKS R3 R2 K9 ["asset"]
  LOADK R3 K14 ["Standalone"]
  SETTABLEKS R3 R2 K10 ["standalone"]
  DUPCLOSURE R3 K15 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K11 ["get"]
  RETURN R2 1
