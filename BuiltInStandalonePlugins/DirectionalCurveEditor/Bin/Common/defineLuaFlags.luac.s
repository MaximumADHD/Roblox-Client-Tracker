PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CLI_109818"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LoadDirectionalCurveEditorInAssetDM"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AudioEmitterDistanceAttenuationMaxPoints"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DirectionalAttenuationMaxPoints"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CLI_122163"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CLI_109818"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["LoadDirectionalCurveEditorInAssetDM"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["AudioEmitterDistanceAttenuationMaxPoints"]
  LOADN R3 144
  NAMECALL R0 R0 K6 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K7 ["DirectionalAttenuationMaxPoints"]
  LOADN R3 144
  NAMECALL R0 R0 K6 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K8 ["CLI_122163"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPTABLE R0 K14 [{"getFFlagCLI_109818", "getFFlagLoadDirectionalCurveEditorInAssetDM", "getFIntDistanceAttenuationMaxPoints", "getFIntDirectionalAttenuationMaxPoints", "getFFlagCLI_122163"}]
  DUPCLOSURE R1 K15 [PROTO_0]
  SETTABLEKS R1 R0 K9 ["getFFlagCLI_109818"]
  DUPCLOSURE R1 K16 [PROTO_1]
  SETTABLEKS R1 R0 K10 ["getFFlagLoadDirectionalCurveEditorInAssetDM"]
  DUPCLOSURE R1 K17 [PROTO_2]
  SETTABLEKS R1 R0 K11 ["getFIntDistanceAttenuationMaxPoints"]
  DUPCLOSURE R1 K18 [PROTO_3]
  SETTABLEKS R1 R0 K12 ["getFIntDirectionalAttenuationMaxPoints"]
  DUPCLOSURE R1 K19 [PROTO_4]
  SETTABLEKS R1 R0 K13 ["getFFlagCLI_122163"]
  RETURN R0 1
