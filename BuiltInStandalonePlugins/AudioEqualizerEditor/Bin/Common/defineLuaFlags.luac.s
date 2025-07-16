PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AudioEqualizerEditorAnalyzerResolution"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LoadAudioEqualizerEditorInAssetDM"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AudioEqualizerEditorSupportsLowpass6dB"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AudioEqualizerEditorAnalyzerResolution"]
  LOADN R3 100
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["LoadAudioEqualizerEditorInAssetDM"]
  LOADB R3 0
  NAMECALL R0 R0 K5 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["AudioEqualizerEditorSupportsLowpass6dB"]
  LOADB R3 0
  NAMECALL R0 R0 K5 ["DefineFastFlag"]
  CALL R0 3 0
  DUPTABLE R0 K10 [{"getFIntAudioEqualizerEditorAnalyzerResolution", "getFFlagLoadAudioEqualizerEditorInAssetDM", "getFFlagAudioEqualizerEditorSupportsLowpass6dB"}]
  DUPCLOSURE R1 K11 [PROTO_0]
  SETTABLEKS R1 R0 K7 ["getFIntAudioEqualizerEditorAnalyzerResolution"]
  DUPCLOSURE R1 K12 [PROTO_1]
  SETTABLEKS R1 R0 K8 ["getFFlagLoadAudioEqualizerEditorInAssetDM"]
  DUPCLOSURE R1 K13 [PROTO_2]
  SETTABLEKS R1 R0 K9 ["getFFlagAudioEqualizerEditorSupportsLowpass6dB"]
  RETURN R0 1
