PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["fflagEnableStudioAnnotationsNotifications"]
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
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["fflagEnableStudioAnnotationsNotificationsExperiment"]
  JUMPIF R0 [+2]
  LOADB R0 0
  RETURN R0 1
  GETIMPORT R0 K3 [game]
  LOADK R2 K4 ["AnnotationsNotificationsIxpLayer"]
  NAMECALL R0 R0 K5 ["GetFastString"]
  CALL R0 2 1
  GETUPVAL R1 3
  MOVE R3 R0
  NAMECALL R1 R1 K6 ["GetCreatorStatusForLayer"]
  CALL R1 2 1
  GETIMPORT R2 K10 [Enum.IXPLoadingStatus.Initialized]
  JUMPIFNOTEQ R1 R2 [+14]
  GETUPVAL R2 3
  MOVE R4 R0
  NAMECALL R2 R2 K11 ["LogCreatorLayerExposure"]
  CALL R2 2 0
  GETUPVAL R2 3
  MOVE R4 R0
  NAMECALL R2 R2 K12 ["GetCreatorLayerVariables"]
  CALL R2 2 1
  GETTABLEKS R3 R2 K13 ["enabled"]
  RETURN R3 1
  LOADB R2 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 1
  GETIMPORT R2 K10 [game]
  LOADK R4 K11 ["EnableCreatorLayerIxpMethodsFeature"]
  NAMECALL R2 R2 K12 ["GetEngineFeature"]
  CALL R2 2 1
  GETIMPORT R3 K10 [game]
  LOADK R5 K13 ["AnnotationsNotificationsIxpEnabledFeature"]
  NAMECALL R3 R3 K12 ["GetEngineFeature"]
  CALL R3 2 1
  GETIMPORT R4 K10 [game]
  LOADK R6 K14 ["IXPService"]
  NAMECALL R4 R4 K15 ["GetService"]
  CALL R4 2 1
  DUPCLOSURE R5 K16 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
