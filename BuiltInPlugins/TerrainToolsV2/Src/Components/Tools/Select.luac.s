PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["dispatchChangeSelection"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Analytics"]
  GETTABLEKS R2 R0 K2 ["Terrain"]
  NAMECALL R2 R2 K3 ["get"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K4 ["SelectionTransform"]
  GETTABLEKS R4 R0 K5 ["SelectionSize"]
  LOADK R7 K6 ["regionAction"]
  LOADK R8 K7 ["Copy"]
  NAMECALL R5 R1 K8 ["report"]
  CALL R5 3 0
  GETUPVAL R7 1
  MOVE R8 R3
  MOVE R9 R4
  LOADB R10 1
  CALL R7 3 -1
  NAMECALL R5 R2 K9 ["CopyRegion"]
  CALL R5 -1 1
  GETTABLEKS R6 R0 K10 ["dispatchSetTerrainRegionCopyBuffer"]
  MOVE R7 R5
  MOVE R8 R3
  MOVE R9 R4
  CALL R6 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Analytics"]
  GETTABLEKS R2 R0 K2 ["Terrain"]
  NAMECALL R2 R2 K3 ["get"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K4 ["SelectionTransform"]
  GETTABLEKS R4 R0 K5 ["SelectionSize"]
  LOADK R7 K6 ["regionAction"]
  LOADK R8 K7 ["Delete"]
  NAMECALL R5 R1 K8 ["report"]
  CALL R5 3 0
  MOVE R7 R3
  MOVE R8 R4
  GETIMPORT R9 K12 [Enum.Material.Air]
  NAMECALL R5 R2 K13 ["SetMaterialInTransform"]
  CALL R5 4 0
  GETUPVAL R5 1
  LOADK R7 K14 ["TerrainDelete"]
  NAMECALL R5 R5 K15 ["SetWaypoint"]
  CALL R5 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Analytics"]
  GETTABLEKS R2 R0 K2 ["Terrain"]
  NAMECALL R2 R2 K3 ["get"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K4 ["SelectionTransform"]
  GETTABLEKS R4 R0 K5 ["SelectionSize"]
  LOADK R7 K6 ["regionAction"]
  LOADK R8 K7 ["Cut"]
  NAMECALL R5 R1 K8 ["report"]
  CALL R5 3 0
  GETUPVAL R7 1
  MOVE R8 R3
  MOVE R9 R4
  LOADB R10 1
  CALL R7 3 -1
  NAMECALL R5 R2 K9 ["CopyRegion"]
  CALL R5 -1 1
  MOVE R8 R3
  MOVE R9 R4
  GETIMPORT R10 K13 [Enum.Material.Air]
  NAMECALL R6 R2 K14 ["SetMaterialInTransform"]
  CALL R6 4 0
  GETTABLEKS R6 R0 K15 ["dispatchSetTerrainRegionCopyBuffer"]
  MOVE R7 R5
  MOVE R8 R3
  MOVE R9 R4
  CALL R6 3 0
  GETUPVAL R6 2
  LOADK R8 K16 ["TerrainCut"]
  NAMECALL R6 R6 K17 ["SetWaypoint"]
  CALL R6 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Analytics"]
  GETTABLEKS R2 R0 K2 ["TerrainRegionCopyBuffer"]
  LOADK R5 K3 ["regionAction"]
  LOADK R6 K4 ["Paste"]
  NAMECALL R3 R1 K5 ["report"]
  CALL R3 3 0
  JUMPIFNOT R2 [+6]
  GETTABLEKS R3 R0 K6 ["dispatchSetTransformMode"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["Paste"]
  CALL R3 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Analytics"]
  GETTABLEKS R2 R0 K2 ["Terrain"]
  NAMECALL R2 R2 K3 ["get"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K4 ["SelectionTransform"]
  GETTABLEKS R4 R0 K5 ["SelectionSize"]
  LOADK R7 K6 ["regionAction"]
  LOADK R8 K7 ["Duplicate"]
  NAMECALL R5 R1 K8 ["report"]
  CALL R5 3 0
  GETUPVAL R7 1
  MOVE R8 R3
  MOVE R9 R4
  LOADB R10 1
  CALL R7 3 -1
  NAMECALL R5 R2 K9 ["CopyRegion"]
  CALL R5 -1 1
  GETTABLEKS R6 R0 K10 ["dispatchSetTerrainRegion"]
  MOVE R7 R5
  CALL R6 1 0
  GETTABLEKS R6 R0 K11 ["dispatchSetTransformMode"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K7 ["Duplicate"]
  CALL R6 1 0
  RETURN R0 0

PROTO_6:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["setRegion"]
  GETUPVAL R1 0
  JUMPIFNOT R1 [+31]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K1 ["copy"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K2 ["delete"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K3 ["cut"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K4 ["paste"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K5 ["duplicate"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K6 ["selection"]
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K2 ["CopySelected"]
  NAMECALL R2 R2 K3 ["Enable"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K4 ["CutSelected"]
  NAMECALL R2 R2 K3 ["Enable"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K5 ["DeleteSelected"]
  NAMECALL R2 R2 K3 ["Enable"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K6 ["PasteSelected"]
  NAMECALL R2 R2 K3 ["Enable"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K7 ["DuplicateSelected"]
  NAMECALL R2 R2 K3 ["Enable"]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K2 ["CopySelected"]
  NAMECALL R2 R2 K3 ["Disable"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K4 ["CutSelected"]
  NAMECALL R2 R2 K3 ["Disable"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K5 ["DeleteSelected"]
  NAMECALL R2 R2 K3 ["Disable"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K6 ["PasteSelected"]
  NAMECALL R2 R2 K3 ["Disable"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K7 ["DuplicateSelected"]
  NAMECALL R2 R2 K3 ["Disable"]
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  NEWTABLE R2 0 0
  NAMECALL R0 R0 K0 ["Set"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  GETIMPORT R0 K2 [task.defer]
  DUPCLOSURE R1 K3 [PROTO_9]
  CAPTURE UPVAL U0
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K2 ["CopySelected"]
  GETTABLEKS R5 R0 K3 ["copy"]
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 3 1
  SETTABLEKS R2 R0 K5 ["copyAction"]
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K6 ["CutSelected"]
  GETTABLEKS R5 R0 K7 ["cut"]
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 3 1
  SETTABLEKS R2 R0 K8 ["cutAction"]
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K9 ["DeleteSelected"]
  GETTABLEKS R5 R0 K10 ["delete"]
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 3 1
  SETTABLEKS R2 R0 K11 ["deleteAction"]
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K12 ["PasteSelected"]
  GETTABLEKS R5 R0 K13 ["paste"]
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 3 1
  SETTABLEKS R2 R0 K14 ["pasteAction"]
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K15 ["DuplicateSelected"]
  GETTABLEKS R5 R0 K16 ["duplicate"]
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 3 1
  SETTABLEKS R2 R0 K17 ["duplicateAction"]
  GETUPVAL R2 0
  NAMECALL R2 R2 K18 ["Get"]
  CALL R2 1 1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K19 ["selection"]
  GETUPVAL R2 0
  NEWTABLE R4 0 0
  NAMECALL R2 R2 K20 ["Set"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K21 ["SelectionChanged"]
  DUPCLOSURE R4 K22 [PROTO_10]
  CAPTURE UPVAL U0
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K23 ["onSelectionChanged"]
  NAMECALL R2 R0 K24 ["enable"]
  CALL R2 1 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["onSelectionChanged"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["onSelectionChanged"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["onSelectionChanged"]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K2 ["selection"]
  NAMECALL R1 R1 K3 ["Set"]
  CALL R1 2 0
  NAMECALL R1 R0 K4 ["disable"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K5 ["copyAction"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K5 ["copyAction"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K6 ["cutAction"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K6 ["cutAction"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K7 ["deleteAction"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K7 ["deleteAction"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K8 ["pasteAction"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K8 ["pasteAction"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K9 ["duplicateAction"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K9 ["duplicateAction"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["SelectionTransform"]
  GETTABLEKS R4 R1 K3 ["SelectionSize"]
  GETTABLEKS R5 R1 K4 ["SnapToVoxels"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createFragment"]
  DUPTABLE R7 K7 [{"SelectionSettings"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K13 [{"Padding", "LayoutOrder", "isSubsection", "Title"}]
  GETIMPORT R11 K16 [UDim.new]
  LOADN R12 0
  LOADN R13 12
  CALL R11 2 1
  SETTABLEKS R11 R10 K9 ["Padding"]
  LOADN R11 1
  SETTABLEKS R11 R10 K10 ["LayoutOrder"]
  LOADB R11 0
  SETTABLEKS R11 R10 K11 ["isSubsection"]
  LOADK R13 K6 ["SelectionSettings"]
  LOADK R14 K6 ["SelectionSettings"]
  NAMECALL R11 R2 K17 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K12 ["Title"]
  DUPTABLE R11 K19 [{"Dragger"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K27 [{"LayoutOrder", "SetRegion", "SetSnapToVoxels", "Size", "SnapToVoxels", "SourceSize", "SourceTransform", "Transform", "ToolName"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K10 ["LayoutOrder"]
  GETTABLEKS R15 R0 K28 ["setRegion"]
  SETTABLEKS R15 R14 K20 ["SetRegion"]
  GETTABLEKS R15 R1 K29 ["dispatchSetSnapToVoxels"]
  SETTABLEKS R15 R14 K21 ["SetSnapToVoxels"]
  SETTABLEKS R4 R14 K22 ["Size"]
  SETTABLEKS R5 R14 K4 ["SnapToVoxels"]
  SETTABLEKS R4 R14 K23 ["SourceSize"]
  SETTABLEKS R3 R14 K24 ["SourceTransform"]
  SETTABLEKS R3 R14 K25 ["Transform"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K30 ["Select"]
  SETTABLEKS R15 R14 K26 ["ToolName"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K18 ["Dragger"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K6 ["SelectionSettings"]
  CALL R6 1 -1
  RETURN R6 -1

PROTO_14:
  DUPTABLE R2 K4 [{"SelectionTransform", "SelectionSize", "SnapToVoxels", "TerrainRegionCopyBuffer"}]
  GETTABLEKS R4 R0 K5 ["Tools"]
  GETTABLEKS R3 R4 K0 ["SelectionTransform"]
  SETTABLEKS R3 R2 K0 ["SelectionTransform"]
  GETTABLEKS R4 R0 K5 ["Tools"]
  GETTABLEKS R3 R4 K1 ["SelectionSize"]
  SETTABLEKS R3 R2 K1 ["SelectionSize"]
  GETTABLEKS R4 R0 K5 ["Tools"]
  GETTABLEKS R3 R4 K2 ["SnapToVoxels"]
  SETTABLEKS R3 R2 K2 ["SnapToVoxels"]
  GETTABLEKS R4 R0 K5 ["Tools"]
  GETTABLEKS R3 R4 K3 ["TerrainRegionCopyBuffer"]
  SETTABLEKS R3 R2 K3 ["TerrainRegionCopyBuffer"]
  RETURN R2 1

PROTO_15:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_21:
  DUPTABLE R1 K6 [{"dispatchChangeSelection", "dispatchChangeTool", "dispatchSetSnapToVoxels", "dispatchSetTransformMode", "dispatchSetTerrainRegion", "dispatchSetTerrainRegionCopyBuffer"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchChangeSelection"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["dispatchChangeTool"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["dispatchSetSnapToVoxels"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["dispatchSetTransformMode"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["dispatchSetTerrainRegion"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K5 ["dispatchSetTerrainRegionCopyBuffer"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["ContextItems"]
  CALL R6 1 1
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K13 ["Components"]
  GETTABLEKS R8 R9 K14 ["Tools"]
  GETTABLEKS R7 R8 K15 ["ToolParts"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R7 K16 ["Panel"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R7 K17 ["RegionFragment"]
  CALL R9 1 1
  GETTABLEKS R11 R0 K11 ["Src"]
  GETTABLEKS R10 R11 K18 ["Actions"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R10 K19 ["ChangeSelection"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R10 K20 ["ChangeTool"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R10 K21 ["SetSnapToVoxels"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R10 K22 ["SetTransformMode"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R10 K23 ["SetTerrainRegion"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R10 K24 ["SetTerrainRegionCopyBuffer"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K11 ["Src"]
  GETTABLEKS R19 R20 K25 ["Util"]
  GETTABLEKS R18 R19 K26 ["TerrainEnums"]
  CALL R17 1 1
  GETTABLEKS R18 R17 K27 ["ToolId"]
  GETTABLEKS R19 R17 K28 ["TransformMode"]
  GETTABLEKS R21 R0 K11 ["Src"]
  GETTABLEKS R20 R21 K25 ["Util"]
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R20 K29 ["ConvertTransformToRegion"]
  CALL R21 1 1
  GETIMPORT R22 K31 [game]
  LOADK R24 K32 ["TerrainEditorOverhaul"]
  NAMECALL R22 R22 K33 ["GetFastFlag"]
  CALL R22 2 1
  GETIMPORT R23 K31 [game]
  LOADK R25 K34 ["ChangeHistoryService"]
  NAMECALL R23 R23 K35 ["GetService"]
  CALL R23 2 1
  GETIMPORT R24 K31 [game]
  LOADK R26 K36 ["Selection"]
  NAMECALL R24 R24 K35 ["GetService"]
  CALL R24 2 1
  GETTABLEKS R25 R2 K37 ["PureComponent"]
  GETIMPORT R28 K1 [script]
  GETTABLEKS R27 R28 K38 ["Name"]
  NAMECALL R25 R25 K39 ["extend"]
  CALL R25 2 1
  DUPCLOSURE R26 K40 [PROTO_6]
  CAPTURE VAL R22
  CAPTURE VAL R21
  CAPTURE VAL R23
  CAPTURE VAL R19
  SETTABLEKS R26 R25 K41 ["init"]
  JUMPIFNOT R22 [+14]
  DUPCLOSURE R26 K42 [PROTO_7]
  SETTABLEKS R26 R25 K43 ["enable"]
  DUPCLOSURE R26 K44 [PROTO_8]
  SETTABLEKS R26 R25 K45 ["disable"]
  DUPCLOSURE R26 K46 [PROTO_11]
  CAPTURE VAL R24
  SETTABLEKS R26 R25 K47 ["didMount"]
  DUPCLOSURE R26 K48 [PROTO_12]
  CAPTURE VAL R24
  SETTABLEKS R26 R25 K49 ["willUnmount"]
  DUPCLOSURE R26 K50 [PROTO_13]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R18
  SETTABLEKS R26 R25 K51 ["render"]
  MOVE R26 R5
  DUPTABLE R27 K56 [{"Analytics", "Localization", "PluginActionsController", "Terrain"}]
  GETTABLEKS R28 R4 K52 ["Analytics"]
  SETTABLEKS R28 R27 K52 ["Analytics"]
  GETTABLEKS R28 R4 K53 ["Localization"]
  SETTABLEKS R28 R27 K53 ["Localization"]
  GETTABLEKS R28 R6 K54 ["PluginActionsController"]
  SETTABLEKS R28 R27 K54 ["PluginActionsController"]
  GETTABLEKS R28 R6 K55 ["Terrain"]
  SETTABLEKS R28 R27 K55 ["Terrain"]
  CALL R26 1 1
  MOVE R27 R25
  CALL R26 1 1
  MOVE R25 R26
  DUPCLOSURE R26 K57 [PROTO_14]
  DUPCLOSURE R27 K58 [PROTO_21]
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  GETTABLEKS R28 R3 K59 ["connect"]
  MOVE R29 R26
  MOVE R30 R27
  CALL R28 2 1
  MOVE R29 R25
  CALL R28 1 -1
  RETURN R28 -1
