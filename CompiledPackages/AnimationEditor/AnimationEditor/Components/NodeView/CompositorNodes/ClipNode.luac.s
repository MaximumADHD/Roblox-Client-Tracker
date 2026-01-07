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
  GETTABLEKS R5 R2 K14 ["nextProperty"]
  DUPTABLE R6 K19 [{"Name", "Type", "Value", "ShowWhenCollapsed"}]
  LOADK R7 K20 ["TimeProgress"]
  SETTABLEKS R7 R6 K15 ["Name"]
  LOADK R7 K20 ["TimeProgress"]
  SETTABLEKS R7 R6 K16 ["Type"]
  GETTABLEKS R8 R0 K21 ["StateLookup"]
  GETTABLEKS R7 R8 K20 ["TimeProgress"]
  SETTABLEKS R7 R6 K17 ["Value"]
  LOADB R7 1
  SETTABLEKS R7 R6 K18 ["ShowWhenCollapsed"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K5 ["Property_TimeProgress"]
  GETTABLEKS R5 R2 K14 ["nextProperty"]
  DUPTABLE R6 K24 [{"Name", "Type", "Value", "DefaultValue", "OnChanged"}]
  LOADK R7 K25 ["AnimationId"]
  SETTABLEKS R7 R6 K15 ["Name"]
  LOADK R7 K26 ["Animation"]
  SETTABLEKS R7 R6 K16 ["Type"]
  GETTABLEKS R8 R0 K27 ["PropertyLookup"]
  GETTABLEKS R7 R8 K25 ["AnimationId"]
  SETTABLEKS R7 R6 K17 ["Value"]
  LOADK R7 K28 [""]
  SETTABLEKS R7 R6 K22 ["DefaultValue"]
  SETTABLEKS R1 R6 K23 ["OnChanged"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K6 ["Property_AnimationId"]
  GETTABLEKS R5 R2 K14 ["nextProperty"]
  DUPTABLE R6 K29 [{"Name", "Type", "Value", "DefaultValue"}]
  LOADK R7 K30 ["PlayMode"]
  SETTABLEKS R7 R6 K15 ["Name"]
  LOADK R7 K31 ["Enum.AnimationNodePlayMode"]
  SETTABLEKS R7 R6 K16 ["Type"]
  GETTABLEKS R8 R0 K27 ["PropertyLookup"]
  GETTABLEKS R7 R8 K30 ["PlayMode"]
  SETTABLEKS R7 R6 K17 ["Value"]
  GETIMPORT R7 K35 [Enum.AnimationNodePlayMode.Loop]
  SETTABLEKS R7 R6 K22 ["DefaultValue"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K7 ["Property_Playmode"]
  GETTABLEKS R5 R2 K14 ["nextProperty"]
  DUPTABLE R6 K29 [{"Name", "Type", "Value", "DefaultValue"}]
  LOADK R7 K36 ["Reverse"]
  SETTABLEKS R7 R6 K15 ["Name"]
  LOADK R7 K37 ["Boolean"]
  SETTABLEKS R7 R6 K16 ["Type"]
  GETTABLEKS R8 R0 K27 ["PropertyLookup"]
  GETTABLEKS R7 R8 K36 ["Reverse"]
  SETTABLEKS R7 R6 K17 ["Value"]
  LOADB R7 0
  SETTABLEKS R7 R6 K22 ["DefaultValue"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K8 ["Property_Reverse"]
  GETTABLEKS R5 R2 K14 ["nextProperty"]
  DUPTABLE R6 K29 [{"Name", "Type", "Value", "DefaultValue"}]
  LOADK R7 K38 ["Speed"]
  SETTABLEKS R7 R6 K15 ["Name"]
  LOADK R7 K39 ["Number"]
  SETTABLEKS R7 R6 K16 ["Type"]
  GETTABLEKS R8 R0 K27 ["PropertyLookup"]
  GETTABLEKS R7 R8 K38 ["Speed"]
  SETTABLEKS R7 R6 K17 ["Value"]
  LOADN R7 1
  SETTABLEKS R7 R6 K22 ["DefaultValue"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K9 ["Property_Speed"]
  GETTABLEKS R5 R2 K14 ["nextProperty"]
  DUPTABLE R6 K29 [{"Name", "Type", "Value", "DefaultValue"}]
  LOADK R7 K40 ["StartOffset"]
  SETTABLEKS R7 R6 K15 ["Name"]
  LOADK R7 K39 ["Number"]
  SETTABLEKS R7 R6 K16 ["Type"]
  GETTABLEKS R8 R0 K27 ["PropertyLookup"]
  GETTABLEKS R7 R8 K40 ["StartOffset"]
  SETTABLEKS R7 R6 K17 ["Value"]
  LOADN R7 0
  SETTABLEKS R7 R6 K22 ["DefaultValue"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K10 ["Property_StartOffset"]
  GETTABLEKS R5 R2 K14 ["nextProperty"]
  DUPTABLE R6 K29 [{"Name", "Type", "Value", "DefaultValue"}]
  LOADK R7 K41 ["EndOffset"]
  SETTABLEKS R7 R6 K15 ["Name"]
  LOADK R7 K39 ["Number"]
  SETTABLEKS R7 R6 K16 ["Type"]
  GETTABLEKS R8 R0 K27 ["PropertyLookup"]
  GETTABLEKS R7 R8 K41 ["EndOffset"]
  SETTABLEKS R7 R6 K17 ["Value"]
  LOADN R7 0
  SETTABLEKS R7 R6 K22 ["DefaultValue"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K11 ["Property_EndOffset"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K42 ["PLAYING_PREVIEW_ENABLED"]
  JUMPIFNOT R6 [+18]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K43 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K46 [{"GraphPayload", "LayoutOrder", "disabled"}]
  GETTABLEKS R8 R0 K2 ["GraphPayload"]
  SETTABLEKS R8 R7 K2 ["GraphPayload"]
  GETTABLEKS R8 R2 K47 ["nextOrder"]
  CALL R8 0 1
  SETTABLEKS R8 R7 K44 ["LayoutOrder"]
  SETTABLEKS R3 R7 K45 ["disabled"]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K12 ["PlayingPreview"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K43 ["createElement"]
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
