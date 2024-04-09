PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnAbsoluteSizeChanged"]
  GETTABLEKS R2 R0 K1 ["AbsoluteSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["setToolIndex"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  LOADNIL R4
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+43]
  GETIMPORT R5 K2 [Vector2.new]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["CellSize"]
  GETTABLEKS R7 R8 K4 ["X"]
  GETTABLEKS R6 R7 K5 ["Offset"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K3 ["CellSize"]
  GETTABLEKS R8 R9 K6 ["Y"]
  GETTABLEKS R7 R8 K5 ["Offset"]
  CALL R5 2 1
  GETUPVAL R6 2
  GETTABLEKS R8 R0 K7 ["name"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K8 ["TextSize"]
  GETIMPORT R10 K12 [Enum.Font.SourceSans]
  MOVE R11 R5
  NAMECALL R6 R6 K13 ["GetTextSize"]
  CALL R6 5 1
  GETTABLEKS R7 R6 K4 ["X"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K14 ["OverflowThreshold"]
  JUMPIFNOTLT R8 R7 [+5]
  GETUPVAL R7 1
  GETTABLEKS R4 R7 K15 ["OverflowTextSize"]
  JUMP [+3]
  GETUPVAL R7 1
  GETTABLEKS R4 R7 K8 ["TextSize"]
  DUPTABLE R5 K23 [{"Icon", "Key", "Name", "OnClick", "Position", "Selected", "Size", "TextSize"}]
  GETTABLEKS R6 R0 K24 ["icon"]
  SETTABLEKS R6 R5 K16 ["Icon"]
  SETTABLEKS R1 R5 K17 ["Key"]
  GETTABLEKS R6 R0 K7 ["name"]
  SETTABLEKS R6 R5 K18 ["Name"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U3
  SETTABLEKS R6 R5 K19 ["OnClick"]
  SETTABLEKS R2 R5 K20 ["Position"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K25 ["ToolIndex"]
  SETTABLEKS R6 R5 K21 ["Selected"]
  SETTABLEKS R3 R5 K22 ["Size"]
  GETUPVAL R7 0
  CALL R7 0 1
  JUMPIFNOT R7 [+2]
  MOVE R6 R4
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K8 ["TextSize"]
  RETURN R5 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["Key"]
  NAMECALL R1 R1 K1 ["setTabIndex"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  LOADK R3 K0 ["Toolbar"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["new"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["use"]
  CALL R3 0 1
  GETUPVAL R4 3
  MOVE R5 R3
  CALL R4 1 1
  NEWTABLE R5 0 0
  GETTABLEKS R6 R4 K3 ["Tools"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  DUPTABLE R11 K6 [{"icon", "name"}]
  DUPTABLE R12 K9 [{"Image", "Size"}]
  GETIMPORT R13 K12 [string.format]
  GETTABLEKS R15 R10 K4 ["icon"]
  GETTABLEKS R14 R15 K7 ["Image"]
  GETTABLEKS R15 R1 K13 ["StudioTheme"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K7 ["Image"]
  GETTABLEKS R13 R1 K14 ["IconSize"]
  SETTABLEKS R13 R12 K8 ["Size"]
  SETTABLEKS R12 R11 K4 ["icon"]
  GETTABLEKS R12 R10 K5 ["name"]
  SETTABLEKS R12 R11 K5 ["name"]
  SETTABLE R11 R5 R9
  FORGLOOP R6 2 [-25]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  NEWCLOSURE R7 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE VAL R3
  CAPTURE VAL R4
  NEWCLOSURE R8 P2
  CAPTURE VAL R3
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K15 ["createElement"]
  GETUPVAL R10 7
  NEWTABLE R11 8 0
  GETIMPORT R12 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K17 ["AutomaticSize"]
  GETIMPORT R12 K22 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K20 ["HorizontalAlignment"]
  GETIMPORT R12 K25 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K26 ["Layout"]
  GETTABLEKS R12 R0 K27 ["LayoutOrder"]
  SETTABLEKS R12 R11 K27 ["LayoutOrder"]
  GETIMPORT R12 K30 [Enum.VerticalAlignment.Top]
  SETTABLEKS R12 R11 K28 ["VerticalAlignment"]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K31 ["Change"]
  GETTABLEKS R12 R13 K32 ["AbsoluteSize"]
  SETTABLE R6 R11 R12
  DUPTABLE R12 K34 [{"Category", "Tools"}]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K15 ["createElement"]
  GETUPVAL R14 7
  DUPTABLE R15 K36 [{"AutomaticSize", "BackgroundColor", "LayoutOrder", "Size"}]
  GETIMPORT R16 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K17 ["AutomaticSize"]
  GETTABLEKS R16 R1 K37 ["TabBackgroundColor"]
  SETTABLEKS R16 R15 K35 ["BackgroundColor"]
  NAMECALL R16 R2 K38 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K27 ["LayoutOrder"]
  GETIMPORT R16 K41 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K8 ["Size"]
  DUPTABLE R16 K43 [{"Tabs"}]
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K15 ["createElement"]
  GETUPVAL R18 8
  DUPTABLE R19 K46 [{"LayoutOrder", "OnTabSelected", "SelectedTab", "Tabs"}]
  NAMECALL R20 R2 K38 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K27 ["LayoutOrder"]
  SETTABLEKS R8 R19 K44 ["OnTabSelected"]
  GETTABLEKS R20 R4 K47 ["TabIndex"]
  SETTABLEKS R20 R19 K45 ["SelectedTab"]
  GETTABLEKS R20 R4 K42 ["Tabs"]
  SETTABLEKS R20 R19 K42 ["Tabs"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K42 ["Tabs"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K33 ["Category"]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K15 ["createElement"]
  GETUPVAL R14 7
  DUPTABLE R15 K48 [{"AutomaticSize", "LayoutOrder", "Size"}]
  GETIMPORT R16 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K17 ["AutomaticSize"]
  NAMECALL R16 R2 K38 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K27 ["LayoutOrder"]
  GETIMPORT R16 K41 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K8 ["Size"]
  DUPTABLE R16 K50 [{"Grid"}]
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K15 ["createElement"]
  GETUPVAL R18 9
  DUPTABLE R19 K57 [{"AutomaticSize", "Cells", "CellComponent", "CellPadding", "CellSize", "GetCellProps", "ScrollingDirection", "Size"}]
  GETIMPORT R20 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K17 ["AutomaticSize"]
  SETTABLEKS R5 R19 K51 ["Cells"]
  GETUPVAL R20 10
  SETTABLEKS R20 R19 K52 ["CellComponent"]
  GETTABLEKS R20 R1 K53 ["CellPadding"]
  SETTABLEKS R20 R19 K53 ["CellPadding"]
  GETTABLEKS R20 R1 K54 ["CellSize"]
  SETTABLEKS R20 R19 K54 ["CellSize"]
  SETTABLEKS R7 R19 K55 ["GetCellProps"]
  GETIMPORT R20 K58 [Enum.ScrollingDirection.Y]
  SETTABLEKS R20 R19 K56 ["ScrollingDirection"]
  GETIMPORT R20 K41 [UDim2.fromScale]
  LOADN R21 1
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K8 ["Size"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K49 ["Grid"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K3 ["Tools"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K9 ["ContextServices"]
  GETTABLEKS R3 R4 K10 ["Stylizer"]
  GETTABLEKS R5 R1 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["LayoutOrderIterator"]
  GETIMPORT R5 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K13 ["Tile"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K14 ["UI"]
  GETTABLEKS R7 R6 K15 ["Grid"]
  GETTABLEKS R8 R6 K16 ["Pane"]
  GETTABLEKS R9 R6 K17 ["Tabs"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K18 ["Src"]
  GETTABLEKS R12 R13 K19 ["Controllers"]
  GETTABLEKS R11 R12 K20 ["ToolController"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K18 ["Src"]
  GETTABLEKS R13 R14 K21 ["Hooks"]
  GETTABLEKS R12 R13 K22 ["useToolbar"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K18 ["Src"]
  GETTABLEKS R14 R15 K23 ["Resources"]
  GETTABLEKS R13 R14 K24 ["Theme"]
  CALL R12 1 1
  GETIMPORT R13 K26 [game]
  LOADK R15 K27 ["TextService"]
  NAMECALL R13 R13 K28 ["GetService"]
  CALL R13 2 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K18 ["Src"]
  GETTABLEKS R16 R17 K29 ["Flags"]
  GETTABLEKS R15 R16 K30 ["getFFlagFixTerrainEditorDETruncations"]
  CALL R14 1 1
  DUPCLOSURE R15 K31 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R5
  RETURN R15 1
