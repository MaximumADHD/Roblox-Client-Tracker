PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableAudioEqualizerEditorLua"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AudioEqualizerEditorAnalyzerResolution"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LoadAudioEqualizerEditorInAssetDM"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Path2DMaxControlPointLimit"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AudioEqualizerEditorFixes"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AudioPluginFontFixEq"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableAudioEqualizerEditorLua"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["AudioEqualizerEditorAnalyzerResolution"]
  LOADN R3 100
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["LoadAudioEqualizerEditorInAssetDM"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K7 ["Path2DMaxControlPointLimit"]
  LOADN R3 50
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K8 ["AudioEqualizerEditorFixes"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K9 ["AudioPluginFontFixEq"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPTABLE R0 K16 [{"getFFlagEnableAudioEqualizerEditor", "getFIntAudioEqualizerEditorAnalyzerResolution", "getFFlagLoadAudioEqualizerEditorInAssetDM", "getFIntPath2DMaxControlPointLimit", "getFFlagAudioEqualizerEditorFixes", "getFFlagAudioPluginFontFixEq"}]
  DUPCLOSURE R1 K17 [PROTO_0]
  SETTABLEKS R1 R0 K10 ["getFFlagEnableAudioEqualizerEditor"]
  DUPCLOSURE R1 K18 [PROTO_1]
  SETTABLEKS R1 R0 K11 ["getFIntAudioEqualizerEditorAnalyzerResolution"]
  DUPCLOSURE R1 K19 [PROTO_2]
  SETTABLEKS R1 R0 K12 ["getFFlagLoadAudioEqualizerEditorInAssetDM"]
  DUPCLOSURE R1 K20 [PROTO_3]
  SETTABLEKS R1 R0 K13 ["getFIntPath2DMaxControlPointLimit"]
  DUPCLOSURE R1 K21 [PROTO_4]
  SETTABLEKS R1 R0 K14 ["getFFlagAudioEqualizerEditorFixes"]
  DUPCLOSURE R1 K22 [PROTO_5]
  SETTABLEKS R1 R0 K15 ["getFFlagAudioPluginFontFixEq"]
  RETURN R0 1
