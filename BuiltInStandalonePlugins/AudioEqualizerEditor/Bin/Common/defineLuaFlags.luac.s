PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableAudioEqualizerEditor"]
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
  LOADK R2 K2 ["Path2DControlPointAtomicClass4"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+6]
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["Path2DEnabled15"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  RETURN R0 1

PROTO_4:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Path2DMaxControlPointLimit"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableAudioEqualizerEditor"]
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
  LOADK R2 K7 ["Path2DControlPointAtomicClass4"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K8 ["Path2DEnabled15"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K9 ["Path2DMaxControlPointLimit"]
  LOADN R3 50
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  DUPTABLE R0 K15 [{"getFFlagEnableAudioEqualizerEditor", "getFIntAudioEqualizerEditorAnalyzerResolution", "getFFlagLoadAudioEqualizerEditorInAssetDM", "getFFlagPath2DEnabled", "getFIntPath2DMaxControlPointLimit"}]
  DUPCLOSURE R1 K16 [PROTO_0]
  SETTABLEKS R1 R0 K10 ["getFFlagEnableAudioEqualizerEditor"]
  DUPCLOSURE R1 K17 [PROTO_1]
  SETTABLEKS R1 R0 K11 ["getFIntAudioEqualizerEditorAnalyzerResolution"]
  DUPCLOSURE R1 K18 [PROTO_2]
  SETTABLEKS R1 R0 K12 ["getFFlagLoadAudioEqualizerEditorInAssetDM"]
  DUPCLOSURE R1 K19 [PROTO_3]
  SETTABLEKS R1 R0 K13 ["getFFlagPath2DEnabled"]
  DUPCLOSURE R1 K20 [PROTO_4]
  SETTABLEKS R1 R0 K14 ["getFIntPath2DMaxControlPointLimit"]
  RETURN R0 1
