PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getFFlagLoadAudioEqualizerEditorInAssetDM"]
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  LOADK R0 K1 ["Asset"]
  RETURN R0 1
  LOADK R0 K2 ["Standalone"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AudioEqualizerEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 1
  DUPTABLE R2 K12 [{"Asset", "Standalone", "get"}]
  LOADK R3 K9 ["Asset"]
  SETTABLEKS R3 R2 K9 ["Asset"]
  LOADK R3 K10 ["Standalone"]
  SETTABLEKS R3 R2 K10 ["Standalone"]
  DUPCLOSURE R3 K13 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K11 ["get"]
  RETURN R2 1
