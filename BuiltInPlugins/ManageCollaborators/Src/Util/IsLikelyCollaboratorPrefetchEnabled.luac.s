PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+2]
  LOADB R0 1
  RETURN R0 1
  GETUPVAL R0 1
  JUMPIF R0 [+2]
  LOADB R0 0
  RETURN R0 1
  GETUPVAL R0 2
  JUMPIF R0 [+2]
  LOADB R0 0
  RETURN R0 1
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ManageCollaboratorsIxpLayer"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 1
  GETUPVAL R1 3
  MOVE R3 R0
  NAMECALL R1 R1 K4 ["GetUserStatusForLayer"]
  CALL R1 2 1
  GETIMPORT R2 K8 [Enum.IXPLoadingStatus.Initialized]
  JUMPIFNOTEQ R1 R2 [+14]
  GETUPVAL R2 3
  MOVE R4 R0
  NAMECALL R2 R2 K9 ["LogUserLayerExposure"]
  CALL R2 2 0
  GETUPVAL R2 3
  MOVE R4 R0
  NAMECALL R2 R2 K10 ["GetUserLayerVariables"]
  CALL R2 2 1
  GETTABLEKS R3 R2 K11 ["enabled"]
  RETURN R3 1
  LOADB R2 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Collab8953_EnableLikelyCollaboratorPrefetch"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ManageCollaboratorsIxpEnabledFeature"]
  NAMECALL R1 R1 K5 ["GetEngineFeature"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K6 ["Collab8953_EnableLikelyCollaboratorPrefetchExperiment"]
  NAMECALL R2 R2 K3 ["GetFastFlag"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K7 ["IXPService"]
  NAMECALL R3 R3 K8 ["GetService"]
  CALL R3 2 1
  DUPCLOSURE R4 K9 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1
