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
  GETUPVAL R0 3
  JUMPIF R0 [+2]
  LOADB R0 0
  RETURN R0 1
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ManageCollaboratorsIxpLayer"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 1
  GETUPVAL R1 4
  MOVE R3 R0
  NAMECALL R1 R1 K4 ["GetCreatorStatusForLayer"]
  CALL R1 2 1
  GETIMPORT R2 K8 [Enum.IXPLoadingStatus.Initialized]
  JUMPIFNOTEQ R1 R2 [+14]
  GETUPVAL R2 4
  MOVE R4 R0
  NAMECALL R2 R2 K9 ["LogCreatorLayerExposure"]
  CALL R2 2 0
  GETUPVAL R2 4
  MOVE R4 R0
  NAMECALL R2 R2 K10 ["GetCreatorLayerVariables"]
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
  LOADK R3 K4 ["EnableCreatorLayerIxpMethodsFeature"]
  NAMECALL R1 R1 K5 ["GetEngineFeature"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K6 ["ManageCollaboratorsIxpEnabledFeature"]
  NAMECALL R2 R2 K5 ["GetEngineFeature"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K7 ["Collab8953_EnableLikelyCollaboratorPrefetchExperimentV2"]
  NAMECALL R3 R3 K3 ["GetFastFlag"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K8 ["IXPService"]
  NAMECALL R4 R4 K9 ["GetService"]
  CALL R4 2 1
  DUPCLOSURE R5 K10 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
