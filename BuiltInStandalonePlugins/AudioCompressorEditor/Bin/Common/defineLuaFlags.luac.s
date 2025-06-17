PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LoadAudioCompressorEditorInAssetDM"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AudioCompressorEditorFontFix"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LoadAudioCompressorEditorInAssetDM"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["ImprovedCursors"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["AudioCompressorEditorFontFix"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPTABLE R0 K8 [{"getFFlagLoadInAssetDM", "getFFlagAudioCompressorEditorFontFix"}]
  DUPCLOSURE R1 K9 [PROTO_0]
  SETTABLEKS R1 R0 K6 ["getFFlagLoadInAssetDM"]
  DUPCLOSURE R1 K10 [PROTO_1]
  SETTABLEKS R1 R0 K7 ["getFFlagAudioCompressorEditorFontFix"]
  RETURN R0 1
