PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["treeManager"]
  LOADB R2 1
  NAMECALL R0 R0 K1 ["areAllSelected"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["areAllSelected"]
  CALL R0 1 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["treeManager"]
  NAMECALL R0 R0 K2 ["resetSelected"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["treeManager"]
  LOADB R2 1
  NAMECALL R0 R0 K3 ["selectAll"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["treeManager"]
  GETTABLEKS R3 R0 K1 ["item"]
  NAMECALL R1 R1 K2 ["toggleExpanded"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["treeManager"]
  GETTABLEKS R3 R0 K1 ["item"]
  NAMECALL R1 R1 K2 ["onItemClicked"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["ScriptConversionContext"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["treeManager"]
  GETTABLEKS R5 R0 K3 ["item"]
  MOVE R6 R2
  NAMECALL R3 R3 K4 ["onItemDoubleClicked"]
  CALL R3 3 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["treeManager"]
  NAMECALL R0 R0 K1 ["resetSelected"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["treeManager"]
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["onKeyPressed"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["treeManager"]
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["onKeyReleased"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["treeManager"]
  GETTABLEKS R3 R0 K1 ["item"]
  LOADB R4 1
  NAMECALL R1 R1 K2 ["onItemClicked"]
  CALL R1 3 0
  GETUPVAL R1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["treeManager"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["props"]
  GETTABLEKS R6 R0 K1 ["item"]
  NAMECALL R3 R3 K4 ["getRightClickContextInfo"]
  CALL R3 3 -1
  NAMECALL R1 R1 K5 ["show"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R4 R0 K0 ["item"]
  DUPTABLE R5 K11 [{"Expanded", "Selected", "OnToggle", "OnClick", "OnRightClick", "OnDoubleClick", "Key", "Position", "Row", "Size"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K12 ["props"]
  GETTABLEKS R7 R8 K13 ["expansion"]
  GETTABLE R6 R7 R4
  SETTABLEKS R6 R5 K1 ["Expanded"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K14 ["treeManager"]
  MOVE R8 R4
  NAMECALL R6 R6 K15 ["itemIsSelected"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K2 ["Selected"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K16 ["onToggle"]
  SETTABLEKS R6 R5 K3 ["OnToggle"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K17 ["onClick"]
  SETTABLEKS R6 R5 K4 ["OnClick"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K18 ["onRightClick"]
  SETTABLEKS R6 R5 K5 ["OnRightClick"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K19 ["onDoubleClick"]
  SETTABLEKS R6 R5 K6 ["OnDoubleClick"]
  SETTABLEKS R1 R5 K7 ["Key"]
  SETTABLEKS R2 R5 K8 ["Position"]
  SETTABLEKS R0 R5 K9 ["Row"]
  SETTABLEKS R3 R5 K10 ["Size"]
  RETURN R5 1

PROTO_10:
  GETTABLEKS R2 R0 K0 ["range"]
  JUMPIFNOT R2 [+39]
  GETTABLEKS R2 R1 K0 ["range"]
  JUMPIFNOT R2 [+36]
  GETTABLEKS R3 R0 K0 ["range"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["StartKey"]
  GETTABLE R2 R3 R4
  GETTABLEKS R4 R1 K0 ["range"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["StartKey"]
  GETTABLE R3 R4 R5
  GETTABLEKS R4 R2 K2 ["line"]
  GETTABLEKS R5 R3 K2 ["line"]
  JUMPIFNOTEQ R4 R5 [+10]
  GETTABLEKS R5 R2 K3 ["character"]
  GETTABLEKS R6 R3 K3 ["character"]
  JUMPIFLT R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  RETURN R4 1
  GETTABLEKS R5 R2 K2 ["line"]
  GETTABLEKS R6 R3 K2 ["line"]
  JUMPIFLT R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  RETURN R4 1
  GETTABLEKS R3 R0 K4 ["key"]
  GETTABLEKS R4 R1 K4 ["key"]
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["SetScriptExpansion"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["treeManager"]
  NAMECALL R1 R1 K3 ["getExpansionTable"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["SetScriptSelection"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["treeManager"]
  NAMECALL R1 R1 K3 ["getSelectionList"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["ref"]
  GETIMPORT R1 K4 [Vector2.zero]
  SETTABLEKS R1 R0 K5 ["canvasPosition"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["areAllSelected"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onAllSelectedChecked"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["onToggle"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["onClick"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["onDoubleClick"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["resetSelection"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["onKeyPressed"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["onKeyReleased"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K14 ["onRightClick"]
  NEWCLOSURE R1 P9
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K15 ["getRowProps"]
  DUPCLOSURE R1 K16 [PROTO_10]
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K17 ["comparator"]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K18 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K19 ["treeManager"]
  GETTABLEKS R1 R0 K19 ["treeManager"]
  NEWCLOSURE R3 P11
  CAPTURE VAL R0
  NAMECALL R1 R1 K20 ["connectToExpandedChanged"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K19 ["treeManager"]
  NEWCLOSURE R3 P12
  CAPTURE VAL R0
  NAMECALL R1 R1 K21 ["connectToSelectedChanged"]
  CALL R1 2 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["ref"]
  NAMECALL R1 R1 K1 ["getValue"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K2 ["TreeView"]
  GETTABLEKS R2 R3 K3 ["List"]
  RETURN R2 1

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["preserveCanvasPosition"]
  JUMPIF R0 [+6]
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["CanvasPosition"]
  SETTABLEKS R1 R0 K2 ["canvasPosition"]
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["previousCanvasSize"]
  JUMPIFNOT R0 [+20]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["previousCanvasSize"]
  GETTABLEKS R1 R2 K1 ["Y"]
  GETTABLEKS R0 R1 K2 ["Offset"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["CanvasSize"]
  GETTABLEKS R2 R3 K1 ["Y"]
  GETTABLEKS R1 R2 K2 ["Offset"]
  JUMPIFNOTLT R1 R0 [+5]
  GETUPVAL R0 1
  LOADB R1 1
  SETTABLEKS R1 R0 K4 ["preserveCanvasPosition"]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K4 ["preserveCanvasPosition"]
  JUMPIFNOT R0 [+28]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K5 ["canvasPosition"]
  JUMPIFNOT R0 [+24]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["canvasPosition"]
  GETTABLEKS R0 R1 K1 ["Y"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["CanvasSize"]
  GETTABLEKS R2 R3 K1 ["Y"]
  GETTABLEKS R1 R2 K2 ["Offset"]
  JUMPIFNOTLE R0 R1 [+11]
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["canvasPosition"]
  SETTABLEKS R1 R0 K6 ["CanvasPosition"]
  GETUPVAL R0 1
  LOADB R1 0
  SETTABLEKS R1 R0 K4 ["preserveCanvasPosition"]
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["CanvasSize"]
  SETTABLEKS R1 R0 K0 ["previousCanvasSize"]
  RETURN R0 0

PROTO_17:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["filter"]
  GETTABLEKS R3 R1 K2 ["diagnostics"]
  GETTABLEKS R4 R1 K3 ["revertedScripts"]
  GETTABLEKS R5 R1 K4 ["initialIssueCounts"]
  GETTABLEKS R6 R1 K5 ["completedScripts"]
  GETTABLEKS R7 R1 K6 ["Localization"]
  GETTABLEKS R8 R1 K7 ["ScriptConversionContext"]
  NAMECALL R9 R0 K8 ["getScroller"]
  CALL R9 1 1
  LOADK R12 K9 ["CanvasPosition"]
  NAMECALL R10 R9 K10 ["GetPropertyChangedSignal"]
  CALL R10 2 1
  NEWCLOSURE R12 P0
  CAPTURE VAL R0
  CAPTURE VAL R9
  NAMECALL R10 R10 K11 ["Connect"]
  CALL R10 2 1
  SETTABLEKS R10 R0 K12 ["onCanvasPositionChanged"]
  LOADK R12 K13 ["CanvasSize"]
  NAMECALL R10 R9 K10 ["GetPropertyChangedSignal"]
  CALL R10 2 1
  NEWCLOSURE R12 P1
  CAPTURE VAL R9
  CAPTURE VAL R0
  NAMECALL R10 R10 K11 ["Connect"]
  CALL R10 2 1
  SETTABLEKS R10 R0 K14 ["onCanvasSizeChanged"]
  GETTABLEKS R10 R0 K15 ["treeManager"]
  DUPTABLE R12 K16 [{"diagnostics", "completedScripts", "initialIssueCounts", "revertedScripts", "filter", "Localization", "ScriptConversionContext"}]
  SETTABLEKS R3 R12 K2 ["diagnostics"]
  SETTABLEKS R6 R12 K5 ["completedScripts"]
  SETTABLEKS R5 R12 K4 ["initialIssueCounts"]
  SETTABLEKS R4 R12 K3 ["revertedScripts"]
  LOADK R16 K17 ["ScriptConversion"]
  LOADK R17 K18 ["FilterNone"]
  NAMECALL R14 R7 K19 ["getText"]
  CALL R14 3 1
  JUMPIFEQ R2 R14 [+3]
  MOVE R13 R2
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K1 ["filter"]
  SETTABLEKS R7 R12 K6 ["Localization"]
  SETTABLEKS R8 R12 K7 ["ScriptConversionContext"]
  NAMECALL R10 R10 K20 ["buildTreeItems"]
  CALL R10 2 0
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K21 ["SetScriptExpansion"]
  GETTABLEKS R11 R0 K15 ["treeManager"]
  NAMECALL R11 R11 K22 ["getExpansionTable"]
  CALL R11 1 -1
  CALL R10 -1 0
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K23 ["SetScriptSelection"]
  GETTABLEKS R11 R0 K15 ["treeManager"]
  NAMECALL R11 R11 K24 ["getSelectionList"]
  CALL R11 1 -1
  CALL R10 -1 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["selection"]
  GETTABLEKS R3 R1 K2 ["expansion"]
  GETTABLEKS R4 R1 K3 ["Size"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  GETTABLEKS R6 R1 K5 ["Stylizer"]
  GETTABLEKS R7 R6 K6 ["SelectAllRow"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K10 [{"Size", "ForwardRef", "LayoutOrder", "Layout"}]
  SETTABLEKS R4 R10 K3 ["Size"]
  GETTABLEKS R11 R0 K11 ["ref"]
  SETTABLEKS R11 R10 K8 ["ForwardRef"]
  SETTABLEKS R5 R10 K4 ["LayoutOrder"]
  GETIMPORT R11 K15 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K9 ["Layout"]
  DUPTABLE R11 K18 [{"SelectAllRow", "TreeView", "KeyboardListener"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K23 [{"IsChecked", "OnCheckboxClick", "RowHeight", "Padding"}]
  NAMECALL R15 R0 K24 ["areAllSelected"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K19 ["IsChecked"]
  GETTABLEKS R15 R0 K25 ["onAllSelectedChecked"]
  SETTABLEKS R15 R14 K20 ["OnCheckboxClick"]
  GETTABLEKS R15 R7 K21 ["RowHeight"]
  SETTABLEKS R15 R14 K21 ["RowHeight"]
  GETTABLEKS R15 R7 K22 ["Padding"]
  SETTABLEKS R15 R14 K22 ["Padding"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K6 ["SelectAllRow"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K33 [{"Size", "Expansion", "Selection", "RootItems", "ScrollingDirection", "RowComponent", "RowHeight", "GetRowProps", "SortChildren"}]
  GETIMPORT R15 K36 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  GETTABLEKS R20 R7 K21 ["RowHeight"]
  MINUS R19 R20
  CALL R15 4 1
  SETTABLEKS R15 R14 K3 ["Size"]
  SETTABLEKS R3 R14 K26 ["Expansion"]
  SETTABLEKS R2 R14 K27 ["Selection"]
  GETTABLEKS R15 R0 K37 ["treeManager"]
  NAMECALL R15 R15 K38 ["getItems"]
  CALL R15 1 1
  JUMPIF R15 [+2]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K28 ["RootItems"]
  GETIMPORT R15 K40 [Enum.ScrollingDirection.Y]
  SETTABLEKS R15 R14 K29 ["ScrollingDirection"]
  GETUPVAL R15 4
  SETTABLEKS R15 R14 K30 ["RowComponent"]
  GETTABLEKS R15 R6 K21 ["RowHeight"]
  SETTABLEKS R15 R14 K21 ["RowHeight"]
  GETTABLEKS R15 R0 K41 ["getRowProps"]
  SETTABLEKS R15 R14 K31 ["GetRowProps"]
  GETTABLEKS R15 R0 K42 ["comparator"]
  SETTABLEKS R15 R14 K32 ["SortChildren"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K16 ["TreeView"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K45 [{"OnKeyPressed", "OnKeyReleased"}]
  GETTABLEKS R15 R0 K46 ["onKeyPressed"]
  SETTABLEKS R15 R14 K43 ["OnKeyPressed"]
  GETTABLEKS R15 R0 K47 ["onKeyReleased"]
  SETTABLEKS R15 R14 K44 ["OnKeyReleased"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["KeyboardListener"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_19:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R3 K1 ["Localization"]
  GETTABLEKS R5 R3 K2 ["diagnostics"]
  GETTABLEKS R6 R1 K2 ["diagnostics"]
  JUMPIFNOTEQ R5 R6 [+7]
  GETTABLEKS R5 R3 K3 ["filter"]
  GETTABLEKS R6 R1 K3 ["filter"]
  JUMPIFEQ R5 R6 [+44]
  GETTABLEKS R5 R0 K4 ["treeManager"]
  DUPTABLE R7 K9 [{"diagnostics", "completedScripts", "initialIssueCounts", "revertedScripts", "filter", "Localization", "ScriptConversionContext"}]
  GETTABLEKS R8 R1 K2 ["diagnostics"]
  SETTABLEKS R8 R7 K2 ["diagnostics"]
  GETTABLEKS R8 R1 K5 ["completedScripts"]
  SETTABLEKS R8 R7 K5 ["completedScripts"]
  GETTABLEKS R8 R1 K6 ["initialIssueCounts"]
  SETTABLEKS R8 R7 K6 ["initialIssueCounts"]
  GETTABLEKS R8 R1 K7 ["revertedScripts"]
  SETTABLEKS R8 R7 K7 ["revertedScripts"]
  GETTABLEKS R9 R1 K3 ["filter"]
  LOADK R12 K10 ["ScriptConversion"]
  LOADK R13 K11 ["FilterNone"]
  NAMECALL R10 R4 K12 ["getText"]
  CALL R10 3 1
  JUMPIFEQ R9 R10 [+4]
  GETTABLEKS R8 R1 K3 ["filter"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K3 ["filter"]
  SETTABLEKS R4 R7 K1 ["Localization"]
  GETTABLEKS R8 R3 K8 ["ScriptConversionContext"]
  SETTABLEKS R8 R7 K8 ["ScriptConversionContext"]
  NAMECALL R5 R5 K13 ["buildTreeItems"]
  CALL R5 2 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["diagnostics"]
  GETTABLEKS R4 R1 K1 ["diagnostics"]
  JUMPIFNOTEQ R3 R4 [+9]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["filter"]
  GETTABLEKS R4 R1 K2 ["filter"]
  JUMPIFEQ R3 R4 [+21]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["SetScriptExpansion"]
  GETTABLEKS R4 R0 K4 ["treeManager"]
  NAMECALL R4 R4 K5 ["getExpansionTable"]
  CALL R4 1 -1
  CALL R3 -1 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K6 ["SetScriptSelection"]
  GETTABLEKS R4 R0 K4 ["treeManager"]
  NAMECALL R4 R4 K7 ["getSelectionList"]
  CALL R4 1 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R1 R0 K0 ["treeManager"]
  NAMECALL R1 R1 K1 ["terminate"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["onCanvasSizeChanged"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["onCanvasSizeChanged"]
  NAMECALL R1 R1 K3 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K4 ["onCanvasPositionChanged"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K4 ["onCanvasPositionChanged"]
  NAMECALL R1 R1 K3 ["Disconnect"]
  CALL R1 1 0
  LOADB R1 0
  SETTABLEKS R1 R0 K5 ["preserveCanvasPosition"]
  RETURN R0 0

PROTO_22:
  DUPTABLE R2 K8 [{"expansion", "selection", "diagnostics", "completedScripts", "initialIssueCounts", "revertedScripts", "filter", "replaceRules"}]
  GETTABLEKS R4 R0 K9 ["ScriptConversion"]
  GETTABLEKS R3 R4 K0 ["expansion"]
  SETTABLEKS R3 R2 K0 ["expansion"]
  GETTABLEKS R4 R0 K9 ["ScriptConversion"]
  GETTABLEKS R3 R4 K1 ["selection"]
  SETTABLEKS R3 R2 K1 ["selection"]
  GETTABLEKS R4 R0 K9 ["ScriptConversion"]
  GETTABLEKS R3 R4 K2 ["diagnostics"]
  SETTABLEKS R3 R2 K2 ["diagnostics"]
  GETTABLEKS R4 R0 K9 ["ScriptConversion"]
  GETTABLEKS R3 R4 K3 ["completedScripts"]
  SETTABLEKS R3 R2 K3 ["completedScripts"]
  GETTABLEKS R4 R0 K9 ["ScriptConversion"]
  GETTABLEKS R3 R4 K4 ["initialIssueCounts"]
  SETTABLEKS R3 R2 K4 ["initialIssueCounts"]
  GETTABLEKS R4 R0 K9 ["ScriptConversion"]
  GETTABLEKS R3 R4 K5 ["revertedScripts"]
  SETTABLEKS R3 R2 K5 ["revertedScripts"]
  GETTABLEKS R4 R0 K9 ["ScriptConversion"]
  GETTABLEKS R3 R4 K6 ["filter"]
  SETTABLEKS R3 R2 K6 ["filter"]
  GETTABLEKS R4 R0 K9 ["ScriptConversion"]
  GETTABLEKS R3 R4 K7 ["replaceRules"]
  SETTABLEKS R3 R2 K7 ["replaceRules"]
  RETURN R2 1

PROTO_23:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_28:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  LOADB R7 0
  MOVE R8 R2
  CALL R4 4 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_29:
  GETUPVAL R7 0
  GETUPVAL R8 1
  MOVE R9 R0
  MOVE R10 R1
  MOVE R11 R2
  MOVE R12 R3
  MOVE R13 R4
  MOVE R14 R5
  LOADB R15 1
  MOVE R16 R6
  CALL R8 8 -1
  CALL R7 -1 0
  RETURN R0 0

PROTO_30:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_31:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_32:
  DUPTABLE R1 K9 [{"OnScriptsReverted", "SetReplaceProgress", "SetProgressBarMessageKey", "SetScriptExpansion", "SetScriptSelection", "ReplaceWithRules", "ReplaceWithSuggestion", "RevertScripts", "UndoRevert"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["OnScriptsReverted"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetReplaceProgress"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["SetProgressBarMessageKey"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["SetScriptExpansion"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["SetScriptSelection"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K5 ["ReplaceWithRules"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R1 K6 ["ReplaceWithSuggestion"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  SETTABLEKS R2 R1 K7 ["RevertScripts"]
  NEWCLOSURE R2 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  SETTABLEKS R2 R1 K8 ["UndoRevert"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Actions"]
  GETTABLEKS R6 R7 K13 ["SetReplaceProgress"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Actions"]
  GETTABLEKS R7 R8 K14 ["SetScriptSelection"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K12 ["Actions"]
  GETTABLEKS R8 R9 K15 ["SetScriptExpansion"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K11 ["Src"]
  GETTABLEKS R10 R11 K12 ["Actions"]
  GETTABLEKS R9 R10 K16 ["SetProgressBarMessageKey"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K11 ["Src"]
  GETTABLEKS R11 R12 K17 ["Thunks"]
  GETTABLEKS R10 R11 K18 ["OnScriptsReverted"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K11 ["Src"]
  GETTABLEKS R12 R13 K17 ["Thunks"]
  GETTABLEKS R11 R12 K19 ["ReplaceWithRules"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K11 ["Src"]
  GETTABLEKS R13 R14 K17 ["Thunks"]
  GETTABLEKS R12 R13 K20 ["ReplaceWithSuggestion"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K11 ["Src"]
  GETTABLEKS R14 R15 K17 ["Thunks"]
  GETTABLEKS R13 R14 K21 ["RevertScripts"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K11 ["Src"]
  GETTABLEKS R15 R16 K17 ["Thunks"]
  GETTABLEKS R14 R15 K22 ["UndoRevert"]
  CALL R13 1 1
  GETTABLEKS R15 R0 K11 ["Src"]
  GETTABLEKS R14 R15 K23 ["Components"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R14 K24 ["ScriptIssueRow"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R14 K25 ["ScriptConversionRightClickMenu"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R14 K26 ["SelectAllRow"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K11 ["Src"]
  GETTABLEKS R20 R21 K27 ["Contexts"]
  GETTABLEKS R19 R20 K28 ["ScriptConversionContext"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K11 ["Src"]
  GETTABLEKS R21 R22 K29 ["Util"]
  GETTABLEKS R20 R21 K30 ["ScriptTreeManager"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R24 R0 K11 ["Src"]
  GETTABLEKS R23 R24 K29 ["Util"]
  GETTABLEKS R22 R23 K31 ["ScriptAnalysis"]
  GETTABLEKS R21 R22 K32 ["Constants"]
  CALL R20 1 1
  GETTABLEKS R21 R3 K33 ["UI"]
  GETTABLEKS R22 R21 K34 ["Pane"]
  GETTABLEKS R23 R21 K35 ["TreeView"]
  GETTABLEKS R24 R21 K36 ["KeyboardListener"]
  GETTABLEKS R25 R1 K37 ["PureComponent"]
  LOADK R27 K38 ["ScriptIssueTreeView"]
  NAMECALL R25 R25 K39 ["extend"]
  CALL R25 2 1
  DUPCLOSURE R26 K40 [PROTO_13]
  CAPTURE VAL R1
  CAPTURE VAL R16
  CAPTURE VAL R20
  CAPTURE VAL R19
  SETTABLEKS R26 R25 K41 ["init"]
  DUPCLOSURE R26 K42 [PROTO_14]
  SETTABLEKS R26 R25 K43 ["getScroller"]
  DUPCLOSURE R26 K44 [PROTO_17]
  SETTABLEKS R26 R25 K45 ["didMount"]
  DUPCLOSURE R26 K46 [PROTO_18]
  CAPTURE VAL R1
  CAPTURE VAL R22
  CAPTURE VAL R17
  CAPTURE VAL R23
  CAPTURE VAL R15
  CAPTURE VAL R24
  SETTABLEKS R26 R25 K47 ["render"]
  DUPCLOSURE R26 K48 [PROTO_19]
  SETTABLEKS R26 R25 K49 ["willUpdate"]
  DUPCLOSURE R26 K50 [PROTO_20]
  SETTABLEKS R26 R25 K51 ["didUpdate"]
  DUPCLOSURE R26 K52 [PROTO_21]
  SETTABLEKS R26 R25 K53 ["willUnmount"]
  GETTABLEKS R26 R4 K54 ["withContext"]
  DUPTABLE R27 K59 [{"Analytics", "Plugin", "Localization", "Stylizer", "ScriptConversionContext"}]
  GETTABLEKS R28 R4 K55 ["Analytics"]
  SETTABLEKS R28 R27 K55 ["Analytics"]
  GETTABLEKS R28 R4 K56 ["Plugin"]
  SETTABLEKS R28 R27 K56 ["Plugin"]
  GETTABLEKS R28 R4 K57 ["Localization"]
  SETTABLEKS R28 R27 K57 ["Localization"]
  GETTABLEKS R28 R4 K58 ["Stylizer"]
  SETTABLEKS R28 R27 K58 ["Stylizer"]
  SETTABLEKS R18 R27 K28 ["ScriptConversionContext"]
  CALL R26 1 1
  MOVE R27 R25
  CALL R26 1 1
  MOVE R25 R26
  DUPCLOSURE R26 K60 [PROTO_22]
  DUPCLOSURE R27 K61 [PROTO_32]
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  GETTABLEKS R28 R2 K62 ["connect"]
  MOVE R29 R26
  MOVE R30 R27
  CALL R28 2 1
  MOVE R29 R25
  CALL R28 1 -1
  RETURN R28 -1
