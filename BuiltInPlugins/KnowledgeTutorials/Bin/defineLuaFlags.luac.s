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
  LOADK R2 K2 ["KnowledgeTutorialsAvoidHanging"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
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
  LOADK R2 K5 ["KnowledgeTutorialsAvoidHanging"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["KnowledgeTutorialsAssetScanMaxMs"]
  LOADN R3 5
  NAMECALL R0 R0 K7 ["DefineFastInt"]
  CALL R0 3 0
  DUPTABLE R0 K12 [{"getFFlagEnableKnowledgeTutorials", "getFFlagDebugKnowledgeTutorials", "getFFlagKnowledgeTutorialsAvoidHanging", "getFIntKnowledgeTutorialsAssetScanMaxMs"}]
  DUPCLOSURE R1 K13 [PROTO_0]
  SETTABLEKS R1 R0 K8 ["getFFlagEnableKnowledgeTutorials"]
  DUPCLOSURE R1 K14 [PROTO_1]
  SETTABLEKS R1 R0 K9 ["getFFlagDebugKnowledgeTutorials"]
  DUPCLOSURE R1 K15 [PROTO_2]
  SETTABLEKS R1 R0 K10 ["getFFlagKnowledgeTutorialsAvoidHanging"]
  DUPCLOSURE R1 K16 [PROTO_3]
  SETTABLEKS R1 R0 K11 ["getFIntKnowledgeTutorialsAssetScanMaxMs"]
  RETURN R0 1
