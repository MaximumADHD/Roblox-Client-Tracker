PROTO_0:
  DUPTABLE R2 K2 [{"Key", "Gui"}]
  SETTABLEKS R0 R2 K0 ["Key"]
  SETTABLEKS R1 R2 K1 ["Gui"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"RowHovered"}]
  SETTABLEKS R0 R3 K0 ["RowHovered"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  JUMPIFNOT R2 [+13]
  GETUPVAL R3 0
  DUPTABLE R5 K1 [{"RowHovered"}]
  SETTABLEKS R1 R5 K0 ["RowHovered"]
  NAMECALL R3 R3 K2 ["setState"]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["rowHover"]
  SETTABLEKS R0 R3 K4 ["Gui"]
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["rowHover"]
  GETTABLEKS R3 R4 K4 ["Gui"]
  JUMPIFNOTEQ R3 R0 [+9]
  GETUPVAL R3 0
  DUPTABLE R5 K1 [{"RowHovered"}]
  LOADK R6 K5 [""]
  SETTABLEKS R6 R5 K0 ["RowHovered"]
  NAMECALL R3 R3 K2 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_3:
  JUMPIFNOT R2 [+13]
  GETUPVAL R3 0
  DUPTABLE R5 K1 [{"ColHovered"}]
  SETTABLEKS R1 R5 K0 ["ColHovered"]
  NAMECALL R3 R3 K2 ["setState"]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["colHover"]
  SETTABLEKS R0 R3 K4 ["Gui"]
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["colHover"]
  GETTABLEKS R3 R4 K4 ["Gui"]
  JUMPIFNOTEQ R3 R0 [+9]
  GETUPVAL R3 0
  DUPTABLE R5 K1 [{"ColHovered"}]
  LOADK R6 K5 [""]
  SETTABLEKS R6 R5 K0 ["ColHovered"]
  NAMECALL R3 R3 K2 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"ScrollPositionX", "ScrollPositionY"}]
  GETTABLEKS R4 R0 K3 ["X"]
  SETTABLEKS R4 R3 K0 ["ScrollPositionX"]
  GETTABLEKS R4 R0 K4 ["Y"]
  SETTABLEKS R4 R3 K1 ["ScrollPositionY"]
  NAMECALL R1 R1 K5 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"ToggleListView"}]
  GETTABLEKS R3 R0 K0 ["ToggleListView"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["ToggleListView"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_5]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETGLOBAL R1 K0 ["hover"]
  LOADK R2 K1 [""]
  LOADNIL R3
  CALL R1 2 1
  SETTABLEKS R1 R0 K2 ["rowHover"]
  GETGLOBAL R1 K0 ["hover"]
  LOADK R2 K1 [""]
  LOADNIL R3
  CALL R1 2 1
  SETTABLEKS R1 R0 K3 ["colHover"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["rowHoverForced"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onRowHovered"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onColHovered"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onScrolled"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["onViewModeToggled"]
  DUPTABLE R1 K14 [{"ScrollPositionX", "ScrollPositionY", "RowHovered", "ColHovered", "ToggleListView"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K9 ["ScrollPositionX"]
  LOADN R2 0
  SETTABLEKS R2 R1 K10 ["ScrollPositionY"]
  LOADK R2 K1 [""]
  SETTABLEKS R2 R1 K11 ["RowHovered"]
  LOADK R2 K1 [""]
  SETTABLEKS R2 R1 K12 ["ColHovered"]
  LOADB R2 1
  SETTABLEKS R2 R1 K13 ["ToggleListView"]
  SETTABLEKS R1 R0 K15 ["state"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["MainView"]
  DUPTABLE R3 K6 [{"ControlsHeaderRow", "Header", "Middle"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K17 [{"OnGroupAdded", "OnGroupDeleted", "OnGroupRenamed", "UISelectedId", "OnViewModeToggled", "ToggleListView", "LayoutOrder", "Groups", "Window"}]
  GETTABLEKS R7 R1 K8 ["OnGroupAdded"]
  SETTABLEKS R7 R6 K8 ["OnGroupAdded"]
  GETTABLEKS R7 R1 K9 ["OnGroupDeleted"]
  SETTABLEKS R7 R6 K9 ["OnGroupDeleted"]
  GETTABLEKS R7 R1 K10 ["OnGroupRenamed"]
  SETTABLEKS R7 R6 K10 ["OnGroupRenamed"]
  GETTABLEKS R7 R1 K11 ["UISelectedId"]
  SETTABLEKS R7 R6 K11 ["UISelectedId"]
  GETTABLEKS R7 R0 K18 ["onViewModeToggled"]
  SETTABLEKS R7 R6 K12 ["OnViewModeToggled"]
  GETTABLEKS R8 R0 K19 ["state"]
  GETTABLEKS R7 R8 K13 ["ToggleListView"]
  SETTABLEKS R7 R6 K13 ["ToggleListView"]
  LOADN R7 1
  SETTABLEKS R7 R6 K14 ["LayoutOrder"]
  GETTABLEKS R7 R1 K15 ["Groups"]
  SETTABLEKS R7 R6 K15 ["Groups"]
  GETTABLEKS R7 R1 K16 ["Window"]
  SETTABLEKS R7 R6 K16 ["Window"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["ControlsHeaderRow"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K23 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
  GETIMPORT R7 K26 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K27 ["GroupRowHeight"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K20 ["Size"]
  LOADN R7 2
  SETTABLEKS R7 R6 K14 ["LayoutOrder"]
  GETIMPORT R7 K31 [Enum.FillDirection.Horizontal]
  SETTABLEKS R7 R6 K21 ["Layout"]
  GETIMPORT R7 K33 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R7 R6 K22 ["HorizontalAlignment"]
  DUPTABLE R7 K36 [{"TableHeader", "ListHeader"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K40 [{"LayoutOrder", "Groups", "ColHovered", "OnColHovered", "ScrollPositionX"}]
  GETTABLEKS R13 R0 K19 ["state"]
  GETTABLEKS R12 R13 K13 ["ToggleListView"]
  JUMPIFNOT R12 [+2]
  LOADN R11 2
  JUMP [+1]
  LOADN R11 1
  SETTABLEKS R11 R10 K14 ["LayoutOrder"]
  GETTABLEKS R11 R1 K15 ["Groups"]
  SETTABLEKS R11 R10 K15 ["Groups"]
  GETTABLEKS R12 R0 K19 ["state"]
  GETTABLEKS R11 R12 K37 ["ColHovered"]
  SETTABLEKS R11 R10 K37 ["ColHovered"]
  GETTABLEKS R11 R0 K41 ["onColHovered"]
  SETTABLEKS R11 R10 K38 ["OnColHovered"]
  GETTABLEKS R12 R0 K19 ["state"]
  GETTABLEKS R11 R12 K39 ["ScrollPositionX"]
  SETTABLEKS R11 R10 K39 ["ScrollPositionX"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K34 ["TableHeader"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K44 [{"LayoutOrder", "SelectedGroupName", "GroupCount"}]
  GETTABLEKS R13 R0 K19 ["state"]
  GETTABLEKS R12 R13 K13 ["ToggleListView"]
  JUMPIFNOT R12 [+2]
  LOADN R11 1
  JUMP [+1]
  LOADN R11 2
  SETTABLEKS R11 R10 K14 ["LayoutOrder"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K45 ["getSelectedGroup"]
  GETTABLEKS R13 R1 K15 ["Groups"]
  CALL R12 1 1
  JUMPIFEQKS R12 K46 [""] [+10]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K45 ["getSelectedGroup"]
  GETTABLEKS R13 R1 K15 ["Groups"]
  CALL R12 1 1
  GETTABLEKS R11 R12 K47 ["Name"]
  JUMP [+1]
  LOADK R11 K46 [""]
  SETTABLEKS R11 R10 K42 ["SelectedGroupName"]
  GETTABLEKS R12 R1 K15 ["Groups"]
  LENGTH R11 R12
  SETTABLEKS R11 R10 K43 ["GroupCount"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K35 ["ListHeader"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K4 ["Header"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K49 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  GETTABLEKS R7 R2 K50 ["MiddlePaneSize"]
  SETTABLEKS R7 R6 K20 ["Size"]
  LOADN R7 3
  SETTABLEKS R7 R6 K14 ["LayoutOrder"]
  GETIMPORT R7 K31 [Enum.FillDirection.Horizontal]
  SETTABLEKS R7 R6 K21 ["Layout"]
  GETIMPORT R7 K33 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R7 R6 K22 ["HorizontalAlignment"]
  GETIMPORT R7 K52 [Enum.VerticalAlignment.Top]
  SETTABLEKS R7 R6 K48 ["VerticalAlignment"]
  DUPTABLE R7 K56 [{"GroupLabelColumn", "GridFrame", "ListFrame"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 7
  DUPTABLE R10 K60 [{"LayoutOrder", "Groups", "Window", "RowHovered", "OnRowHovered", "ScrollPositionY", "ToggleListView"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K14 ["LayoutOrder"]
  GETTABLEKS R11 R1 K15 ["Groups"]
  SETTABLEKS R11 R10 K15 ["Groups"]
  GETTABLEKS R11 R1 K16 ["Window"]
  SETTABLEKS R11 R10 K16 ["Window"]
  GETTABLEKS R12 R0 K19 ["state"]
  GETTABLEKS R11 R12 K57 ["RowHovered"]
  SETTABLEKS R11 R10 K57 ["RowHovered"]
  GETTABLEKS R11 R0 K61 ["onRowHovered"]
  SETTABLEKS R11 R10 K58 ["OnRowHovered"]
  GETTABLEKS R12 R0 K19 ["state"]
  GETTABLEKS R11 R12 K59 ["ScrollPositionY"]
  SETTABLEKS R11 R10 K59 ["ScrollPositionY"]
  GETTABLEKS R12 R0 K19 ["state"]
  GETTABLEKS R11 R12 K13 ["ToggleListView"]
  SETTABLEKS R11 R10 K13 ["ToggleListView"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K53 ["GroupLabelColumn"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 8
  DUPTABLE R10 K66 [{"Size", "AutomaticCanvasSize", "ScrollingDirection", "LayoutOrder", "OnScrollUpdate", "Layout", "Padding"}]
  GETTABLEKS R11 R2 K67 ["GridFrameSize"]
  SETTABLEKS R11 R10 K20 ["Size"]
  GETIMPORT R11 K70 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K62 ["AutomaticCanvasSize"]
  GETIMPORT R11 K71 [Enum.ScrollingDirection.XY]
  SETTABLEKS R11 R10 K63 ["ScrollingDirection"]
  GETTABLEKS R13 R0 K19 ["state"]
  GETTABLEKS R12 R13 K13 ["ToggleListView"]
  JUMPIFNOT R12 [+2]
  LOADN R11 3
  JUMP [+1]
  LOADN R11 2
  SETTABLEKS R11 R10 K14 ["LayoutOrder"]
  GETTABLEKS R11 R0 K72 ["onScrolled"]
  SETTABLEKS R11 R10 K64 ["OnScrollUpdate"]
  GETIMPORT R11 K31 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K21 ["Layout"]
  LOADN R11 0
  SETTABLEKS R11 R10 K65 ["Padding"]
  DUPTABLE R11 K74 [{"GroupCollisionMatrix"}]
  GETTABLEKS R14 R0 K19 ["state"]
  GETTABLEKS R13 R14 K13 ["ToggleListView"]
  NOT R12 R13
  JUMPIFNOT R12 [+24]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 9
  DUPTABLE R14 K75 [{"Groups", "RowHovered", "OnColHovered", "OnRowHovered"}]
  GETTABLEKS R15 R1 K15 ["Groups"]
  SETTABLEKS R15 R14 K15 ["Groups"]
  GETTABLEKS R16 R0 K19 ["state"]
  GETTABLEKS R15 R16 K57 ["RowHovered"]
  SETTABLEKS R15 R14 K57 ["RowHovered"]
  GETTABLEKS R15 R0 K41 ["onColHovered"]
  SETTABLEKS R15 R14 K38 ["OnColHovered"]
  GETTABLEKS R15 R0 K61 ["onRowHovered"]
  SETTABLEKS R15 R14 K58 ["OnRowHovered"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K73 ["GroupCollisionMatrix"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K54 ["GridFrame"]
  GETTABLEKS R9 R0 K19 ["state"]
  GETTABLEKS R8 R9 K13 ["ToggleListView"]
  JUMPIFNOT R8 [+63]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 8
  DUPTABLE R10 K76 [{"Size", "AutomaticCanvasSize", "LayoutOrder", "Layout", "ScrollingDirection"}]
  GETTABLEKS R11 R2 K77 ["ListFrameSize"]
  SETTABLEKS R11 R10 K20 ["Size"]
  GETIMPORT R11 K70 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K62 ["AutomaticCanvasSize"]
  GETTABLEKS R13 R0 K19 ["state"]
  GETTABLEKS R12 R13 K13 ["ToggleListView"]
  JUMPIFNOT R12 [+2]
  LOADN R11 2
  JUMP [+1]
  LOADN R11 3
  SETTABLEKS R11 R10 K14 ["LayoutOrder"]
  GETIMPORT R11 K31 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K21 ["Layout"]
  GETIMPORT R11 K79 [Enum.ScrollingDirection.Y]
  SETTABLEKS R11 R10 K63 ["ScrollingDirection"]
  DUPTABLE R11 K81 [{"GroupListView"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K82 [{"Groups", "UISelectedId", "RowHovered", "OnColHovered", "OnRowHovered"}]
  GETTABLEKS R15 R1 K15 ["Groups"]
  SETTABLEKS R15 R14 K15 ["Groups"]
  GETTABLEKS R15 R1 K11 ["UISelectedId"]
  SETTABLEKS R15 R14 K11 ["UISelectedId"]
  GETTABLEKS R16 R0 K19 ["state"]
  GETTABLEKS R15 R16 K57 ["RowHovered"]
  SETTABLEKS R15 R14 K57 ["RowHovered"]
  GETTABLEKS R15 R0 K41 ["onColHovered"]
  SETTABLEKS R15 R14 K38 ["OnColHovered"]
  GETTABLEKS R15 R0 K61 ["onRowHovered"]
  SETTABLEKS R15 R14 K58 ["OnRowHovered"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K80 ["GroupListView"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K55 ["ListFrame"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K5 ["Middle"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 10
  DUPTABLE R6 K85 [{"Enabled", "OnClose"}]
  GETTABLEKS R7 R1 K86 ["GroupRenameDialogOpen"]
  SETTABLEKS R7 R6 K83 ["Enabled"]
  GETTABLEKS R7 R1 K87 ["OnGroupRenameDialogClosed"]
  SETTABLEKS R7 R6 K84 ["OnClose"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K88 ["GroupRenameDialog"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K90 [{"Style", "Layout", "VerticalAlignment"}]
  LOADK R7 K91 ["Box"]
  SETTABLEKS R7 R6 K89 ["Style"]
  GETIMPORT R7 K93 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K21 ["Layout"]
  GETIMPORT R7 K52 [Enum.VerticalAlignment.Top]
  SETTABLEKS R7 R6 K48 ["VerticalAlignment"]
  MOVE R7 R3
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
  GETTABLEKS R4 R2 K9 ["UI"]
  GETTABLEKS R5 R4 K10 ["Pane"]
  GETTABLEKS R6 R4 K11 ["ScrollingFrame"]
  GETIMPORT R7 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K2 ["Parent"]
  GETTABLEKS R8 R9 K12 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K13 ["ControlsHeaderRow"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K14 ["GroupCollisionMatrix"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K15 ["GroupLabelColumn"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K16 ["GroupListView"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K2 ["Parent"]
  GETTABLEKS R13 R14 K17 ["ListHeader"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K2 ["Parent"]
  GETTABLEKS R14 R15 K18 ["TableHeader"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETIMPORT R17 K1 [script]
  GETTABLEKS R16 R17 K2 ["Parent"]
  GETTABLEKS R15 R16 K19 ["GroupRenameDialog"]
  CALL R14 1 1
  GETTABLEKS R15 R1 K20 ["Component"]
  LOADK R17 K21 ["MainView"]
  NAMECALL R15 R15 K22 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K23 [PROTO_0]
  SETGLOBAL R16 K24 ["hover"]
  DUPCLOSURE R16 K25 [PROTO_7]
  SETTABLEKS R16 R15 K26 ["init"]
  DUPCLOSURE R16 K27 [PROTO_8]
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R14
  SETTABLEKS R16 R15 K28 ["render"]
  GETTABLEKS R16 R3 K29 ["withContext"]
  DUPTABLE R17 K32 [{"Stylizer", "Localization"}]
  GETTABLEKS R18 R3 K30 ["Stylizer"]
  SETTABLEKS R18 R17 K30 ["Stylizer"]
  GETTABLEKS R18 R3 K31 ["Localization"]
  SETTABLEKS R18 R17 K31 ["Localization"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  RETURN R15 1
