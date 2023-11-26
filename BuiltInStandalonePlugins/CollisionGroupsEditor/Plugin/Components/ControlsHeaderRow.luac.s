PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"editing"}]
  SETTABLEKS R0 R3 K0 ["editing"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["textButtonPaneRef"]
  NAMECALL R1 R1 K1 ["getValue"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K2 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K3 ["X"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["ControlsHeaderButtonWidth"]
  MULK R3 R4 K4 [2]
  JUMPIFNOTLT R2 R3 [+9]
  DUPTABLE R3 K7 [{"buttonSize"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["ControlsHeaderButtonWidth"]
  SUB R4 R2 R5
  SETTABLEKS R4 R3 K6 ["buttonSize"]
  RETURN R3 1
  DUPTABLE R3 K7 [{"buttonSize"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["ControlsHeaderButtonWidth"]
  SETTABLEKS R4 R3 K6 ["buttonSize"]
  RETURN R3 1

PROTO_2:
  GETUPVAL R0 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NAMECALL R0 R0 K0 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["textButtonPaneRef"]
  DUPTABLE R1 K4 [{"editing", "buttonSize"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["editing"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["ControlsHeaderButtonWidth"]
  SETTABLEKS R2 R1 K3 ["buttonSize"]
  SETTABLEKS R1 R0 K6 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onEditingChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K8 ["updateButtonFlexSize"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R4 R1 K2 ["Stylizer"]
  GETTABLEKS R3 R4 K3 ["ControlsHeaderRow"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K10 [{"Size", "Padding", "Spacing", "LayoutOrder", "Layout"}]
  GETTABLEKS R7 R3 K5 ["Size"]
  SETTABLEKS R7 R6 K5 ["Size"]
  GETTABLEKS R7 R3 K6 ["Padding"]
  SETTABLEKS R7 R6 K6 ["Padding"]
  GETTABLEKS R7 R3 K7 ["Spacing"]
  SETTABLEKS R7 R6 K7 ["Spacing"]
  GETTABLEKS R7 R1 K8 ["LayoutOrder"]
  SETTABLEKS R7 R6 K8 ["LayoutOrder"]
  GETIMPORT R7 K14 [Enum.FillDirection.Horizontal]
  SETTABLEKS R7 R6 K9 ["Layout"]
  DUPTABLE R7 K17 [{"TextButtonPane", "GroupButtonsPane"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  LOADK R9 K18 ["Frame"]
  NEWTABLE R10 8 0
  GETTABLEKS R12 R3 K15 ["TextButtonPane"]
  GETTABLEKS R11 R12 K5 ["Size"]
  SETTABLEKS R11 R10 K5 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K19 ["BackgroundTransparency"]
  LOADN R11 1
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K20 ["Change"]
  GETTABLEKS R11 R12 K21 ["AbsoluteSize"]
  GETTABLEKS R12 R0 K22 ["updateButtonFlexSize"]
  SETTABLE R12 R10 R11
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K23 ["Ref"]
  GETTABLEKS R12 R0 K24 ["textButtonPaneRef"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K27 [{"Layout", "ToggleViewButton", "AddGroupButton"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["createElement"]
  LOADK R13 K28 ["UIListLayout"]
  DUPTABLE R14 K30 [{"SortOrder", "FillDirection"}]
  GETIMPORT R15 K31 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K29 ["SortOrder"]
  GETIMPORT R15 K14 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K12 ["FillDirection"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K9 ["Layout"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K33 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
  GETIMPORT R15 K36 [UDim2.new]
  LOADN R16 0
  GETTABLEKS R18 R0 K37 ["state"]
  GETTABLEKS R17 R18 K38 ["buttonSize"]
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K5 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K8 ["LayoutOrder"]
  GETIMPORT R15 K14 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K9 ["Layout"]
  GETIMPORT R15 K40 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R15 R14 K32 ["HorizontalAlignment"]
  DUPTABLE R15 K42 [{"Button"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K46 [{"Style", "Text", "Size", "OnClick"}]
  LOADK R19 K47 ["Round"]
  SETTABLEKS R19 R18 K43 ["Style"]
  GETTABLEKS R20 R1 K48 ["ToggleListView"]
  JUMPIFNOT R20 [+6]
  LOADK R21 K49 ["Actions"]
  LOADK R22 K50 ["TableView"]
  NAMECALL R19 R2 K51 ["getText"]
  CALL R19 3 1
  JUMP [+5]
  LOADK R21 K49 ["Actions"]
  LOADK R22 K52 ["ListView"]
  NAMECALL R19 R2 K51 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K44 ["Text"]
  GETIMPORT R19 K54 [UDim2.fromOffset]
  GETTABLEKS R21 R0 K37 ["state"]
  GETTABLEKS R20 R21 K38 ["buttonSize"]
  GETTABLEKS R21 R3 K55 ["ButtonHeight"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K5 ["Size"]
  GETTABLEKS R19 R1 K56 ["OnViewModeToggled"]
  SETTABLEKS R19 R18 K45 ["OnClick"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K41 ["Button"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K25 ["ToggleViewButton"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K33 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
  GETIMPORT R15 K36 [UDim2.new]
  LOADN R16 1
  GETTABLEKS R19 R0 K37 ["state"]
  GETTABLEKS R18 R19 K38 ["buttonSize"]
  MINUS R17 R18
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K5 ["Size"]
  LOADN R15 2
  SETTABLEKS R15 R14 K8 ["LayoutOrder"]
  GETIMPORT R15 K14 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K9 ["Layout"]
  GETIMPORT R15 K40 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R15 R14 K32 ["HorizontalAlignment"]
  DUPTABLE R15 K42 [{"Button"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K60 [{"Groups", "OnGroupAdded", "OnEditingChanged"}]
  GETTABLEKS R19 R1 K57 ["Groups"]
  SETTABLEKS R19 R18 K57 ["Groups"]
  GETTABLEKS R19 R1 K58 ["OnGroupAdded"]
  SETTABLEKS R19 R18 K58 ["OnGroupAdded"]
  GETTABLEKS R19 R0 K61 ["onEditingChanged"]
  SETTABLEKS R19 R18 K59 ["OnEditingChanged"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K41 ["Button"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K26 ["AddGroupButton"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K15 ["TextButtonPane"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K33 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
  GETTABLEKS R11 R3 K62 ["GroupButtonsPaneSize"]
  SETTABLEKS R11 R10 K5 ["Size"]
  LOADN R11 2
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  GETIMPORT R11 K14 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K9 ["Layout"]
  GETIMPORT R11 K64 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R11 R10 K32 ["HorizontalAlignment"]
  DUPTABLE R11 K67 [{"RenameButton", "DeleteButton"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K69 [{"Style", "OnClick", "TooltipMessage", "LayoutOrder"}]
  LOADK R15 K70 ["Rename"]
  SETTABLEKS R15 R14 K43 ["Style"]
  GETTABLEKS R15 R1 K71 ["OnGroupRenamed"]
  SETTABLEKS R15 R14 K45 ["OnClick"]
  GETTABLEKS R15 R1 K1 ["Localization"]
  LOADK R17 K72 ["Tooltip"]
  LOADK R18 K70 ["Rename"]
  NAMECALL R15 R15 K51 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K68 ["TooltipMessage"]
  LOADN R15 1
  SETTABLEKS R15 R14 K8 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K65 ["RenameButton"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K69 [{"Style", "OnClick", "TooltipMessage", "LayoutOrder"}]
  LOADK R15 K73 ["Delete"]
  SETTABLEKS R15 R14 K43 ["Style"]
  GETTABLEKS R15 R1 K74 ["OnGroupDeleted"]
  SETTABLEKS R15 R14 K45 ["OnClick"]
  GETTABLEKS R15 R1 K1 ["Localization"]
  LOADK R17 K72 ["Tooltip"]
  LOADK R18 K73 ["Delete"]
  NAMECALL R15 R15 K51 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K68 ["TooltipMessage"]
  LOADN R15 2
  SETTABLEKS R15 R14 K8 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K66 ["DeleteButton"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K16 ["GroupButtonsPane"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["Localization"]
  GETTABLEKS R5 R2 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["Button"]
  GETTABLEKS R7 R5 K12 ["Pane"]
  GETIMPORT R8 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K13 ["AddGroup"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K14 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K15 ["GroupButton"]
  CALL R10 1 1
  GETTABLEKS R11 R1 K16 ["Component"]
  LOADK R13 K17 ["ControlsHeaderRow"]
  NAMECALL R11 R11 K18 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K19 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R9
  SETTABLEKS R12 R11 K20 ["init"]
  DUPCLOSURE R12 K21 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K22 ["render"]
  GETTABLEKS R12 R3 K23 ["withContext"]
  DUPTABLE R13 K25 [{"Stylizer", "Localization"}]
  GETTABLEKS R14 R3 K24 ["Stylizer"]
  SETTABLEKS R14 R13 K24 ["Stylizer"]
  SETTABLEKS R4 R13 K9 ["Localization"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1
