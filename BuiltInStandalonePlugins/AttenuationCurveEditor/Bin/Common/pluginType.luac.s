PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LoadAttenuationCurveEditorInAssetDM"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+2]
  LOADK R0 K4 ["Asset"]
  RETURN R0 1
  LOADK R0 K5 ["Standalone"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"asset", "standalone", "get"}]
  LOADK R1 K4 ["Asset"]
  SETTABLEKS R1 R0 K0 ["asset"]
  LOADK R1 K5 ["Standalone"]
  SETTABLEKS R1 R0 K1 ["standalone"]
  DUPCLOSURE R1 K6 [PROTO_0]
  SETTABLEKS R1 R0 K2 ["get"]
  RETURN R0 1
