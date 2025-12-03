PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnPropertyChanged"]
  JUMPIFNOT R2 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnPropertyChanged"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 0
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createPropertyHelpers"]
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R3 R0 K2 ["GraphPayload"]
  JUMPIFNOT R3 [+8]
  GETTABLEKS R5 R0 K2 ["GraphPayload"]
  GETTABLEKS R4 R5 K3 ["weight"]
  JUMPIFEQKN R4 K4 [0] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  DUPTABLE R4 K13 [{"Property_TimeProgress", "Property_AnimationId", "Property_Playmode", "Property_Reverse", "Property_Speed", "Property_StartOffset", "Property_EndOffset", "PlayingPreview"}]
  GETTABLEKS R5 R2 K14 ["nextPersistentProperty"]
  LOADK R6 K15 ["TimeProgress"]
  LOADK R7 K15 ["TimeProgress"]
  GETTABLEKS R9 R0 K16 ["StateLookup"]
  GETTABLEKS R8 R9 K15 ["TimeProgress"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K5 ["Property_TimeProgress"]
  GETTABLEKS R5 R2 K17 ["nextProperty"]
  LOADK R6 K18 ["AnimationId"]
  LOADK R7 K19 ["Animation"]
  GETTABLEKS R9 R0 K20 ["PropertyLookup"]
  GETTABLEKS R8 R9 K18 ["AnimationId"]
  LOADK R9 K21 [""]
  MOVE R10 R1
  CALL R5 5 1
  SETTABLEKS R5 R4 K6 ["Property_AnimationId"]
  GETTABLEKS R5 R2 K17 ["nextProperty"]
  LOADK R6 K22 ["PlayMode"]
  LOADK R7 K23 ["Enum.AnimationNodePlayMode"]
  GETTABLEKS R9 R0 K20 ["PropertyLookup"]
  GETTABLEKS R8 R9 K22 ["PlayMode"]
  GETIMPORT R9 K27 [Enum.AnimationNodePlayMode.Loop]
  CALL R5 4 1
  SETTABLEKS R5 R4 K7 ["Property_Playmode"]
  GETTABLEKS R5 R2 K17 ["nextProperty"]
  LOADK R6 K28 ["Reverse"]
  LOADK R7 K29 ["Boolean"]
  GETTABLEKS R9 R0 K20 ["PropertyLookup"]
  GETTABLEKS R8 R9 K28 ["Reverse"]
  LOADB R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K8 ["Property_Reverse"]
  GETTABLEKS R5 R2 K17 ["nextProperty"]
  LOADK R6 K30 ["Speed"]
  LOADK R7 K31 ["Number"]
  GETTABLEKS R9 R0 K20 ["PropertyLookup"]
  GETTABLEKS R8 R9 K30 ["Speed"]
  LOADN R9 1
  CALL R5 4 1
  SETTABLEKS R5 R4 K9 ["Property_Speed"]
  GETTABLEKS R5 R2 K17 ["nextProperty"]
  LOADK R6 K32 ["StartOffset"]
  LOADK R7 K31 ["Number"]
  GETTABLEKS R9 R0 K20 ["PropertyLookup"]
  GETTABLEKS R8 R9 K32 ["StartOffset"]
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K10 ["Property_StartOffset"]
  GETTABLEKS R5 R2 K17 ["nextProperty"]
  LOADK R6 K33 ["EndOffset"]
  LOADK R7 K31 ["Number"]
  GETTABLEKS R9 R0 K20 ["PropertyLookup"]
  GETTABLEKS R8 R9 K33 ["EndOffset"]
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["Property_EndOffset"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K34 ["PLAYING_PREVIEW_ENABLED"]
  JUMPIFNOT R6 [+18]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K35 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K38 [{"GraphPayload", "LayoutOrder", "disabled"}]
  GETTABLEKS R8 R0 K2 ["GraphPayload"]
  SETTABLEKS R8 R7 K2 ["GraphPayload"]
  GETTABLEKS R8 R2 K39 ["nextOrder"]
  CALL R8 0 1
  SETTABLEKS R8 R7 K36 ["LayoutOrder"]
  SETTABLEKS R3 R7 K37 ["disabled"]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K12 ["PlayingPreview"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K35 ["createElement"]
  GETUPVAL R6 4
  MOVE R7 R0
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K9 ["NodeView"]
  GETTABLEKS R4 R5 K10 ["CompositorNodes"]
  GETTABLEKS R3 R4 K11 ["CompositorNode"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K9 ["NodeView"]
  GETTABLEKS R4 R5 K12 ["CompositorNodePreview"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["Nodes"]
  GETTABLEKS R5 R6 K15 ["CompositorNodeUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K13 ["Util"]
  GETTABLEKS R6 R7 K16 ["Constants"]
  CALL R5 1 1
  DUPCLOSURE R6 K17 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R6 1
