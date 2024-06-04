PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableAudioEqualizerEditor"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LoadAudioEqualizerEditorInAssetDM"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
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
  LOADK R2 K4 ["LoadAudioEqualizerEditorInAssetDM"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPTABLE R0 K7 [{"getFFlagEnableAudioEqualizerEditor", "getFFlagLoadAudioEqualizerEditorInAssetDM"}]
  DUPCLOSURE R1 K8 [PROTO_0]
  SETTABLEKS R1 R0 K5 ["getFFlagEnableAudioEqualizerEditor"]
  DUPCLOSURE R1 K9 [PROTO_1]
  SETTABLEKS R1 R0 K6 ["getFFlagLoadAudioEqualizerEditorInAssetDM"]
  RETURN R0 1
