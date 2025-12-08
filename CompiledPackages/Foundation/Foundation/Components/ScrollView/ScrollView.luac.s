PROTO_0:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["onStateChanged"]
  JUMPIFEQKNIL R1 [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["onStateChanged"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["FoundationDisableStylingPolyfill"]
  JUMPIF R3 [+8]
  GETUPVAL R2 1
  LOADK R3 K1 ["View"]
  GETTABLEKS R4 R0 K2 ["tag"]
  LOADK R5 K3 ["gui-object-defaults"]
  GETUPVAL R6 2
  CALL R2 4 1
  JUMP [+1]
  LOADNIL R2
  GETUPVAL R3 3
  MOVE R4 R0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["FoundationDisableStylingPolyfill"]
  JUMPIF R6 [+2]
  MOVE R5 R2
  JUMP [+1]
  GETUPVAL R5 2
  CALL R3 2 1
  GETUPVAL R4 4
  GETTABLEKS R5 R3 K2 ["tag"]
  LOADK R6 K3 ["gui-object-defaults"]
  CALL R4 2 1
  GETUPVAL R5 5
  MOVE R6 R4
  CALL R5 1 1
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K4 ["useState"]
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K5 ["Initialize"]
  CALL R6 1 2
  NEWCLOSURE R8 P0
  CAPTURE VAL R7
  CAPTURE VAL R3
  NEWTABLE R9 8 0
  SETTABLEKS R8 R9 K6 ["onStateChanged"]
  GETTABLEKS R11 R3 K6 ["onStateChanged"]
  JUMPIF R11 [+3]
  GETTABLEKS R11 R3 K7 ["onActivated"]
  JUMPIFNOT R11 [+3]
  GETTABLEKS R10 R3 K8 ["stateLayer"]
  JUMP [+4]
  DUPTABLE R10 K10 [{"affordance"}]
  LOADK R11 K11 ["None"]
  SETTABLEKS R11 R10 K9 ["affordance"]
  SETTABLEKS R10 R9 K8 ["stateLayer"]
  DUPTABLE R10 K13 [{"Selectable"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K12 ["Selectable"]
  SETTABLEKS R10 R9 K14 ["selection"]
  SETTABLEKS R1 R9 K15 ["ref"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K16 ["Tag"]
  SETTABLE R5 R9 R10
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K17 ["FoundationMigrateCryoToDash"]
  JUMPIFNOT R11 [+7]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K18 ["union"]
  MOVE R11 R3
  MOVE R12 R9
  CALL R10 2 1
  JUMP [+8]
  GETUPVAL R12 9
  GETTABLEKS R11 R12 K19 ["Dictionary"]
  GETTABLEKS R10 R11 K18 ["union"]
  MOVE R11 R3
  MOVE R12 R9
  CALL R10 2 1
  LOADNIL R11
  SETTABLEKS R11 R10 K20 ["scroll"]
  LOADNIL R11
  SETTABLEKS R11 R10 K21 ["layout"]
  DUPTABLE R11 K23 [{"ListLayout"}]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K24 ["createElement"]
  LOADK R13 K25 ["UIListLayout"]
  DUPTABLE R14 K35 [{"FillDirection", "ItemLineAlignment", "HorizontalAlignment", "HorizontalFlex", "VerticalAlignment", "VerticalFlex", "Padding", "SortOrder", "Wraps"}]
  GETTABLEKS R16 R3 K21 ["layout"]
  GETTABLEKS R15 R16 K26 ["FillDirection"]
  SETTABLEKS R15 R14 K26 ["FillDirection"]
  GETTABLEKS R16 R3 K21 ["layout"]
  GETTABLEKS R15 R16 K27 ["ItemLineAlignment"]
  SETTABLEKS R15 R14 K27 ["ItemLineAlignment"]
  GETTABLEKS R16 R3 K21 ["layout"]
  GETTABLEKS R15 R16 K28 ["HorizontalAlignment"]
  SETTABLEKS R15 R14 K28 ["HorizontalAlignment"]
  GETTABLEKS R16 R3 K21 ["layout"]
  GETTABLEKS R15 R16 K29 ["HorizontalFlex"]
  SETTABLEKS R15 R14 K29 ["HorizontalFlex"]
  GETTABLEKS R16 R3 K21 ["layout"]
  GETTABLEKS R15 R16 K30 ["VerticalAlignment"]
  SETTABLEKS R15 R14 K30 ["VerticalAlignment"]
  GETTABLEKS R16 R3 K21 ["layout"]
  GETTABLEKS R15 R16 K31 ["VerticalFlex"]
  SETTABLEKS R15 R14 K31 ["VerticalFlex"]
  GETTABLEKS R16 R3 K21 ["layout"]
  GETTABLEKS R15 R16 K32 ["Padding"]
  SETTABLEKS R15 R14 K32 ["Padding"]
  GETTABLEKS R16 R3 K21 ["layout"]
  GETTABLEKS R15 R16 K33 ["SortOrder"]
  SETTABLEKS R15 R14 K33 ["SortOrder"]
  GETTABLEKS R16 R3 K21 ["layout"]
  GETTABLEKS R15 R16 K34 ["Wraps"]
  SETTABLEKS R15 R14 K34 ["Wraps"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K22 ["ListLayout"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K24 ["createElement"]
  GETUPVAL R13 10
  MOVE R14 R10
  DUPTABLE R15 K37 [{"ScrollingFrame"}]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K24 ["createElement"]
  GETUPVAL R17 11
  DUPTABLE R18 K51 [{"controlState", "selection", "scrollBarVisibility", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "AutomaticSize", "AutomaticCanvasSize", "CanvasSize", "ClipsDescendants", "ScrollingDirection", "ScrollingEnabled", "VerticalScrollBarInset", "HorizontalScrollBarInset", "ref"}]
  SETTABLEKS R6 R18 K38 ["controlState"]
  GETTABLEKS R19 R3 K14 ["selection"]
  SETTABLEKS R19 R18 K14 ["selection"]
  GETTABLEKS R20 R3 K20 ["scroll"]
  GETTABLEKS R19 R20 K39 ["scrollBarVisibility"]
  SETTABLEKS R19 R18 K39 ["scrollBarVisibility"]
  GETTABLEKS R19 R3 K40 ["onCanvasPositionChanged"]
  SETTABLEKS R19 R18 K40 ["onCanvasPositionChanged"]
  GETTABLEKS R19 R3 K41 ["onAbsoluteCanvasSizeChanged"]
  SETTABLEKS R19 R18 K41 ["onAbsoluteCanvasSizeChanged"]
  GETTABLEKS R19 R3 K42 ["onAbsoluteWindowSizeChanged"]
  SETTABLEKS R19 R18 K42 ["onAbsoluteWindowSizeChanged"]
  GETTABLEKS R20 R3 K20 ["scroll"]
  GETTABLEKS R19 R20 K43 ["AutomaticSize"]
  SETTABLEKS R19 R18 K43 ["AutomaticSize"]
  GETTABLEKS R20 R3 K20 ["scroll"]
  GETTABLEKS R19 R20 K44 ["AutomaticCanvasSize"]
  SETTABLEKS R19 R18 K44 ["AutomaticCanvasSize"]
  GETTABLEKS R20 R3 K20 ["scroll"]
  GETTABLEKS R19 R20 K45 ["CanvasSize"]
  SETTABLEKS R19 R18 K45 ["CanvasSize"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K52 ["FoundationScrollViewMoveClipOutside"]
  JUMPIFNOT R20 [+2]
  LOADB R19 0
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K46 ["ClipsDescendants"]
  GETTABLEKS R20 R3 K20 ["scroll"]
  GETTABLEKS R19 R20 K47 ["ScrollingDirection"]
  SETTABLEKS R19 R18 K47 ["ScrollingDirection"]
  GETTABLEKS R20 R3 K20 ["scroll"]
  GETTABLEKS R19 R20 K48 ["ScrollingEnabled"]
  SETTABLEKS R19 R18 K48 ["ScrollingEnabled"]
  GETTABLEKS R20 R3 K20 ["scroll"]
  GETTABLEKS R19 R20 K49 ["VerticalScrollBarInset"]
  SETTABLEKS R19 R18 K49 ["VerticalScrollBarInset"]
  GETTABLEKS R20 R3 K20 ["scroll"]
  GETTABLEKS R19 R20 K50 ["HorizontalScrollBarInset"]
  SETTABLEKS R19 R18 K50 ["HorizontalScrollBarInset"]
  GETTABLEKS R19 R3 K53 ["scrollingFrameRef"]
  SETTABLEKS R19 R18 K15 ["ref"]
  GETTABLEKS R20 R3 K54 ["children"]
  JUMPIFNOT R20 [+40]
  GETTABLEKS R21 R3 K54 ["children"]
  FASTCALL1 TYPEOF R21 [+2]
  GETIMPORT R20 K56 [typeof]
  CALL R20 1 1
  JUMPIFNOTEQKS R20 K57 ["table"] [+33]
  GETTABLEKS R20 R3 K21 ["layout"]
  JUMPIFEQKNIL R20 [+29]
  GETTABLEKS R21 R3 K21 ["layout"]
  GETTABLEKS R20 R21 K26 ["FillDirection"]
  JUMPIFEQKNIL R20 [+23]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K17 ["FoundationMigrateCryoToDash"]
  JUMPIFNOT R20 [+8]
  GETUPVAL R20 8
  GETTABLEKS R19 R20 K18 ["union"]
  MOVE R20 R11
  GETTABLEKS R21 R3 K54 ["children"]
  CALL R19 2 1
  JUMP [+12]
  GETUPVAL R21 9
  GETTABLEKS R20 R21 K19 ["Dictionary"]
  GETTABLEKS R19 R20 K18 ["union"]
  MOVE R20 R11
  GETTABLEKS R21 R3 K54 ["children"]
  CALL R19 2 1
  JUMP [+2]
  GETTABLEKS R19 R3 K54 ["children"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K36 ["ScrollingFrame"]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Utility"]
  GETTABLEKS R3 R4 K8 ["Flags"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K10 ["Cryo"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K11 ["Dash"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K4 ["Parent"]
  GETTABLEKS R7 R8 K12 ["ScrollingFrame"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K13 ["Components"]
  GETTABLEKS R8 R9 K14 ["Types"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K13 ["Components"]
  GETTABLEKS R9 R10 K15 ["View"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K7 ["Utility"]
  GETTABLEKS R10 R11 K16 ["withDefaults"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K7 ["Utility"]
  GETTABLEKS R11 R12 K17 ["useDefaultTags"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R0 K7 ["Utility"]
  GETTABLEKS R12 R13 K18 ["useStyledDefaults"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R15 R0 K19 ["Providers"]
  GETTABLEKS R14 R15 K20 ["Style"]
  GETTABLEKS R13 R14 K21 ["useStyleTags"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R0 K22 ["Enums"]
  GETTABLEKS R14 R15 K23 ["Visibility"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R16 R0 K22 ["Enums"]
  GETTABLEKS R15 R16 K24 ["ControlState"]
  CALL R14 1 1
  DUPTABLE R15 K32 [{"layout", "scroll", "AutoLocalize", "BorderSizePixel", "ClipsDescendants", "isDisabled", "testId"}]
  DUPTABLE R16 K34 [{"SortOrder"}]
  GETIMPORT R17 K37 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K33 ["SortOrder"]
  SETTABLEKS R16 R15 K25 ["layout"]
  DUPTABLE R16 K39 [{"scrollBarVisibility"}]
  GETTABLEKS R17 R13 K40 ["Auto"]
  SETTABLEKS R17 R16 K38 ["scrollBarVisibility"]
  SETTABLEKS R16 R15 K26 ["scroll"]
  LOADB R16 0
  SETTABLEKS R16 R15 K27 ["AutoLocalize"]
  LOADN R16 0
  SETTABLEKS R16 R15 K28 ["BorderSizePixel"]
  GETTABLEKS R17 R2 K41 ["FoundationScrollViewMoveClipOutside"]
  JUMPIFNOT R17 [+2]
  LOADB R16 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K29 ["ClipsDescendants"]
  LOADB R16 0
  SETTABLEKS R16 R15 K30 ["isDisabled"]
  LOADK R16 K42 ["--foundation-scroll-view"]
  SETTABLEKS R16 R15 K31 ["testId"]
  DUPCLOSURE R16 K43 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R15
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R6
  GETTABLEKS R17 R3 K44 ["memo"]
  GETTABLEKS R18 R3 K45 ["forwardRef"]
  MOVE R19 R16
  CALL R18 1 -1
  CALL R17 -1 -1
  RETURN R17 -1
