PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableKnowledgeTutorials2"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugKnowledgeTutorials"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+9]
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["StudioService"]
  NAMECALL R0 R0 K5 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K6 ["HasInternalPermission"]
  CALL R0 1 1
  RETURN R0 1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["KnowledgeTutorialsFixSpotlightCleanup"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["KnowledgeTutorialsAvoidHanging"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["KnowledgeTutorialsAssetScanMaxMs"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableKnowledgeTutorials2"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["DebugKnowledgeTutorials"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["KnowledgeTutorialsFixSpotlightCleanup"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["KnowledgeTutorialsAvoidHanging"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K7 ["KnowledgeTutorialsAssetScanMaxMs"]
  LOADN R3 5
  NAMECALL R0 R0 K8 ["DefineFastInt"]
  CALL R0 3 0
  DUPTABLE R0 K14 [{"getFFlagEnableKnowledgeTutorials", "getFFlagDebugKnowledgeTutorials", "getFFlagKnowledgeTutorialsFixSpotlightCleanup", "getFFlagKnowledgeTutorialsAvoidHanging", "getFIntKnowledgeTutorialsAssetScanMaxMs"}]
  DUPCLOSURE R1 K15 [PROTO_0]
  SETTABLEKS R1 R0 K9 ["getFFlagEnableKnowledgeTutorials"]
  DUPCLOSURE R1 K16 [PROTO_1]
  SETTABLEKS R1 R0 K10 ["getFFlagDebugKnowledgeTutorials"]
  DUPCLOSURE R1 K17 [PROTO_2]
  SETTABLEKS R1 R0 K11 ["getFFlagKnowledgeTutorialsFixSpotlightCleanup"]
  DUPCLOSURE R1 K18 [PROTO_3]
  SETTABLEKS R1 R0 K12 ["getFFlagKnowledgeTutorialsAvoidHanging"]
  DUPCLOSURE R1 K19 [PROTO_4]
  SETTABLEKS R1 R0 K13 ["getFIntKnowledgeTutorialsAssetScanMaxMs"]
  RETURN R0 1
