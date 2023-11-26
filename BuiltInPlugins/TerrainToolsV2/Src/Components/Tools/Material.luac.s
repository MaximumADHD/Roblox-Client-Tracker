PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Analytics"]
  GETTABLEKS R2 R0 K2 ["ReplaceMaterial"]
  GETUPVAL R3 0
  DUPTABLE R5 K4 [{"applying"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K3 ["applying"]
  NAMECALL R3 R3 K5 ["setState"]
  CALL R3 2 0
  JUMPIFNOT R2 [+6]
  LOADK R5 K6 ["regionAction"]
  LOADK R6 K7 ["Replace"]
  NAMECALL R3 R1 K8 ["report"]
  CALL R3 3 0
  JUMP [+5]
  LOADK R5 K6 ["regionAction"]
  LOADK R6 K9 ["Fill"]
  NAMECALL R3 R1 K8 ["report"]
  CALL R3 3 0
  GETUPVAL R3 1
  LOADK R5 K10 ["TerrainFill"]
  NAMECALL R3 R3 K11 ["SetWaypoint"]
  CALL R3 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"applying"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["applying"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K0 ["onClick"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["onFinish"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K2 ["Apply"]
  GETTABLEKS R5 R0 K3 ["onClick"]
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 3 1
  SETTABLEKS R2 R0 K5 ["applyAction"]
  GETTABLEKS R2 R1 K1 ["PluginActionsController"]
  LOADK R4 K2 ["Apply"]
  NAMECALL R2 R2 K6 ["Enable"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["applyAction"]
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R1 K2 ["PluginActionsController"]
  LOADK R4 K3 ["Apply"]
  NAMECALL R2 R2 K4 ["Disable"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K1 ["applyAction"]
  NAMECALL R2 R2 K5 ["disconnect"]
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["dispatchChangeSelection"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Material"]
  GETTABLEKS R3 R1 K2 ["ReplaceMaterial"]
  GETTABLEKS R4 R1 K3 ["SourceMaterial"]
  GETTABLEKS R5 R1 K4 ["TargetMaterial"]
  GETTABLEKS R6 R1 K5 ["SelectionSize"]
  GETTABLEKS R7 R1 K6 ["SelectionTransform"]
  GETTABLEKS R8 R1 K7 ["SnapToVoxels"]
  GETTABLEKS R9 R1 K8 ["Localization"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["new"]
  CALL R10 0 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K10 ["createFragment"]
  DUPTABLE R12 K15 [{"RegionSettings", "Source", "FillButtonFrame", "FillDialog"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K21 [{"Padding", "LayoutOrder", "isSubsection", "Title"}]
  GETIMPORT R16 K23 [UDim.new]
  LOADN R17 0
  LOADN R18 12
  CALL R16 2 1
  SETTABLEKS R16 R15 K17 ["Padding"]
  NAMECALL R16 R10 K24 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K18 ["LayoutOrder"]
  LOADB R16 0
  SETTABLEKS R16 R15 K19 ["isSubsection"]
  LOADK R18 K25 ["SelectionSettings"]
  LOADK R19 K25 ["SelectionSettings"]
  NAMECALL R16 R9 K26 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K20 ["Title"]
  NEWTABLE R16 0 1
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K16 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K34 [{"LayoutOrder", "SetRegion", "SetSnapToVoxels", "Size", "SnapToVoxels", "SourceSize", "SourceTransform", "Transform", "ToolName"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K18 ["LayoutOrder"]
  NEWCLOSURE R20 P0
  CAPTURE VAL R1
  SETTABLEKS R20 R19 K27 ["SetRegion"]
  GETTABLEKS R20 R1 K35 ["dispatchSetSnapToVoxels"]
  SETTABLEKS R20 R19 K28 ["SetSnapToVoxels"]
  SETTABLEKS R6 R19 K29 ["Size"]
  SETTABLEKS R8 R19 K7 ["SnapToVoxels"]
  SETTABLEKS R6 R19 K30 ["SourceSize"]
  SETTABLEKS R7 R19 K31 ["SourceTransform"]
  SETTABLEKS R7 R19 K32 ["Transform"]
  GETTABLEKS R20 R1 K36 ["toolName"]
  SETTABLEKS R20 R19 K33 ["ToolName"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  SETTABLEKS R13 R12 K11 ["RegionSettings"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K47 [{"LayoutOrder", "AllowAir", "currentTool", "material", "replaceMaterial", "source", "target", "setMaterial", "setReplaceMaterial", "setSource", "setTarget"}]
  NAMECALL R16 R10 K24 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K18 ["LayoutOrder"]
  LOADB R16 1
  SETTABLEKS R16 R15 K37 ["AllowAir"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K1 ["Material"]
  SETTABLEKS R16 R15 K38 ["currentTool"]
  SETTABLEKS R2 R15 K39 ["material"]
  SETTABLEKS R3 R15 K40 ["replaceMaterial"]
  SETTABLEKS R4 R15 K41 ["source"]
  SETTABLEKS R5 R15 K42 ["target"]
  GETTABLEKS R17 R0 K0 ["props"]
  GETTABLEKS R16 R17 K48 ["dispatchSetMaterial"]
  SETTABLEKS R16 R15 K43 ["setMaterial"]
  GETTABLEKS R17 R0 K0 ["props"]
  GETTABLEKS R16 R17 K49 ["dispatchSetReplaceMaterial"]
  SETTABLEKS R16 R15 K44 ["setReplaceMaterial"]
  GETTABLEKS R17 R0 K0 ["props"]
  GETTABLEKS R16 R17 K50 ["dispatchSetSourceMaterial"]
  SETTABLEKS R16 R15 K45 ["setSource"]
  GETTABLEKS R17 R0 K0 ["props"]
  GETTABLEKS R16 R17 K51 ["dispatchSetTargetMaterial"]
  SETTABLEKS R16 R15 K46 ["setTarget"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K12 ["Source"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R14 6
  DUPTABLE R15 K54 [{"LayoutOrder", "Buttons", "Style"}]
  NAMECALL R16 R10 K24 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K18 ["LayoutOrder"]
  NEWTABLE R16 0 1
  DUPTABLE R17 K59 [{"Key", "Name", "Active", "OnClicked"}]
  LOADK R18 K60 ["Action"]
  SETTABLEKS R18 R17 K55 ["Key"]
  LOADK R20 K61 ["MaterialSettings"]
  LOADK R21 K62 ["Apply"]
  NAMECALL R18 R9 K26 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K56 ["Name"]
  GETTABLEKS R20 R0 K63 ["state"]
  GETTABLEKS R19 R20 K64 ["applying"]
  NOT R18 R19
  SETTABLEKS R18 R17 K57 ["Active"]
  GETTABLEKS R18 R0 K65 ["onClick"]
  SETTABLEKS R18 R17 K58 ["OnClicked"]
  SETLIST R16 R17 1 [1]
  SETTABLEKS R16 R15 K52 ["Buttons"]
  LOADK R16 K66 ["RoundPrimary"]
  SETTABLEKS R16 R15 K53 ["Style"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K13 ["FillButtonFrame"]
  GETTABLEKS R15 R0 K63 ["state"]
  GETTABLEKS R14 R15 K64 ["applying"]
  JUMPIFNOT R14 [+30]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R14 7
  DUPTABLE R15 K70 [{"OnFinish", "Material", "Replace", "Size", "SourceMaterial", "TargetMaterial", "Transform", "Terrain"}]
  GETTABLEKS R16 R0 K71 ["onFinish"]
  SETTABLEKS R16 R15 K67 ["OnFinish"]
  SETTABLEKS R2 R15 K1 ["Material"]
  SETTABLEKS R3 R15 K68 ["Replace"]
  SETTABLEKS R6 R15 K29 ["Size"]
  SETTABLEKS R4 R15 K3 ["SourceMaterial"]
  SETTABLEKS R5 R15 K4 ["TargetMaterial"]
  SETTABLEKS R7 R15 K32 ["Transform"]
  GETTABLEKS R16 R1 K69 ["Terrain"]
  NAMECALL R16 R16 K72 ["get"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K69 ["Terrain"]
  CALL R13 2 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K14 ["FillDialog"]
  CALL R11 1 -1
  RETURN R11 -1

PROTO_7:
  DUPTABLE R2 K7 [{"Material", "ReplaceMaterial", "SourceMaterial", "TargetMaterial", "SelectionTransform", "SelectionSize", "SnapToVoxels"}]
  GETTABLEKS R4 R0 K8 ["MaterialTool"]
  GETTABLEKS R3 R4 K0 ["Material"]
  SETTABLEKS R3 R2 K0 ["Material"]
  GETTABLEKS R4 R0 K8 ["MaterialTool"]
  GETTABLEKS R3 R4 K1 ["ReplaceMaterial"]
  SETTABLEKS R3 R2 K1 ["ReplaceMaterial"]
  GETTABLEKS R4 R0 K8 ["MaterialTool"]
  GETTABLEKS R3 R4 K2 ["SourceMaterial"]
  SETTABLEKS R3 R2 K2 ["SourceMaterial"]
  GETTABLEKS R4 R0 K8 ["MaterialTool"]
  GETTABLEKS R3 R4 K3 ["TargetMaterial"]
  SETTABLEKS R3 R2 K3 ["TargetMaterial"]
  GETTABLEKS R4 R0 K9 ["Tools"]
  GETTABLEKS R3 R4 K4 ["SelectionTransform"]
  SETTABLEKS R3 R2 K4 ["SelectionTransform"]
  GETTABLEKS R4 R0 K9 ["Tools"]
  GETTABLEKS R3 R4 K5 ["SelectionSize"]
  SETTABLEKS R3 R2 K5 ["SelectionSize"]
  GETTABLEKS R4 R0 K9 ["Tools"]
  GETTABLEKS R3 R4 K6 ["SnapToVoxels"]
  SETTABLEKS R3 R2 K6 ["SnapToVoxels"]
  RETURN R2 1

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADK R3 K0 ["MaterialTool"]
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["MaterialTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["MaterialTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["MaterialTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["MaterialTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_15:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  DUPTABLE R2 K6 [{"dispatchChangeSelection", "dispatchSetMaterial", "dispatchSetReplaceMaterial", "dispatchSetSnapToVoxels", "dispatchSetSourceMaterial", "dispatchSetTargetMaterial"}]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R3 R2 K0 ["dispatchChangeSelection"]
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R3 R2 K1 ["dispatchSetMaterial"]
  NEWCLOSURE R3 P3
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R3 R2 K2 ["dispatchSetReplaceMaterial"]
  NEWCLOSURE R3 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R3 R2 K3 ["dispatchSetSnapToVoxels"]
  NEWCLOSURE R3 P5
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R3 R2 K4 ["dispatchSetSourceMaterial"]
  NEWCLOSURE R3 P6
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R3 R2 K5 ["dispatchSetTargetMaterial"]
  RETURN R2 1

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
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Util"]
  GETTABLEKS R7 R8 K13 ["TerrainEnums"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K14 ["ToolId"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K15 ["ContextItems"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K16 ["PluginActionsController"]
  GETTABLEKS R10 R8 K17 ["Terrain"]
  GETTABLEKS R11 R1 K12 ["Util"]
  GETTABLEKS R12 R11 K18 ["LayoutOrderIterator"]
  GETTABLEKS R16 R0 K11 ["Src"]
  GETTABLEKS R15 R16 K19 ["Components"]
  GETTABLEKS R14 R15 K20 ["Tools"]
  GETTABLEKS R13 R14 K21 ["ToolParts"]
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R13 K22 ["ButtonGroup"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R13 K23 ["MaterialSettings"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R13 K24 ["Panel"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R13 K25 ["RegionFragment"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R13 K26 ["VolumeDragger"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K11 ["Src"]
  GETTABLEKS R21 R22 K19 ["Components"]
  GETTABLEKS R20 R21 K27 ["FillDialog"]
  CALL R19 1 1
  GETTABLEKS R21 R0 K11 ["Src"]
  GETTABLEKS R20 R21 K28 ["Actions"]
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R20 K29 ["ApplyToolAction"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R20 K30 ["ChangeSelection"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R20 K31 ["SetMaterial"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R25 R20 K32 ["SetReplaceMaterial"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R26 R20 K33 ["SetSnapToVoxels"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R27 R20 K34 ["SetSourceMaterial"]
  CALL R26 1 1
  GETIMPORT R27 K4 [require]
  GETTABLEKS R28 R20 K35 ["SetTargetMaterial"]
  CALL R27 1 1
  GETIMPORT R28 K37 [game]
  LOADK R30 K38 ["ChangeHistoryService"]
  NAMECALL R28 R28 K39 ["GetService"]
  CALL R28 2 1
  GETIMPORT R29 K37 [game]
  LOADK R31 K40 ["TerrainEditorOverhaul"]
  NAMECALL R29 R29 K41 ["GetFastFlag"]
  CALL R29 2 1
  GETTABLEKS R30 R2 K42 ["PureComponent"]
  GETIMPORT R33 K1 [script]
  GETTABLEKS R32 R33 K43 ["Name"]
  NAMECALL R30 R30 K44 ["extend"]
  CALL R30 2 1
  DUPCLOSURE R31 K45 [PROTO_2]
  CAPTURE VAL R28
  SETTABLEKS R31 R30 K46 ["init"]
  JUMPIFNOT R29 [+6]
  DUPCLOSURE R31 K47 [PROTO_3]
  SETTABLEKS R31 R30 K48 ["didMount"]
  DUPCLOSURE R31 K49 [PROTO_4]
  SETTABLEKS R31 R30 K50 ["willUnmount"]
  DUPCLOSURE R31 K51 [PROTO_6]
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R14
  CAPTURE VAL R19
  SETTABLEKS R31 R30 K52 ["render"]
  MOVE R31 R5
  DUPTABLE R32 K55 [{"Analytics", "Localization", "PluginActionsController", "Terrain"}]
  GETTABLEKS R33 R4 K53 ["Analytics"]
  SETTABLEKS R33 R32 K53 ["Analytics"]
  GETTABLEKS R33 R4 K54 ["Localization"]
  SETTABLEKS R33 R32 K54 ["Localization"]
  SETTABLEKS R9 R32 K16 ["PluginActionsController"]
  SETTABLEKS R10 R32 K17 ["Terrain"]
  CALL R31 1 1
  MOVE R32 R30
  CALL R31 1 1
  MOVE R30 R31
  DUPCLOSURE R31 K56 [PROTO_7]
  DUPCLOSURE R32 K57 [PROTO_15]
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R27
  GETTABLEKS R33 R3 K58 ["connect"]
  MOVE R34 R31
  MOVE R35 R32
  CALL R33 2 1
  MOVE R34 R30
  CALL R33 1 -1
  RETURN R33 -1
