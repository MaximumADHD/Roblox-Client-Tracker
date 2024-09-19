PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableAudioListenerDistanceAttenuationLua"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LoadAttenuationCurveEditorInAssetDM"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AudioPluginFontFixAt"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AttenuationCurveEditorFixes"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AttenuationCurveEditorEnableGhosting"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AttenuationCurveEditorImproveScrolling"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_6:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AudioEmitterDistanceAttenuationMaxPoints"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_7:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Path2DMaxControlPointLimit"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableAudioListenerDistanceAttenuationLua"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["LoadAttenuationCurveEditorInAssetDM"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["AudioEmitterDistanceAttenuationMaxPoints"]
  LOADN R3 144
  NAMECALL R0 R0 K6 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K7 ["Path2DMaxControlPointLimit"]
  LOADN R3 50
  NAMECALL R0 R0 K6 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K8 ["AudioPluginFontFixAt"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K9 ["ImprovedCursors"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K10 ["AttenuationCurveEditorFixes"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K11 ["AttenuationCurveEditorEnableGhosting"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K12 ["AttenuationCurveEditorImproveScrolling"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPTABLE R0 K21 [{"getFFlagEnableAudioListenerDistanceAttenuation", "getFFlagLoadAttenuationCurveEditorInAssetDM", "getFFlagAudioPluginFontFixAt", "getFFlagAttenuationCurveEditorFixes", "getFFlagAttenuationCurveEditorEnableGhosting", "getFFlagAttenuationCurveEditorImproveScrolling", "getFIntDistanceAttenuationMaxPoints", "getFIntPath2DMaxControlPointLimit"}]
  DUPCLOSURE R1 K22 [PROTO_0]
  SETTABLEKS R1 R0 K13 ["getFFlagEnableAudioListenerDistanceAttenuation"]
  DUPCLOSURE R1 K23 [PROTO_1]
  SETTABLEKS R1 R0 K14 ["getFFlagLoadAttenuationCurveEditorInAssetDM"]
  DUPCLOSURE R1 K24 [PROTO_2]
  SETTABLEKS R1 R0 K15 ["getFFlagAudioPluginFontFixAt"]
  DUPCLOSURE R1 K25 [PROTO_3]
  SETTABLEKS R1 R0 K16 ["getFFlagAttenuationCurveEditorFixes"]
  DUPCLOSURE R1 K26 [PROTO_4]
  SETTABLEKS R1 R0 K17 ["getFFlagAttenuationCurveEditorEnableGhosting"]
  DUPCLOSURE R1 K27 [PROTO_5]
  SETTABLEKS R1 R0 K18 ["getFFlagAttenuationCurveEditorImproveScrolling"]
  DUPCLOSURE R1 K28 [PROTO_6]
  SETTABLEKS R1 R0 K19 ["getFIntDistanceAttenuationMaxPoints"]
  DUPCLOSURE R1 K29 [PROTO_7]
  SETTABLEKS R1 R0 K20 ["getFIntPath2DMaxControlPointLimit"]
  RETURN R0 1
