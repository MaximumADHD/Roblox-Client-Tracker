PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LoadAttenuationCurveEditorInAssetDM"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AudioEmitterDistanceAttenuationMaxPoints"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableDistanceAttenuationPresets"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AttenuationCurveEditorLargeXFix"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LoadAttenuationCurveEditorInAssetDM"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["AudioEmitterDistanceAttenuationMaxPoints"]
  LOADN R3 144
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["ImprovedCursors"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K7 ["EnableDistanceAttenuationPresets"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K8 ["AttenuationCurveEditorLargeXFix"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPTABLE R0 K13 [{"getFFlagLoadAttenuationCurveEditorInAssetDM", "getFIntDistanceAttenuationMaxPoints", "getFFlagEnableDistanceAttenuationPresets", "getFFlagAttenuationCurveEditorLargeXFix"}]
  DUPCLOSURE R1 K14 [PROTO_0]
  SETTABLEKS R1 R0 K9 ["getFFlagLoadAttenuationCurveEditorInAssetDM"]
  DUPCLOSURE R1 K15 [PROTO_1]
  SETTABLEKS R1 R0 K10 ["getFIntDistanceAttenuationMaxPoints"]
  DUPCLOSURE R1 K16 [PROTO_2]
  SETTABLEKS R1 R0 K11 ["getFFlagEnableDistanceAttenuationPresets"]
  DUPCLOSURE R1 K17 [PROTO_3]
  SETTABLEKS R1 R0 K12 ["getFFlagAttenuationCurveEditorLargeXFix"]
  RETURN R0 1
