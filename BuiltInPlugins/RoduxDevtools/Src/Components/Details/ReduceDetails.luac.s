PROTO_0:
  NEWTABLE R1 0 0
  LOADN R4 1
  GETTABLEKS R5 R0 K1 ["LineCount"]
  ORK R2 R5 K0 [5]
  LOADN R3 1
  FORNPREP R2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["createElement"]
  LOADK R6 K3 ["Frame"]
  DUPTABLE R7 K7 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R8 K10 [UDim2.fromOffset]
  GETIMPORT R9 K13 [math.random]
  LOADN R10 50
  LOADN R11 144
  CALL R9 2 1
  LOADN R10 16
  CALL R8 2 1
  SETTABLEKS R8 R7 K4 ["Size"]
  LOADK R8 K14 [0.85]
  SETTABLEKS R8 R7 K5 ["BackgroundTransparency"]
  GETIMPORT R8 K17 [Color3.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R8 3 1
  SETTABLEKS R8 R7 K6 ["BackgroundColor3"]
  DUPTABLE R8 K19 [{"Corner"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["createElement"]
  LOADK R10 K20 ["UICorner"]
  DUPTABLE R11 K22 [{"CornerRadius"}]
  GETIMPORT R12 K24 [UDim.new]
  LOADN R13 0
  LOADN R14 8
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["CornerRadius"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K18 ["Corner"]
  CALL R5 3 1
  SETTABLE R5 R1 R4
  FORNLOOP R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  LOADK R3 K3 ["Frame"]
  DUPTABLE R4 K26 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R5 K10 [UDim2.fromOffset]
  LOADN R6 1
  LOADN R7 0
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["Size"]
  GETIMPORT R5 K29 [Enum.AutomaticSize.Y]
  SETTABLEKS R5 R4 K25 ["AutomaticSize"]
  LOADN R5 1
  SETTABLEKS R5 R4 K5 ["BackgroundTransparency"]
  DUPTABLE R5 K32 [{"Layout", "Placeholders"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K33 ["UIListLayout"]
  DUPTABLE R8 K39 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R9 K41 [Enum.SortOrder.Name]
  SETTABLEKS R9 R8 K34 ["SortOrder"]
  GETIMPORT R9 K43 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K35 ["FillDirection"]
  GETIMPORT R9 K45 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K36 ["HorizontalAlignment"]
  GETIMPORT R9 K47 [Enum.VerticalAlignment.Top]
  SETTABLEKS R9 R8 K37 ["VerticalAlignment"]
  GETIMPORT R9 K24 [UDim.new]
  LOADN R10 0
  LOADN R11 8
  CALL R9 2 1
  SETTABLEKS R9 R8 K38 ["Padding"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K30 ["Layout"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K48 ["Fragment"]
  LOADNIL R8
  MOVE R9 R1
  CALL R6 3 1
  SETTABLEKS R6 R5 K31 ["Placeholders"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K7 [{"Size", "Position", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  GETTABLEKS R4 R0 K1 ["Size"]
  SETTABLEKS R4 R3 K1 ["Size"]
  GETTABLEKS R4 R0 K2 ["Position"]
  SETTABLEKS R4 R3 K2 ["Position"]
  GETTABLEKS R4 R0 K3 ["LayoutOrder"]
  SETTABLEKS R4 R3 K3 ["LayoutOrder"]
  GETIMPORT R4 K11 [Enum.FillDirection.Horizontal]
  SETTABLEKS R4 R3 K4 ["Layout"]
  GETIMPORT R4 K13 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R4 R3 K5 ["HorizontalAlignment"]
  GETIMPORT R4 K15 [Enum.VerticalAlignment.Center]
  SETTABLEKS R4 R3 K6 ["VerticalAlignment"]
  DUPTABLE R4 K17 [{"ToggleAction"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K25 [{"Size", "AutomaticSize", "BackgroundStyle", "LeftIcon", "Text", "TooltipText", "Disabled", "OnClick"}]
  GETIMPORT R8 K28 [UDim2.fromScale]
  LOADN R9 0
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K1 ["Size"]
  GETIMPORT R8 K30 [Enum.AutomaticSize.X]
  SETTABLEKS R8 R7 K18 ["AutomaticSize"]
  LOADK R8 K31 ["None"]
  SETTABLEKS R8 R7 K19 ["BackgroundStyle"]
  GETTABLEKS R9 R0 K32 ["IsUndone"]
  JUMPIFNOT R9 [+2]
  LOADK R8 K33 ["rbxasset://textures/RoduxDevtools/Redo.png"]
  JUMP [+1]
  LOADK R8 K34 ["rbxasset://textures/RoduxDevtools/Undo.png"]
  SETTABLEKS R8 R7 K20 ["LeftIcon"]
  GETTABLEKS R9 R0 K32 ["IsUndone"]
  JUMPIFNOT R9 [+8]
  GETTABLEKS R8 R0 K35 ["Localization"]
  LOADK R10 K36 ["ReduceDetails"]
  LOADK R11 K37 ["ToggleAction.RedoText"]
  NAMECALL R8 R8 K38 ["getText"]
  CALL R8 3 1
  JUMP [+7]
  GETTABLEKS R8 R0 K35 ["Localization"]
  LOADK R10 K36 ["ReduceDetails"]
  LOADK R11 K39 ["ToggleAction.UndoText"]
  NAMECALL R8 R8 K38 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K21 ["Text"]
  GETTABLEKS R9 R0 K40 ["IsDevtools"]
  JUMPIFNOT R9 [+8]
  GETTABLEKS R8 R0 K35 ["Localization"]
  LOADK R10 K36 ["ReduceDetails"]
  LOADK R11 K41 ["ToggleAction.IsDevtools"]
  NAMECALL R8 R8 K38 ["getText"]
  CALL R8 3 1
  JUMP [+18]
  GETTABLEKS R9 R0 K32 ["IsUndone"]
  JUMPIFNOT R9 [+8]
  GETTABLEKS R8 R0 K35 ["Localization"]
  LOADK R10 K36 ["ReduceDetails"]
  LOADK R11 K42 ["ToggleAction.RedoTooltip"]
  NAMECALL R8 R8 K38 ["getText"]
  CALL R8 3 1
  JUMP [+7]
  GETTABLEKS R8 R0 K35 ["Localization"]
  LOADK R10 K36 ["ReduceDetails"]
  LOADK R11 K43 ["ToggleAction.UndoTooltip"]
  NAMECALL R8 R8 K38 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K22 ["TooltipText"]
  GETTABLEKS R8 R0 K40 ["IsDevtools"]
  SETTABLEKS R8 R7 K23 ["Disabled"]
  GETTABLEKS R8 R0 K44 ["OnToggleActionClick"]
  SETTABLEKS R8 R7 K24 ["OnClick"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K16 ["ToggleAction"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K7 [{"Size", "Position", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  GETTABLEKS R4 R0 K1 ["Size"]
  SETTABLEKS R4 R3 K1 ["Size"]
  GETTABLEKS R4 R0 K2 ["Position"]
  SETTABLEKS R4 R3 K2 ["Position"]
  GETTABLEKS R4 R0 K3 ["LayoutOrder"]
  SETTABLEKS R4 R3 K3 ["LayoutOrder"]
  GETIMPORT R4 K11 [Enum.FillDirection.Horizontal]
  SETTABLEKS R4 R3 K4 ["Layout"]
  GETIMPORT R4 K13 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R4 R3 K5 ["HorizontalAlignment"]
  GETIMPORT R4 K15 [Enum.VerticalAlignment.Center]
  SETTABLEKS R4 R3 K6 ["VerticalAlignment"]
  DUPTABLE R4 K18 [{"SetState", "Tabs"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K25 [{"LayoutOrder", "Size", "AutomaticSize", "BackgroundStyle", "LeftIcon", "Text", "TooltipText", "OnClick"}]
  LOADN R8 255
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  GETIMPORT R8 K28 [UDim2.fromScale]
  LOADN R9 0
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K1 ["Size"]
  GETIMPORT R8 K30 [Enum.AutomaticSize.X]
  SETTABLEKS R8 R7 K19 ["AutomaticSize"]
  LOADK R8 K31 ["None"]
  SETTABLEKS R8 R7 K20 ["BackgroundStyle"]
  LOADK R8 K32 ["rbxasset://textures/RoduxDevtools/SetState.png"]
  SETTABLEKS R8 R7 K21 ["LeftIcon"]
  GETTABLEKS R8 R0 K33 ["Localization"]
  LOADK R10 K34 ["ReduceDetails"]
  LOADK R11 K35 ["SetState.Text"]
  NAMECALL R8 R8 K36 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K22 ["Text"]
  GETTABLEKS R8 R0 K33 ["Localization"]
  LOADK R10 K34 ["ReduceDetails"]
  LOADK R11 K37 ["SetState.Tooltip"]
  NAMECALL R8 R8 K36 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K23 ["TooltipText"]
  GETTABLEKS R8 R0 K38 ["OnSetStateClick"]
  SETTABLEKS R8 R7 K24 ["OnClick"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K16 ["SetState"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K41 [{"Tabs", "SelectedTab", "OnTabSelected"}]
  GETTABLEKS R8 R0 K17 ["Tabs"]
  SETTABLEKS R8 R7 K17 ["Tabs"]
  GETTABLEKS R8 R0 K42 ["Selected"]
  SETTABLEKS R8 R7 K39 ["SelectedTab"]
  GETTABLEKS R8 R0 K40 ["OnTabSelected"]
  SETTABLEKS R8 R7 K40 ["OnTabSelected"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K17 ["Tabs"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"selectedStateTab"}]
  SETTABLEKS R0 R3 K0 ["selectedStateTab"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  NEWTABLE R1 0 2
  DUPTABLE R2 K3 [{"Icon", "Label", "Tooltip"}]
  LOADK R3 K4 ["rbxasset://textures/RoduxDevtools/StateTabs/Diff.png"]
  SETTABLEKS R3 R2 K0 ["Icon"]
  LOADK R3 K5 ["Diff"]
  SETTABLEKS R3 R2 K1 ["Label"]
  LOADK R3 K6 ["The changes in state as a result of the reduced action"]
  SETTABLEKS R3 R2 K2 ["Tooltip"]
  DUPTABLE R3 K3 [{"Icon", "Label", "Tooltip"}]
  LOADK R4 K7 ["rbxasset://textures/RoduxDevtools/StateTabs/Full.png"]
  SETTABLEKS R4 R3 K0 ["Icon"]
  LOADK R4 K8 ["Full"]
  SETTABLEKS R4 R3 K1 ["Label"]
  LOADK R4 K9 ["The full state after the action was reduced"]
  SETTABLEKS R4 R3 K2 ["Tooltip"]
  SETLIST R1 R2 2 [1]
  SETTABLEKS R1 R0 K10 ["stateTabs"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["setStateTab"]
  DUPTABLE R3 K19 [{"summaryExpanded", "actionExpanded", "stateExpanded", "selectedStateTab", "diffText", "fullText", "actionText"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K12 ["summaryExpanded"]
  LOADB R4 1
  SETTABLEKS R4 R3 K13 ["actionExpanded"]
  LOADB R4 1
  SETTABLEKS R4 R3 K14 ["stateExpanded"]
  GETTABLEKS R5 R0 K10 ["stateTabs"]
  GETTABLEN R4 R5 1
  SETTABLEKS R4 R3 K15 ["selectedStateTab"]
  LOADNIL R4
  SETTABLEKS R4 R3 K16 ["diffText"]
  LOADNIL R4
  SETTABLEKS R4 R3 K17 ["fullText"]
  LOADNIL R4
  SETTABLEKS R4 R3 K18 ["actionText"]
  NAMECALL R1 R0 K20 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["computeText"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["stateTabs"]
  GETTABLEN R1 R2 1
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["Localization"]
  LOADK R4 K3 ["ReduceDetails"]
  LOADK R5 K4 ["StateTab.Diff.Label"]
  NAMECALL R2 R2 K5 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K6 ["Label"]
  GETTABLEKS R2 R0 K0 ["stateTabs"]
  GETTABLEN R1 R2 1
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["Localization"]
  LOADK R4 K3 ["ReduceDetails"]
  LOADK R5 K7 ["StateTab.Diff.Tooltip"]
  NAMECALL R2 R2 K5 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K8 ["Tooltip"]
  GETTABLEKS R2 R0 K0 ["stateTabs"]
  GETTABLEN R1 R2 2
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["Localization"]
  LOADK R4 K3 ["ReduceDetails"]
  LOADK R5 K9 ["StateTab.Full.Label"]
  NAMECALL R2 R2 K5 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K6 ["Label"]
  GETTABLEKS R2 R0 K0 ["stateTabs"]
  GETTABLEN R1 R2 2
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["Localization"]
  LOADK R4 K3 ["ReduceDetails"]
  LOADK R5 K10 ["StateTab.Full.Tooltip"]
  NAMECALL R2 R2 K5 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K8 ["Tooltip"]
  GETIMPORT R1 K13 [task.defer]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Event"]
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R4 R3 K3 ["isStub"]
  JUMPIFNOT R4 [+1]
  RETURN R0 0
  GETTABLEKS R4 R3 K0 ["props"]
  NEWTABLE R5 0 3
  GETTABLEKS R6 R2 K4 ["selectedStateTab"]
  GETTABLEKS R8 R0 K5 ["stateTabs"]
  GETTABLEN R7 R8 1
  JUMPIFNOTEQ R6 R7 [+6]
  LOADK R6 K6 ["diff"]
  SETTABLEN R6 R5 1
  LOADK R6 K7 ["full"]
  SETTABLEN R6 R5 2
  JUMP [+4]
  LOADK R6 K7 ["full"]
  SETTABLEN R6 R5 1
  LOADK R6 K6 ["diff"]
  SETTABLEN R6 R5 2
  GETTABLEKS R6 R2 K8 ["actionExpanded"]
  JUMPIFNOT R6 [+9]
  LOADN R8 1
  LOADK R9 K9 ["action"]
  FASTCALL3 TABLE_INSERT R5 R8 R9
  MOVE R7 R5
  GETIMPORT R6 K12 [table.insert]
  CALL R6 3 0
  JUMP [+2]
  LOADK R6 K9 ["action"]
  SETTABLEN R6 R5 3
  MOVE R6 R5
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K2 ["Event"]
  JUMPIFEQ R11 R3 [+2]
  RETURN R0 0
  JUMPIFNOTEQKS R10 K9 ["action"] [+25]
  GETUPVAL R11 0
  GETTABLEKS R12 R4 K9 ["action"]
  DUPTABLE R13 K17 [{"depth", "multiline", "maxLineLength", "indent"}]
  LOADN R14 100
  SETTABLEKS R14 R13 K13 ["depth"]
  LOADB R14 1
  SETTABLEKS R14 R13 K14 ["multiline"]
  LOADN R14 100
  SETTABLEKS R14 R13 K15 ["maxLineLength"]
  LOADK R14 K18 ["  "]
  SETTABLEKS R14 R13 K16 ["indent"]
  CALL R11 2 1
  DUPTABLE R14 K20 [{"actionText"}]
  SETTABLEKS R11 R14 K19 ["actionText"]
  NAMECALL R12 R0 K21 ["setState"]
  CALL R12 2 0
  JUMP [+54]
  JUMPIFNOTEQKS R10 K6 ["diff"] [+28]
  GETTABLEKS R12 R4 K22 ["lastState"]
  JUMPIFEQKNIL R12 [+8]
  GETUPVAL R11 1
  GETTABLEKS R12 R4 K22 ["lastState"]
  GETTABLEKS R13 R4 K1 ["state"]
  CALL R11 2 1
  JUMP [+9]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K23 ["Localization"]
  LOADK R13 K24 ["ReduceDetails"]
  LOADK R14 K25 ["NoPriorState"]
  NAMECALL R11 R11 K26 ["getText"]
  CALL R11 3 1
  DUPTABLE R14 K28 [{"diffText"}]
  SETTABLEKS R11 R14 K27 ["diffText"]
  NAMECALL R12 R0 K21 ["setState"]
  CALL R12 2 0
  JUMP [+25]
  JUMPIFNOTEQKS R10 K7 ["full"] [+24]
  GETUPVAL R11 0
  GETTABLEKS R12 R4 K1 ["state"]
  DUPTABLE R13 K17 [{"depth", "multiline", "maxLineLength", "indent"}]
  LOADN R14 100
  SETTABLEKS R14 R13 K13 ["depth"]
  LOADB R14 1
  SETTABLEKS R14 R13 K14 ["multiline"]
  LOADN R14 100
  SETTABLEKS R14 R13 K15 ["maxLineLength"]
  LOADK R14 K18 ["  "]
  SETTABLEKS R14 R13 K16 ["indent"]
  CALL R11 2 1
  DUPTABLE R14 K30 [{"fullText"}]
  SETTABLEKS R11 R14 K29 ["fullText"]
  NAMECALL R12 R0 K21 ["setState"]
  CALL R12 2 0
  GETIMPORT R11 K33 [task.wait]
  LOADK R12 K34 [0.0333333333333333]
  CALL R11 1 0
  FORGLOOP R6 2 [-92]
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["computeText"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Event"]
  GETTABLEKS R3 R1 K1 ["Event"]
  JUMPIFEQ R2 R3 [+25]
  DUPTABLE R4 K5 [{"diffText", "fullText", "actionText"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["None"]
  SETTABLEKS R5 R4 K2 ["diffText"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["None"]
  SETTABLEKS R5 R4 K3 ["fullText"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["None"]
  SETTABLEKS R5 R4 K4 ["actionText"]
  NAMECALL R2 R0 K7 ["setState"]
  CALL R2 2 0
  GETIMPORT R2 K10 [task.defer]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R1 K1 [{"summaryExpanded"}]
  GETTABLEKS R3 R0 K0 ["summaryExpanded"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["summaryExpanded"]
  RETURN R1 1

PROTO_11:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_10]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_12:
  DUPTABLE R1 K1 [{"actionExpanded"}]
  GETTABLEKS R3 R0 K0 ["actionExpanded"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["actionExpanded"]
  RETURN R1 1

PROTO_13:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_12]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+19]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnRedoAction"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnRedoAction"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["SelectedIndex"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K3 ["OnUndoAction"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K3 ["OnUndoAction"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["SelectedIndex"]
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  DUPTABLE R1 K1 [{"stateExpanded"}]
  GETTABLEKS R3 R0 K0 ["stateExpanded"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["stateExpanded"]
  RETURN R1 1

PROTO_16:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_15]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnSetState"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnSetState"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["SelectedIndex"]
  CALL R0 1 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Event"]
  JUMPIF R2 [+2]
  LOADNIL R3
  RETURN R3 1
  GETTABLEKS R3 R2 K0 ["props"]
  GETTABLEKS R6 R0 K2 ["state"]
  GETTABLEKS R5 R6 K3 ["selectedStateTab"]
  GETTABLEKS R7 R0 K4 ["stateTabs"]
  GETTABLEN R6 R7 1
  JUMPIFNOTEQ R5 R6 [+6]
  GETTABLEKS R5 R0 K2 ["state"]
  GETTABLEKS R4 R5 K5 ["diffText"]
  JUMP [+4]
  GETTABLEKS R5 R0 K2 ["state"]
  GETTABLEKS R4 R5 K6 ["fullText"]
  GETTABLEKS R6 R0 K2 ["state"]
  GETTABLEKS R5 R6 K7 ["actionText"]
  LOADB R6 0
  GETTABLEKS R7 R2 K8 ["altered"]
  JUMPIFEQKNIL R7 [+9]
  GETTABLEKS R8 R2 K8 ["altered"]
  GETTABLEKS R7 R8 K9 ["skipped"]
  JUMPIFEQKB R7 TRUE [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETTABLEKS R8 R3 K10 ["isDevtools"]
  JUMPIFEQKB R8 TRUE [+2]
  LOADB R7 0 +1
  LOADB R7 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K11 ["createElement"]
  GETUPVAL R9 1
  LOADNIL R10
  DUPTABLE R11 K13 [{"ReduceDetails"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K11 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K18 [{"Size", "AutomaticCanvasSize", "Layout", "Spacing"}]
  GETIMPORT R15 K21 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K14 ["Size"]
  GETIMPORT R15 K25 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K15 ["AutomaticCanvasSize"]
  GETIMPORT R15 K28 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K16 ["Layout"]
  GETIMPORT R15 K31 [UDim.new]
  LOADN R16 0
  LOADN R17 5
  CALL R15 2 1
  SETTABLEKS R15 R14 K17 ["Spacing"]
  DUPTABLE R15 K37 [{"SummaryInfo", "SummarySeparator", "ActionInfo", "ActionSeparator", "StateInfo"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K45 [{"Style", "LayoutOrder", "Size", "Text", "ContentPadding", "HorizontalAlignment", "Expanded", "OnExpandedChanged"}]
  LOADK R19 K46 ["Section"]
  SETTABLEKS R19 R18 K38 ["Style"]
  GETUPVAL R19 4
  CALL R19 0 1
  SETTABLEKS R19 R18 K39 ["LayoutOrder"]
  GETIMPORT R19 K47 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 32
  CALL R19 4 1
  SETTABLEKS R19 R18 K14 ["Size"]
  GETTABLEKS R20 R0 K0 ["props"]
  GETTABLEKS R19 R20 K48 ["Localization"]
  LOADK R21 K12 ["ReduceDetails"]
  LOADK R22 K49 ["SummaryTitle"]
  NAMECALL R19 R19 K50 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K40 ["Text"]
  LOADN R19 5
  SETTABLEKS R19 R18 K41 ["ContentPadding"]
  GETIMPORT R19 K52 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K42 ["HorizontalAlignment"]
  GETTABLEKS R20 R0 K2 ["state"]
  GETTABLEKS R19 R20 K53 ["summaryExpanded"]
  SETTABLEKS R19 R18 K43 ["Expanded"]
  NEWCLOSURE R19 P0
  CAPTURE VAL R0
  SETTABLEKS R19 R18 K44 ["OnExpandedChanged"]
  DUPTABLE R19 K55 [{"SummaryLabel"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K11 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K58 [{"Size", "AutomaticSize", "TextXAlignment", "TextWrapped", "Text"}]
  GETIMPORT R23 K47 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K14 ["Size"]
  GETIMPORT R23 K25 [Enum.AutomaticSize.Y]
  SETTABLEKS R23 R22 K23 ["AutomaticSize"]
  GETIMPORT R23 K59 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K56 ["TextXAlignment"]
  LOADB R23 1
  SETTABLEKS R23 R22 K57 ["TextWrapped"]
  GETTABLEKS R24 R2 K60 ["isStub"]
  JUMPIFNOT R24 [+10]
  GETTABLEKS R24 R0 K0 ["props"]
  GETTABLEKS R23 R24 K48 ["Localization"]
  LOADK R25 K61 ["Common"]
  LOADK R26 K62 ["LoadingStub"]
  NAMECALL R23 R23 K50 ["getText"]
  CALL R23 3 1
  JUMP [+36]
  GETTABLEKS R24 R0 K0 ["props"]
  GETTABLEKS R23 R24 K48 ["Localization"]
  LOADK R25 K12 ["ReduceDetails"]
  LOADK R26 K63 ["Summary"]
  DUPTABLE R27 K68 [{"action", "elapsed", "timestamp", "source"}]
  GETTABLEKS R29 R3 K64 ["action"]
  GETTABLEKS R28 R29 K69 ["type"]
  SETTABLEKS R28 R27 K64 ["action"]
  GETTABLEKS R28 R3 K70 ["elapsedMs"]
  SETTABLEKS R28 R27 K65 ["elapsed"]
  GETIMPORT R28 K73 [DateTime.fromUnixTimestampMillis]
  GETTABLEKS R29 R2 K66 ["timestamp"]
  CALL R28 1 1
  LOADK R30 K74 ["h:mm:ss.SSS a"]
  LOADK R31 K75 ["en-us"]
  NAMECALL R28 R28 K76 ["FormatLocalTime"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K66 ["timestamp"]
  GETTABLEKS R28 R2 K67 ["source"]
  SETTABLEKS R28 R27 K67 ["source"]
  NAMECALL R23 R23 K50 ["getText"]
  CALL R23 4 1
  SETTABLEKS R23 R22 K40 ["Text"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K54 ["SummaryLabel"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K32 ["SummaryInfo"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["createElement"]
  GETUPVAL R17 6
  DUPTABLE R18 K77 [{"LayoutOrder"}]
  GETUPVAL R19 4
  CALL R19 0 1
  SETTABLEKS R19 R18 K39 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K33 ["SummarySeparator"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K80 [{"Style", "LayoutOrder", "Size", "Text", "ContentPadding", "HorizontalAlignment", "Expanded", "OnExpandedChanged", "HeaderComponent", "HeaderComponentProps"}]
  LOADK R19 K46 ["Section"]
  SETTABLEKS R19 R18 K38 ["Style"]
  GETUPVAL R19 4
  CALL R19 0 1
  SETTABLEKS R19 R18 K39 ["LayoutOrder"]
  GETIMPORT R19 K47 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 32
  CALL R19 4 1
  SETTABLEKS R19 R18 K14 ["Size"]
  GETTABLEKS R20 R0 K0 ["props"]
  GETTABLEKS R19 R20 K48 ["Localization"]
  LOADK R21 K12 ["ReduceDetails"]
  LOADK R22 K81 ["ActionTitle"]
  NAMECALL R19 R19 K50 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K40 ["Text"]
  LOADN R19 5
  SETTABLEKS R19 R18 K41 ["ContentPadding"]
  GETIMPORT R19 K52 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K42 ["HorizontalAlignment"]
  GETTABLEKS R20 R0 K2 ["state"]
  GETTABLEKS R19 R20 K82 ["actionExpanded"]
  SETTABLEKS R19 R18 K43 ["Expanded"]
  NEWCLOSURE R19 P1
  CAPTURE VAL R0
  SETTABLEKS R19 R18 K44 ["OnExpandedChanged"]
  GETUPVAL R19 7
  SETTABLEKS R19 R18 K78 ["HeaderComponent"]
  DUPTABLE R19 K86 [{"Localization", "IsUndone", "IsDevtools", "OnToggleActionClick"}]
  GETTABLEKS R21 R0 K0 ["props"]
  GETTABLEKS R20 R21 K48 ["Localization"]
  SETTABLEKS R20 R19 K48 ["Localization"]
  SETTABLEKS R6 R19 K83 ["IsUndone"]
  SETTABLEKS R7 R19 K84 ["IsDevtools"]
  NEWCLOSURE R20 P2
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R0
  SETTABLEKS R20 R19 K85 ["OnToggleActionClick"]
  SETTABLEKS R19 R18 K79 ["HeaderComponentProps"]
  DUPTABLE R19 K88 [{"ActionLabel"}]
  JUMPIFEQKNIL R5 [+25]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K11 ["createElement"]
  GETUPVAL R21 8
  DUPTABLE R22 K92 [{"MaxHeight", "TextXAlignment", "TextYAlignment", "Font", "Text"}]
  LOADN R23 44
  SETTABLEKS R23 R22 K89 ["MaxHeight"]
  GETIMPORT R23 K59 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K56 ["TextXAlignment"]
  GETIMPORT R23 K94 [Enum.TextYAlignment.Top]
  SETTABLEKS R23 R22 K90 ["TextYAlignment"]
  GETIMPORT R23 K96 [Enum.Font.RobotoMono]
  SETTABLEKS R23 R22 K91 ["Font"]
  SETTABLEKS R5 R22 K40 ["Text"]
  CALL R20 2 1
  JUMP [+9]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K11 ["createElement"]
  GETUPVAL R21 9
  DUPTABLE R22 K98 [{"LineCount"}]
  LOADN R23 5
  SETTABLEKS R23 R22 K97 ["LineCount"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K87 ["ActionLabel"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K34 ["ActionInfo"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["createElement"]
  GETUPVAL R17 6
  DUPTABLE R18 K77 [{"LayoutOrder"}]
  GETUPVAL R19 4
  CALL R19 0 1
  SETTABLEKS R19 R18 K39 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K35 ["ActionSeparator"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K80 [{"Style", "LayoutOrder", "Size", "Text", "ContentPadding", "HorizontalAlignment", "Expanded", "OnExpandedChanged", "HeaderComponent", "HeaderComponentProps"}]
  LOADK R19 K46 ["Section"]
  SETTABLEKS R19 R18 K38 ["Style"]
  GETUPVAL R19 4
  CALL R19 0 1
  SETTABLEKS R19 R18 K39 ["LayoutOrder"]
  GETIMPORT R19 K47 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 32
  CALL R19 4 1
  SETTABLEKS R19 R18 K14 ["Size"]
  GETTABLEKS R20 R0 K0 ["props"]
  GETTABLEKS R19 R20 K48 ["Localization"]
  LOADK R21 K12 ["ReduceDetails"]
  LOADK R22 K99 ["StateTitle"]
  NAMECALL R19 R19 K50 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K40 ["Text"]
  LOADN R19 5
  SETTABLEKS R19 R18 K41 ["ContentPadding"]
  GETIMPORT R19 K52 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K42 ["HorizontalAlignment"]
  GETTABLEKS R20 R0 K2 ["state"]
  GETTABLEKS R19 R20 K100 ["stateExpanded"]
  SETTABLEKS R19 R18 K43 ["Expanded"]
  NEWCLOSURE R19 P3
  CAPTURE VAL R0
  SETTABLEKS R19 R18 K44 ["OnExpandedChanged"]
  GETUPVAL R19 10
  SETTABLEKS R19 R18 K78 ["HeaderComponent"]
  DUPTABLE R19 K105 [{"Localization", "Tabs", "Selected", "OnTabSelected", "OnSetStateClick"}]
  GETTABLEKS R21 R0 K0 ["props"]
  GETTABLEKS R20 R21 K48 ["Localization"]
  SETTABLEKS R20 R19 K48 ["Localization"]
  GETTABLEKS R20 R0 K4 ["stateTabs"]
  SETTABLEKS R20 R19 K101 ["Tabs"]
  GETTABLEKS R21 R0 K2 ["state"]
  GETTABLEKS R20 R21 K3 ["selectedStateTab"]
  SETTABLEKS R20 R19 K102 ["Selected"]
  GETTABLEKS R20 R0 K106 ["setStateTab"]
  SETTABLEKS R20 R19 K103 ["OnTabSelected"]
  NEWCLOSURE R20 P4
  CAPTURE VAL R0
  SETTABLEKS R20 R19 K104 ["OnSetStateClick"]
  SETTABLEKS R19 R18 K79 ["HeaderComponentProps"]
  DUPTABLE R19 K108 [{"StateLabel"}]
  JUMPIFEQKNIL R4 [+28]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K11 ["createElement"]
  GETUPVAL R21 8
  DUPTABLE R22 K110 [{"MaxHeight", "TextXAlignment", "TextYAlignment", "Font", "Text", "RichText"}]
  LOADN R23 144
  SETTABLEKS R23 R22 K89 ["MaxHeight"]
  GETIMPORT R23 K59 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K56 ["TextXAlignment"]
  GETIMPORT R23 K94 [Enum.TextYAlignment.Top]
  SETTABLEKS R23 R22 K90 ["TextYAlignment"]
  GETIMPORT R23 K96 [Enum.Font.RobotoMono]
  SETTABLEKS R23 R22 K91 ["Font"]
  SETTABLEKS R4 R22 K40 ["Text"]
  LOADB R23 1
  SETTABLEKS R23 R22 K109 ["RichText"]
  CALL R20 2 1
  JUMP [+20]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K11 ["createElement"]
  GETUPVAL R21 9
  DUPTABLE R22 K98 [{"LineCount"}]
  GETTABLEKS R25 R0 K2 ["state"]
  GETTABLEKS R24 R25 K3 ["selectedStateTab"]
  GETTABLEKS R26 R0 K4 ["stateTabs"]
  GETTABLEN R25 R26 1
  JUMPIFNOTEQ R24 R25 [+3]
  LOADN R23 10
  JUMP [+1]
  LOADN R23 30
  SETTABLEKS R23 R22 K97 ["LineCount"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K107 ["StateLabel"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K36 ["StateInfo"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K12 ["ReduceDetails"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Dash"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["pretty"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K12 ["Util"]
  GETTABLEKS R7 R8 K13 ["diff"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K14 ["ContextServices"]
  GETTABLEKS R8 R7 K15 ["withContext"]
  GETTABLEKS R9 R7 K16 ["Analytics"]
  GETTABLEKS R10 R7 K17 ["Localization"]
  GETTABLEKS R12 R3 K18 ["Style"]
  GETTABLEKS R11 R12 K19 ["Stylizer"]
  GETTABLEKS R12 R3 K20 ["UI"]
  GETTABLEKS R13 R12 K21 ["Pane"]
  GETTABLEKS R14 R12 K22 ["TextLabel"]
  GETTABLEKS R15 R12 K23 ["IconButton"]
  GETTABLEKS R16 R12 K24 ["Separator"]
  GETTABLEKS R17 R12 K25 ["ScrollingFrame"]
  GETTABLEKS R18 R12 K26 ["ExpandablePane"]
  GETTABLEKS R19 R12 K27 ["Tabs"]
  GETIMPORT R20 K4 [require]
  GETIMPORT R24 K1 [script]
  GETTABLEKS R23 R24 K2 ["Parent"]
  GETTABLEKS R22 R23 K2 ["Parent"]
  GETTABLEKS R21 R22 K28 ["LongText"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETIMPORT R27 K1 [script]
  GETTABLEKS R26 R27 K2 ["Parent"]
  GETTABLEKS R25 R26 K2 ["Parent"]
  GETTABLEKS R24 R25 K2 ["Parent"]
  GETTABLEKS R23 R24 K12 ["Util"]
  GETTABLEKS R22 R23 K29 ["counter"]
  CALL R21 1 1
  CALL R21 0 1
  DUPCLOSURE R22 K30 [PROTO_0]
  CAPTURE VAL R2
  DUPCLOSURE R23 K31 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R15
  DUPCLOSURE R24 K32 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R19
  GETTABLEKS R25 R2 K33 ["PureComponent"]
  LOADK R27 K34 ["ReduceDetails"]
  NAMECALL R25 R25 K35 ["extend"]
  CALL R25 2 1
  DUPCLOSURE R26 K36 [PROTO_4]
  SETTABLEKS R26 R25 K37 ["init"]
  DUPCLOSURE R26 K38 [PROTO_6]
  SETTABLEKS R26 R25 K39 ["didMount"]
  DUPCLOSURE R26 K40 [PROTO_7]
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R26 R25 K41 ["computeText"]
  DUPCLOSURE R26 K42 [PROTO_9]
  CAPTURE VAL R2
  SETTABLEKS R26 R25 K43 ["didUpdate"]
  DUPCLOSURE R26 K44 [PROTO_18]
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R21
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R23
  CAPTURE VAL R20
  CAPTURE VAL R22
  CAPTURE VAL R24
  SETTABLEKS R26 R25 K45 ["render"]
  MOVE R26 R8
  DUPTABLE R27 K46 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R9 R27 K16 ["Analytics"]
  SETTABLEKS R10 R27 K17 ["Localization"]
  SETTABLEKS R11 R27 K19 ["Stylizer"]
  CALL R26 1 1
  MOVE R27 R25
  CALL R26 1 1
  MOVE R25 R26
  RETURN R25 1
