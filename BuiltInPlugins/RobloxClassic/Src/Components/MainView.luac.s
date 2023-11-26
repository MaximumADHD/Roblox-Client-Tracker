PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["StarterCharacterScripts"]
  JUMPIFNOT R0 [+9]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["DoClassicScriptsExist"]
  MOVE R2 R0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["Localization"]
  CALL R1 2 -1
  RETURN R1 -1
  LOADB R1 0
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K1 ["Localization"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["doClassicScriptsExist"]
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  DUPTABLE R1 K2 [{"classicComponentsActive"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K1 ["classicComponentsActive"]
  RETURN R1 1
  DUPTABLE R1 K2 [{"classicComponentsActive"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["classicComponentsActive"]
  RETURN R1 1

PROTO_3:
  GETIMPORT R1 K2 [string.find]
  MOVE R2 R0
  LOADK R3 K3 ["insert"]
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+10]
  GETUPVAL R1 0
  DUPTABLE R3 K5 [{"classicComponentsActive"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["classicComponentsActive"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K5 [{"classicComponentsActive"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["classicComponentsActive"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R1 K2 [string.find]
  MOVE R2 R0
  LOADK R3 K3 ["insert"]
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+10]
  GETUPVAL R1 0
  DUPTABLE R3 K5 [{"classicComponentsActive"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["classicComponentsActive"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K5 [{"classicComponentsActive"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["classicComponentsActive"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Localization"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["StarterCharacterScripts"]
  JUMPIFNOT R1 [+36]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["DoClassicScriptsExist"]
  MOVE R3 R1
  MOVE R4 R0
  CALL R2 2 1
  JUMPIFNOT R2 [+13]
  GETIMPORT R3 K4 [warn]
  GETIMPORT R4 K7 [string.format]
  LOADK R7 K8 ["InsertComponents"]
  LOADK R8 K9 ["AlreadyExist"]
  NAMECALL R5 R0 K10 ["getText"]
  CALL R5 3 1
  LOADK R6 K1 ["StarterCharacterScripts"]
  CALL R4 2 -1
  CALL R3 -1 0
  RETURN R0 0
  GETIMPORT R3 K12 [print]
  LOADK R6 K8 ["InsertComponents"]
  LOADK R7 K13 ["AddingStarterChar"]
  NAMECALL R4 R0 K10 ["getText"]
  CALL R4 3 -1
  CALL R3 -1 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K8 ["InsertComponents"]
  MOVE R4 R1
  MOVE R5 R0
  LOADB R6 1
  CALL R3 3 0
  RETURN R0 0
  GETIMPORT R2 K4 [warn]
  LOADK R5 K8 ["InsertComponents"]
  LOADK R6 K14 ["NoStarter"]
  NAMECALL R3 R0 K10 ["getText"]
  CALL R3 3 -1
  CALL R2 -1 0
  RETURN R0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["RemoveComponents"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Localization"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K0 ["doClassicScriptsExist"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K1 ["onButtonClicked"]
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  NAMECALL R2 R0 K2 ["setState"]
  CALL R2 2 0
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K3 ["OnUndo"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["OnRedo"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K3 ["OnUndo"]
  GETTABLEKS R4 R0 K3 ["OnUndo"]
  NAMECALL R2 R2 K5 ["connect"]
  CALL R2 2 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K4 ["OnRedo"]
  GETTABLEKS R4 R0 K4 ["OnRedo"]
  NAMECALL R2 R2 K5 ["connect"]
  CALL R2 2 0
  NEWCLOSURE R2 P5
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R0 K6 ["insertComponents"]
  NEWCLOSURE R2 P6
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K7 ["removeComponents"]
  RETURN R0 0

PROTO_8:
  LOADK R0 K0 [""]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["state"]
  GETTABLEKS R1 R2 K2 ["classicComponentsActive"]
  JUMPIFNOT R1 [+23]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["removeComponents"]
  CALL R1 0 0
  LOADK R0 K4 ["remove RobloxClassic components"]
  NEWTABLE R1 1 0
  LOADB R3 0
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K6 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["wasFlippedTo"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["Analytics"]
  LOADK R4 K9 ["classicPluginFlipped"]
  MOVE R5 R1
  NAMECALL R2 R2 K10 ["report"]
  CALL R2 3 0
  JUMP [+22]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K11 ["insertComponents"]
  CALL R1 0 0
  LOADK R0 K12 ["insert RobloxClassic components"]
  NEWTABLE R1 1 0
  LOADB R3 1
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K6 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["wasFlippedTo"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["Analytics"]
  LOADK R4 K9 ["classicPluginFlipped"]
  MOVE R5 R1
  NAMECALL R2 R2 K10 ["report"]
  CALL R2 3 0
  GETUPVAL R1 0
  DUPTABLE R3 K13 [{"classicComponentsActive"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["state"]
  GETTABLEKS R5 R6 K2 ["classicComponentsActive"]
  NOT R4 R5
  SETTABLEKS R4 R3 K2 ["classicComponentsActive"]
  NAMECALL R1 R1 K14 ["setState"]
  CALL R1 2 0
  GETUPVAL R1 2
  MOVE R3 R0
  NAMECALL R1 R1 K15 ["SetWaypoint"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R0 K3 ["state"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["new"]
  CALL R5 0 1
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  SETTABLEKS R6 R0 K5 ["toggleClassicComponentsActive"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K10 [{"Size", "LayoutOrder", "Padding"}]
  GETIMPORT R9 K12 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  GETTABLEKS R13 R3 K13 ["UIHeightPx"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K7 ["Size"]
  NAMECALL R9 R5 K14 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K8 ["LayoutOrder"]
  GETTABLEKS R9 R3 K15 ["PaddingPx"]
  SETTABLEKS R9 R8 K9 ["Padding"]
  DUPTABLE R9 K18 [{"Label", "GridLayoutArea"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K6 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K23 [{"Text", "Size", "AutomaticSize", "LayoutOrder", "TextXAlignment", "TextYAlignment"}]
  LOADK R15 K24 ["Plugin"]
  LOADK R16 K25 ["RobloxClassicComponents"]
  NAMECALL R13 R2 K26 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K19 ["Text"]
  GETIMPORT R13 K28 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K7 ["Size"]
  GETIMPORT R13 K31 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K20 ["AutomaticSize"]
  NAMECALL R13 R5 K14 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K8 ["LayoutOrder"]
  GETIMPORT R13 K33 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K21 ["TextXAlignment"]
  GETIMPORT R13 K35 [Enum.TextYAlignment.Top]
  SETTABLEKS R13 R12 K22 ["TextYAlignment"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["Label"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K6 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K10 [{"Size", "LayoutOrder", "Padding"}]
  GETIMPORT R13 K12 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  GETTABLEKS R17 R3 K36 ["UIGridHeightPx"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K7 ["Size"]
  NAMECALL R13 R5 K14 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K8 ["LayoutOrder"]
  GETTABLEKS R13 R3 K37 ["UIGridTopMarginPx"]
  SETTABLEKS R13 R12 K9 ["Padding"]
  DUPTABLE R13 K41 [{"Layout", "ClassicComponentsToggle", "NPCButton"}]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K6 ["createElement"]
  LOADK R15 K42 ["UIGridLayout"]
  DUPTABLE R16 K49 [{"FillDirection", "CellPadding", "SortOrder", "VerticalAlignment", "HorizontalAlignment", "CellSize"}]
  GETIMPORT R17 K51 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K43 ["FillDirection"]
  GETTABLEKS R17 R3 K52 ["UIGridPadding"]
  SETTABLEKS R17 R16 K44 ["CellPadding"]
  GETIMPORT R17 K53 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K45 ["SortOrder"]
  GETIMPORT R17 K54 [Enum.VerticalAlignment.Top]
  SETTABLEKS R17 R16 K46 ["VerticalAlignment"]
  GETIMPORT R17 K55 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K47 ["HorizontalAlignment"]
  GETTABLEKS R17 R3 K56 ["UIGridCellSize"]
  SETTABLEKS R17 R16 K48 ["CellSize"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K38 ["Layout"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K6 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K59 [{"Selected", "OnClick", "Text", "LayoutOrder"}]
  GETTABLEKS R17 R4 K60 ["classicComponentsActive"]
  SETTABLEKS R17 R16 K57 ["Selected"]
  GETTABLEKS R17 R0 K5 ["toggleClassicComponentsActive"]
  SETTABLEKS R17 R16 K58 ["OnClick"]
  LOADK R19 K61 ["ClassicComponents"]
  LOADK R20 K62 ["Active"]
  NAMECALL R17 R2 K26 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K19 ["Text"]
  NAMECALL R17 R5 K14 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K8 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K39 ["ClassicComponentsToggle"]
  GETTABLEKS R15 R4 K60 ["classicComponentsActive"]
  JUMPIFNOT R15 [+23]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K6 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K63 [{"Text", "OnClick", "LayoutOrder"}]
  LOADK R19 K61 ["ClassicComponents"]
  LOADK R20 K64 ["UpdateNPCs"]
  NAMECALL R17 R2 K26 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K19 ["Text"]
  GETTABLEKS R17 R0 K65 ["onButtonClicked"]
  SETTABLEKS R17 R16 K58 ["OnClick"]
  NAMECALL R17 R5 K14 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K8 ["LayoutOrder"]
  CALL R14 2 1
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K40 ["NPCButton"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K17 ["GridLayoutArea"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Modules"]
  GETTABLEKS R3 R4 K9 ["NpcManager"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K11 ["UI"]
  GETTABLEKS R5 R4 K12 ["TextLabel"]
  GETTABLEKS R6 R4 K13 ["Pane"]
  GETTABLEKS R7 R4 K14 ["Button"]
  GETTABLEKS R8 R3 K15 ["Util"]
  GETTABLEKS R9 R8 K16 ["LayoutOrderIterator"]
  GETTABLEKS R10 R3 K17 ["ContextServices"]
  GETTABLEKS R11 R10 K18 ["Analytics"]
  GETTABLEKS R12 R10 K19 ["Stylizer"]
  GETTABLEKS R13 R10 K20 ["Localization"]
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K7 ["Src"]
  GETTABLEKS R16 R17 K21 ["Components"]
  GETTABLEKS R15 R16 K22 ["LabeledToggleButton"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K7 ["Src"]
  GETTABLEKS R17 R18 K15 ["Util"]
  GETTABLEKS R16 R17 K23 ["scanNPCs"]
  CALL R15 1 1
  GETTABLEKS R16 R1 K24 ["PureComponent"]
  LOADK R18 K25 ["MainView"]
  NAMECALL R16 R16 K26 ["extend"]
  CALL R16 2 1
  GETIMPORT R17 K28 [game]
  LOADK R19 K29 ["ChangeHistoryService"]
  NAMECALL R17 R17 K30 ["GetService"]
  CALL R17 2 1
  GETIMPORT R18 K28 [game]
  LOADK R20 K31 ["StarterPlayer"]
  NAMECALL R18 R18 K30 ["GetService"]
  CALL R18 2 1
  DUPCLOSURE R19 K32 [PROTO_7]
  CAPTURE VAL R18
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R17
  SETTABLEKS R19 R16 K33 ["init"]
  DUPCLOSURE R19 K34 [PROTO_9]
  CAPTURE VAL R9
  CAPTURE VAL R17
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R14
  CAPTURE VAL R7
  SETTABLEKS R19 R16 K35 ["render"]
  GETTABLEKS R19 R10 K36 ["withContext"]
  DUPTABLE R20 K37 [{"Analytics", "Stylizer", "Localization"}]
  SETTABLEKS R11 R20 K18 ["Analytics"]
  SETTABLEKS R12 R20 K19 ["Stylizer"]
  SETTABLEKS R13 R20 K20 ["Localization"]
  CALL R19 1 1
  MOVE R20 R16
  CALL R19 1 1
  MOVE R16 R19
  RETURN R16 1
