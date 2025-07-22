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
  DUPTABLE R0 K7 [{"getFFlagEnableKnowledgeTutorials", "getFFlagDebugKnowledgeTutorials"}]
  DUPCLOSURE R1 K8 [PROTO_0]
  SETTABLEKS R1 R0 K5 ["getFFlagEnableKnowledgeTutorials"]
  DUPCLOSURE R1 K9 [PROTO_1]
  SETTABLEKS R1 R0 K6 ["getFFlagDebugKnowledgeTutorials"]
  RETURN R0 1
