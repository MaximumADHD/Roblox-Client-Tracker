PROTO_0:
  GETIMPORT R1 K1 [pairs]
  MOVE R2 R0
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETUPVAL R6 0
  LOADB R7 1
  SETTABLE R7 R6 R5
  NAMECALL R6 R5 K2 ["GetChildren"]
  CALL R6 1 1
  LENGTH R7 R6
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+4]
  GETUPVAL R7 1
  MOVE R8 R6
  CALL R7 1 0
  FORGLOOP R1 2 [-14]
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 0 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  MOVE R3 R2
  MOVE R4 R0
  CALL R3 1 0
  RETURN R1 1

PROTO_2:
  LOADNIL R5
  LOADNIL R6
  LOADNIL R7
  LOADNIL R8
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["Error"]
  JUMPIFNOTEQ R1 R9 [+13]
  LOADK R5 K1 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
  LOADK R11 K2 ["AssetImportTree"]
  LOADK R12 K3 ["Errors"]
  NAMECALL R9 R4 K4 ["getText"]
  CALL R9 3 1
  MOVE R6 R9
  GETTABLEKS R7 R0 K5 ["errors"]
  GETTABLEKS R8 R0 K6 ["descErrors"]
  JUMP [+16]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["Warning"]
  JUMPIFNOTEQ R1 R9 [+12]
  LOADK R5 K8 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
  LOADK R11 K2 ["AssetImportTree"]
  LOADK R12 K9 ["Warnings"]
  NAMECALL R9 R4 K4 ["getText"]
  CALL R9 3 1
  MOVE R6 R9
  GETTABLEKS R7 R0 K10 ["warnings"]
  GETTABLEKS R8 R0 K11 ["descWarnings"]
  LOADNIL R9
  LOADN R10 0
  JUMPIFNOTLT R10 R7 [+14]
  LOADK R12 K2 ["AssetImportTree"]
  LOADK R13 K12 ["Contains"]
  NAMECALL R10 R4 K4 ["getText"]
  CALL R10 3 1
  GETIMPORT R11 K15 [string.format]
  MOVE R12 R10
  MOVE R13 R7
  MOVE R14 R6
  CALL R11 3 1
  MOVE R9 R11
  JUMP [+19]
  LOADN R10 0
  JUMPIFNOTLT R10 R8 [+15]
  JUMPIF R2 [+13]
  LOADK R12 K2 ["AssetImportTree"]
  LOADK R13 K16 ["Descendants"]
  NAMECALL R10 R4 K4 ["getText"]
  CALL R10 3 1
  GETIMPORT R11 K15 [string.format]
  MOVE R12 R10
  MOVE R13 R8
  MOVE R14 R6
  CALL R11 3 1
  MOVE R9 R11
  JUMP [+2]
  LOADNIL R10
  RETURN R10 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K17 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K21 [{"LayoutOrder", "Style", "Size"}]
  NAMECALL R13 R3 K22 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K18 ["LayoutOrder"]
  DUPTABLE R13 K24 [{"Image"}]
  SETTABLEKS R5 R13 K23 ["Image"]
  SETTABLEKS R13 R12 K19 ["Style"]
  GETIMPORT R13 K27 [UDim2.new]
  LOADN R14 0
  LOADN R15 20
  LOADN R16 0
  LOADN R17 20
  CALL R13 4 1
  SETTABLEKS R13 R12 K20 ["Size"]
  DUPTABLE R13 K29 [{"Tooltip"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K17 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K31 [{"Text"}]
  SETTABLEKS R9 R16 K30 ["Text"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K28 ["Tooltip"]
  CALL R10 3 -1
  RETURN R10 -1

PROTO_3:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIFNOT R1 [+4]
  GETUPVAL R3 1
  GETTABLE R2 R3 R0
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 0
  LOADB R2 1
  LOADB R3 0
  GETIMPORT R4 K1 [ipairs]
  GETUPVAL R5 2
  MOVE R6 R1
  CALL R5 1 -1
  CALL R4 -1 3
  FORGPREP_INEXT R4
  GETUPVAL R10 1
  GETTABLE R9 R10 R8
  JUMPIFNOTEQKNIL R9 [+4]
  GETUPVAL R11 3
  GETTABLE R10 R11 R8
  ORK R9 R10 K2 [False]
  MOVE R10 R2
  JUMPIFNOT R10 [+7]
  LOADB R10 0
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K3 ["Indeterminate"]
  JUMPIFEQ R9 R11 [+2]
  MOVE R10 R9
  MOVE R2 R10
  MOVE R10 R3
  JUMPIF R10 [+7]
  LOADB R10 1
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K3 ["Indeterminate"]
  JUMPIFEQ R9 R11 [+2]
  MOVE R10 R9
  MOVE R3 R10
  FORGLOOP R4 2 [inext] [-28]
  JUMPIFNOT R2 [+19]
  GETUPVAL R5 3
  GETTABLE R4 R5 R1
  JUMPIFNOTEQKB R4 TRUE [+2]
  RETURN R0 0
  LOADK R6 K4 ["GroupImportData"]
  NAMECALL R4 R1 K5 ["IsA"]
  CALL R4 2 1
  JUMPIF R4 [+5]
  LOADK R6 K6 ["RootImportData"]
  NAMECALL R4 R1 K5 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+23]
  GETUPVAL R4 1
  LOADB R5 1
  SETTABLE R5 R4 R1
  JUMP [+19]
  JUMPIF R3 [+18]
  GETUPVAL R5 3
  GETTABLE R4 R5 R1
  JUMPIFNOTEQKB R4 FALSE [+2]
  RETURN R0 0
  LOADK R6 K4 ["GroupImportData"]
  NAMECALL R4 R1 K5 ["IsA"]
  CALL R4 2 1
  JUMPIF R4 [+5]
  LOADK R6 K6 ["RootImportData"]
  NAMECALL R4 R1 K5 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+3]
  GETUPVAL R4 1
  LOADB R5 0
  SETTABLE R5 R4 R1
  GETUPVAL R4 5
  MOVE R5 R1
  CALL R4 1 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R5
  MOVE R6 R5
  MOVE R7 R0
  CALL R6 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["RunningUnderCLI"]
  CALL R1 0 1
  NOT R0 R1
  RETURN R0 1

PROTO_6:
  DUPCLOSURE R0 K0 [PROTO_5]
  CAPTURE UPVAL U0
  NEWTABLE R1 0 1
  DUPTABLE R2 K3 [{"Name", "ShouldShow"}]
  LOADK R3 K4 ["ApplyToAllCallout"]
  SETTABLEKS R3 R2 K1 ["Name"]
  SETTABLEKS R0 R2 K2 ["ShouldShow"]
  SETLIST R1 R2 1 [1]
  RETURN R1 1

PROTO_7:
  NAMECALL R1 R0 K0 ["GetChildren"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_8:
  GETUPVAL R1 0
  JUMPIF R1 [+13]
  GETTABLEKS R1 R0 K0 ["ClassName"]
  JUMPIFNOTEQKS R1 K1 ["RootImportData"] [+10]
  GETUPVAL R1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["props"]
  GETTABLEKS R2 R3 K3 ["FileName"]
  CALL R1 1 1
  LOADNIL R2
  RETURN R1 2
  GETTABLEKS R1 R0 K4 ["ImportName"]
  LOADNIL R2
  RETURN R1 2

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["SetChecked"]
  MOVE R3 R0
  CALL R2 1 0
  GETTABLEKS R2 R1 K2 ["SelectedImportItem"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R1 K2 ["SelectedImportItem"]
  NAMECALL R2 R2 K3 ["GetPreview"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K4 ["UpdatePreviewInstance"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_10:
  GETIMPORT R1 K1 [next]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["props"]
  GETTABLEKS R2 R3 K3 ["SelectedImportItem"]
  JUMPIFNOTEQ R2 R1 [+2]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["props"]
  GETTABLEKS R2 R3 K4 ["SetSelectedImportItem"]
  MOVE R3 R1
  CALL R2 1 0
  JUMPIFNOT R1 [+10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["props"]
  GETTABLEKS R2 R3 K5 ["UpdatePreviewInstance"]
  NAMECALL R3 R1 K6 ["GetPreview"]
  CALL R3 1 -1
  CALL R2 -1 0
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["props"]
  GETTABLEKS R2 R3 K5 ["UpdatePreviewInstance"]
  LOADNIL R3
  CALL R2 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["Item"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["statusCounts"]
  GETTABLE R2 R3 R1
  JUMPIF R2 [+2]
  LOADNIL R3
  RETURN R3 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["new"]
  CALL R3 0 1
  GETUPVAL R4 2
  MOVE R5 R2
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K3 ["Error"]
  GETTABLEKS R7 R0 K4 ["Expanded"]
  MOVE R8 R3
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["props"]
  GETTABLEKS R9 R10 K6 ["Localization"]
  CALL R4 5 1
  MOVE R5 R4
  JUMPIF R5 [+14]
  GETUPVAL R5 2
  MOVE R6 R2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K7 ["Warning"]
  GETTABLEKS R8 R0 K4 ["Expanded"]
  MOVE R9 R3
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K5 ["props"]
  GETTABLEKS R10 R11 K6 ["Localization"]
  CALL R5 5 1
  MOVE R4 R5
  JUMPIFNOT R4 [+2]
  LOADN R5 20
  JUMP [+1]
  LOADN R5 0
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K8 ["createElement"]
  GETUPVAL R7 5
  DUPTABLE R8 K12 [{"Size", "LayoutOrder", "Layout"}]
  GETIMPORT R9 K14 [UDim2.new]
  LOADN R10 0
  MOVE R11 R5
  LOADN R12 0
  LOADN R13 20
  CALL R9 4 1
  SETTABLEKS R9 R8 K9 ["Size"]
  GETTABLEKS R9 R0 K10 ["LayoutOrder"]
  SETTABLEKS R9 R8 K10 ["LayoutOrder"]
  GETIMPORT R9 K18 [Enum.FillDirection.Horizontal]
  SETTABLEKS R9 R8 K11 ["Layout"]
  DUPTABLE R9 K20 [{"StatusCount"}]
  SETTABLEKS R4 R9 K19 ["StatusCount"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_12:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["applyImportDataToSession"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K4 ["PresetController"]
  NEWTABLE R4 0 1
  DUPTABLE R5 K7 [{"Text", "OnItemClicked"}]
  LOADK R8 K8 ["AssetImportTree"]
  LOADK R9 K9 ["RightClickApplyToAll1"]
  DUPTABLE R10 K11 [{"nodeName"}]
  GETTABLEKS R11 R0 K12 ["ImportName"]
  SETTABLEKS R11 R10 K10 ["nodeName"]
  NAMECALL R6 R2 K13 ["getText"]
  CALL R6 4 1
  SETTABLEKS R6 R5 K5 ["Text"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K6 ["OnItemClicked"]
  SETLIST R4 R5 1 [1]
  GETUPVAL R5 1
  MOVE R6 R1
  MOVE R7 R4
  CALL R5 2 0
  RETURN R0 0

PROTO_14:
  DUPCLOSURE R1 K0 [PROTO_7]
  SETTABLEKS R1 R0 K1 ["getChildren"]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["getContents"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["setChecked"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["SelectItem"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K5 ["statusCounts"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  SETTABLEKS R1 R0 K6 ["afterItem"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  SETTABLEKS R1 R0 K7 ["createContextMenu"]
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createContextMenu"]
  GETTABLEKS R2 R0 K1 ["Item"]
  CALL R1 1 0
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R5 R2 K3 ["Sizes"]
  GETTABLEKS R4 R5 K4 ["ToolbarHeight"]
  ADDK R3 R4 K2 [1]
  GETTABLEKS R4 R1 K5 ["Checked"]
  JUMPIF R4 [+11]
  GETTABLEKS R5 R1 K6 ["Instances"]
  NEWTABLE R6 0 0
  NEWCLOSURE R7 P0
  CAPTURE VAL R6
  CAPTURE VAL R7
  MOVE R8 R7
  MOVE R9 R5
  CALL R8 1 0
  MOVE R4 R6
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["new"]
  CALL R5 0 1
  GETUPVAL R6 1
  GETTABLEKS R7 R1 K8 ["ImportTree"]
  CALL R6 1 1
  SETTABLEKS R6 R0 K9 ["statusCounts"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  GETUPVAL R7 2
  GETUPVAL R8 3
  CALL R8 0 1
  LOADK R9 K10 ["AssetImportTree"]
  GETTABLEKS R10 R1 K11 ["AssetImportSession"]
  CALL R7 3 1
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K12 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K14 [{"Layout"}]
  GETIMPORT R11 K18 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K13 ["Layout"]
  DUPTABLE R11 K23 [{"Toolbar", "Callout", "Separator", "TreeView"}]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K28 [{"Expansion", "LayoutOrder", "OnExpansionChange", "Size"}]
  GETTABLEKS R15 R1 K24 ["Expansion"]
  SETTABLEKS R15 R14 K24 ["Expansion"]
  NAMECALL R15 R5 K29 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K25 ["LayoutOrder"]
  GETTABLEKS R15 R1 K30 ["SetExpansion"]
  SETTABLEKS R15 R14 K26 ["OnExpansionChange"]
  GETIMPORT R15 K32 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  MOVE R19 R3
  CALL R15 4 1
  SETTABLEKS R15 R14 K27 ["Size"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K19 ["Toolbar"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K33 [{"LayoutOrder", "Size"}]
  NAMECALL R15 R5 K29 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K25 ["LayoutOrder"]
  GETIMPORT R15 K35 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K27 ["Size"]
  MOVE R15 R7
  CALL R12 3 1
  SETTABLEKS R12 R11 K20 ["Callout"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 7
  DUPTABLE R14 K37 [{"DominantAxis", "LayoutOrder"}]
  GETIMPORT R15 K39 [Enum.DominantAxis.Width]
  SETTABLEKS R15 R14 K36 ["DominantAxis"]
  NAMECALL R15 R5 K29 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K25 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["Separator"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 8
  DUPTABLE R14 K51 [{"RootItems", "Selection", "Expansion", "Checked", "LayoutOrder", "Size", "OnSelectionChange", "OnExpansionChange", "OnCheck", "GetChildren", "GetContents", "ExpandableRoot", "AfterItem", "ToggleAncestors", "ToggleDescendants", "OnRightClick"}]
  GETTABLEKS R15 R1 K6 ["Instances"]
  JUMPIF R15 [+2]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K40 ["RootItems"]
  GETTABLEKS R16 R1 K52 ["SelectedImportItem"]
  JUMPIFNOT R16 [+7]
  NEWTABLE R15 1 0
  GETTABLEKS R16 R1 K52 ["SelectedImportItem"]
  LOADB R17 1
  SETTABLE R17 R15 R16
  JUMPIF R15 [+2]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K41 ["Selection"]
  GETTABLEKS R15 R1 K24 ["Expansion"]
  SETTABLEKS R15 R14 K24 ["Expansion"]
  SETTABLEKS R4 R14 K5 ["Checked"]
  NAMECALL R15 R5 K29 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K25 ["LayoutOrder"]
  GETIMPORT R15 K32 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  MINUS R19 R3
  CALL R15 4 1
  SETTABLEKS R15 R14 K27 ["Size"]
  GETTABLEKS R15 R0 K53 ["SelectItem"]
  SETTABLEKS R15 R14 K42 ["OnSelectionChange"]
  GETTABLEKS R15 R1 K30 ["SetExpansion"]
  SETTABLEKS R15 R14 K26 ["OnExpansionChange"]
  GETTABLEKS R15 R0 K54 ["setChecked"]
  SETTABLEKS R15 R14 K43 ["OnCheck"]
  GETTABLEKS R15 R0 K55 ["getChildren"]
  SETTABLEKS R15 R14 K44 ["GetChildren"]
  GETTABLEKS R15 R0 K56 ["getContents"]
  SETTABLEKS R15 R14 K45 ["GetContents"]
  LOADB R15 0
  SETTABLEKS R15 R14 K46 ["ExpandableRoot"]
  GETTABLEKS R15 R0 K57 ["afterItem"]
  SETTABLEKS R15 R14 K47 ["AfterItem"]
  GETUPVAL R15 9
  SETTABLEKS R15 R14 K48 ["ToggleAncestors"]
  GETUPVAL R17 8
  GETTABLEKS R16 R17 K58 ["DownPropagators"]
  GETTABLEKS R15 R16 K59 ["toggleAllChildren"]
  SETTABLEKS R15 R14 K49 ["ToggleDescendants"]
  SETTABLEKS R6 R14 K50 ["OnRightClick"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K22 ["TreeView"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_17:
  DUPTABLE R1 K5 [{"AssetImportSession", "ImportTree", "SelectedImportItem", "Expansion", "Checked"}]
  GETTABLEKS R2 R0 K6 ["assetImportSession"]
  SETTABLEKS R2 R1 K0 ["AssetImportSession"]
  GETTABLEKS R2 R0 K7 ["importTree"]
  SETTABLEKS R2 R1 K1 ["ImportTree"]
  GETTABLEKS R2 R0 K8 ["selectedImportItem"]
  SETTABLEKS R2 R1 K2 ["SelectedImportItem"]
  GETTABLEKS R2 R0 K9 ["importDataExpansion"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K3 ["Expansion"]
  GETTABLEKS R2 R0 K10 ["importDataChecked"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K4 ["Checked"]
  RETURN R1 1

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
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_22:
  DUPTABLE R1 K4 [{"SetSelectedImportItem", "SetExpansion", "SetChecked", "UpdatePreviewInstance"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetSelectedImportItem"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetExpansion"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["SetChecked"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["UpdatePreviewInstance"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Localization"]
  GETTABLEKS R7 R4 K13 ["Stylizer"]
  GETTABLEKS R8 R1 K14 ["UI"]
  GETTABLEKS R9 R8 K15 ["Checkbox"]
  GETTABLEKS R10 R8 K16 ["CheckboxTreeView"]
  GETTABLEKS R11 R8 K17 ["Image"]
  GETTABLEKS R12 R8 K18 ["Pane"]
  GETTABLEKS R13 R8 K19 ["Separator"]
  GETTABLEKS R14 R8 K20 ["Tooltip"]
  GETTABLEKS R15 R8 K21 ["showContextMenu"]
  GETTABLEKS R16 R1 K22 ["Util"]
  GETTABLEKS R17 R16 K23 ["LayoutOrderIterator"]
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K24 ["Src"]
  GETTABLEKS R20 R21 K25 ["Components"]
  GETTABLEKS R19 R20 K26 ["TreeViewToolbar"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K24 ["Src"]
  GETTABLEKS R21 R22 K27 ["Actions"]
  GETTABLEKS R20 R21 K28 ["SetSelectedImportItem"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K24 ["Src"]
  GETTABLEKS R22 R23 K27 ["Actions"]
  GETTABLEKS R21 R22 K29 ["SetTreeExpansion"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K24 ["Src"]
  GETTABLEKS R23 R24 K30 ["Thunks"]
  GETTABLEKS R22 R23 K31 ["UpdateChecked"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K24 ["Src"]
  GETTABLEKS R24 R25 K30 ["Thunks"]
  GETTABLEKS R23 R24 K32 ["UpdatePreviewInstance"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K24 ["Src"]
  GETTABLEKS R25 R26 K33 ["Resources"]
  GETTABLEKS R24 R25 K34 ["StatusLevel"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R28 R0 K24 ["Src"]
  GETTABLEKS R27 R28 K35 ["Utility"]
  GETTABLEKS R26 R27 K36 ["Status"]
  GETTABLEKS R25 R26 K37 ["countStatusLevelsForTree"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R28 R0 K24 ["Src"]
  GETTABLEKS R27 R28 K35 ["Utility"]
  GETTABLEKS R26 R27 K38 ["trimFilename"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R29 R0 K24 ["Src"]
  GETTABLEKS R28 R29 K39 ["Controllers"]
  GETTABLEKS R27 R28 K40 ["PresetController"]
  CALL R26 1 1
  GETIMPORT R27 K5 [require]
  GETTABLEKS R30 R0 K24 ["Src"]
  GETTABLEKS R29 R30 K35 ["Utility"]
  GETTABLEKS R28 R29 K41 ["DebugFlags"]
  CALL R27 1 1
  GETIMPORT R28 K5 [require]
  GETTABLEKS R31 R0 K24 ["Src"]
  GETTABLEKS R30 R31 K35 ["Utility"]
  GETTABLEKS R29 R30 K42 ["createCalloutComponents"]
  CALL R28 1 1
  GETIMPORT R29 K44 [game]
  LOADK R31 K45 ["UseImportNameForRoot"]
  LOADB R32 0
  NAMECALL R29 R29 K46 ["DefineFastFlag"]
  CALL R29 3 1
  GETTABLEKS R30 R2 K47 ["PureComponent"]
  LOADK R32 K48 ["AssetImportTree"]
  NAMECALL R30 R30 K49 ["extend"]
  CALL R30 2 1
  DUPCLOSURE R31 K50 [PROTO_1]
  DUPCLOSURE R32 K51 [PROTO_2]
  CAPTURE VAL R23
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R14
  DUPCLOSURE R33 K52 [PROTO_4]
  CAPTURE VAL R9
  DUPCLOSURE R34 K53 [PROTO_6]
  CAPTURE VAL R27
  DUPCLOSURE R35 K54 [PROTO_14]
  CAPTURE VAL R29
  CAPTURE VAL R25
  CAPTURE VAL R17
  CAPTURE VAL R32
  CAPTURE VAL R23
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R15
  SETTABLEKS R35 R30 K55 ["init"]
  DUPCLOSURE R35 K56 [PROTO_16]
  CAPTURE VAL R17
  CAPTURE VAL R24
  CAPTURE VAL R28
  CAPTURE VAL R34
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R18
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R33
  SETTABLEKS R35 R30 K57 ["render"]
  MOVE R35 R5
  DUPTABLE R36 K59 [{"Localization", "Stylizer", "Plugin", "PresetController"}]
  SETTABLEKS R6 R36 K12 ["Localization"]
  SETTABLEKS R7 R36 K13 ["Stylizer"]
  GETTABLEKS R37 R4 K58 ["Plugin"]
  SETTABLEKS R37 R36 K58 ["Plugin"]
  SETTABLEKS R26 R36 K40 ["PresetController"]
  CALL R35 1 1
  MOVE R36 R30
  CALL R35 1 1
  MOVE R30 R35
  DUPCLOSURE R35 K60 [PROTO_17]
  DUPCLOSURE R36 K61 [PROTO_22]
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R22
  GETTABLEKS R37 R3 K62 ["connect"]
  MOVE R38 R35
  MOVE R39 R36
  CALL R37 2 1
  MOVE R38 R30
  CALL R37 1 -1
  RETURN R37 -1
