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
  LOADNIL R2
  LOADNIL R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["FoundationFixScrollViewTags"]
  JUMPIFNOT R4 [+6]
  GETUPVAL R4 1
  GETTABLEKS R5 R0 K1 ["tag"]
  CALL R4 1 2
  MOVE R2 R4
  MOVE R3 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["FoundationDisableStylingPolyfill"]
  JUMPIF R5 [+12]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["FoundationFixScrollViewTags"]
  JUMPIF R5 [+8]
  GETUPVAL R4 2
  LOADK R5 K3 ["View"]
  GETTABLEKS R6 R0 K1 ["tag"]
  LOADK R7 K4 ["gui-object-defaults"]
  GETUPVAL R8 3
  CALL R4 4 1
  JUMP [+1]
  LOADNIL R4
  GETUPVAL R5 4
  MOVE R6 R0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["FoundationDisableStylingPolyfill"]
  JUMPIF R8 [+6]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["FoundationFixScrollViewTags"]
  JUMPIF R8 [+2]
  MOVE R7 R4
  JUMP [+1]
  GETUPVAL R7 3
  CALL R5 2 1
  GETUPVAL R6 5
  GETTABLEKS R7 R5 K1 ["tag"]
  LOADK R8 K4 ["gui-object-defaults"]
  CALL R6 2 1
  GETUPVAL R7 6
  MOVE R8 R6
  CALL R7 1 1
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K5 ["useState"]
  GETUPVAL R10 8
  GETTABLEKS R9 R10 K6 ["Initialize"]
  CALL R8 1 2
  NEWCLOSURE R10 P0
  CAPTURE VAL R9
  CAPTURE VAL R5
  GETUPVAL R13 9
  GETTABLEKS R12 R13 K7 ["Dictionary"]
  GETTABLEKS R11 R12 K8 ["union"]
  MOVE R12 R5
  NEWTABLE R13 8 0
  SETTABLEKS R10 R13 K9 ["onStateChanged"]
  GETTABLEKS R15 R5 K9 ["onStateChanged"]
  JUMPIF R15 [+3]
  GETTABLEKS R15 R5 K10 ["onActivated"]
  JUMPIFNOT R15 [+3]
  GETTABLEKS R14 R5 K11 ["stateLayer"]
  JUMP [+4]
  DUPTABLE R14 K13 [{"affordance"}]
  LOADK R15 K14 ["None"]
  SETTABLEKS R15 R14 K12 ["affordance"]
  SETTABLEKS R14 R13 K11 ["stateLayer"]
  DUPTABLE R14 K16 [{"Selectable"}]
  LOADB R15 0
  SETTABLEKS R15 R14 K15 ["Selectable"]
  SETTABLEKS R14 R13 K17 ["selection"]
  SETTABLEKS R1 R13 K18 ["ref"]
  GETUPVAL R15 7
  GETTABLEKS R14 R15 K19 ["Tag"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K0 ["FoundationFixScrollViewTags"]
  JUMPIFNOT R16 [+2]
  LOADNIL R15
  JUMP [+1]
  MOVE R15 R7
  SETTABLE R15 R13 R14
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K0 ["FoundationFixScrollViewTags"]
  JUMPIFNOT R15 [+2]
  MOVE R14 R3
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K1 ["tag"]
  CALL R11 2 1
  LOADNIL R12
  SETTABLEKS R12 R11 K20 ["scroll"]
  LOADNIL R12
  SETTABLEKS R12 R11 K21 ["layout"]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K22 ["createElement"]
  GETUPVAL R13 10
  MOVE R14 R11
  DUPTABLE R15 K24 [{"ScrollingFrame"}]
  GETUPVAL R17 7
  GETTABLEKS R16 R17 K22 ["createElement"]
  GETUPVAL R17 11
  DUPTABLE R18 K38 [{"controlState", "selection", "scrollBarVisibility", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "AutomaticSize", "AutomaticCanvasSize", "CanvasSize", "ClipsDescendants", "ScrollingDirection", "ScrollingEnabled", "VerticalScrollBarInset", "HorizontalScrollBarInset", "ref", "tag"}]
  SETTABLEKS R8 R18 K25 ["controlState"]
  GETTABLEKS R19 R5 K17 ["selection"]
  SETTABLEKS R19 R18 K17 ["selection"]
  GETTABLEKS R20 R5 K20 ["scroll"]
  GETTABLEKS R19 R20 K26 ["scrollBarVisibility"]
  SETTABLEKS R19 R18 K26 ["scrollBarVisibility"]
  GETTABLEKS R19 R5 K27 ["onCanvasPositionChanged"]
  SETTABLEKS R19 R18 K27 ["onCanvasPositionChanged"]
  GETTABLEKS R19 R5 K28 ["onAbsoluteCanvasSizeChanged"]
  SETTABLEKS R19 R18 K28 ["onAbsoluteCanvasSizeChanged"]
  GETTABLEKS R19 R5 K29 ["onAbsoluteWindowSizeChanged"]
  SETTABLEKS R19 R18 K29 ["onAbsoluteWindowSizeChanged"]
  GETTABLEKS R20 R5 K20 ["scroll"]
  GETTABLEKS R19 R20 K30 ["AutomaticSize"]
  SETTABLEKS R19 R18 K30 ["AutomaticSize"]
  GETTABLEKS R20 R5 K20 ["scroll"]
  GETTABLEKS R19 R20 K31 ["AutomaticCanvasSize"]
  SETTABLEKS R19 R18 K31 ["AutomaticCanvasSize"]
  GETTABLEKS R20 R5 K20 ["scroll"]
  GETTABLEKS R19 R20 K32 ["CanvasSize"]
  SETTABLEKS R19 R18 K32 ["CanvasSize"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K39 ["FoundationScrollViewMoveClipOutside"]
  JUMPIFNOT R20 [+2]
  LOADB R19 0
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K33 ["ClipsDescendants"]
  GETTABLEKS R20 R5 K20 ["scroll"]
  GETTABLEKS R19 R20 K34 ["ScrollingDirection"]
  SETTABLEKS R19 R18 K34 ["ScrollingDirection"]
  GETTABLEKS R20 R5 K20 ["scroll"]
  GETTABLEKS R19 R20 K35 ["ScrollingEnabled"]
  SETTABLEKS R19 R18 K35 ["ScrollingEnabled"]
  GETTABLEKS R20 R5 K20 ["scroll"]
  GETTABLEKS R19 R20 K36 ["VerticalScrollBarInset"]
  SETTABLEKS R19 R18 K36 ["VerticalScrollBarInset"]
  GETTABLEKS R20 R5 K20 ["scroll"]
  GETTABLEKS R19 R20 K37 ["HorizontalScrollBarInset"]
  SETTABLEKS R19 R18 K37 ["HorizontalScrollBarInset"]
  GETTABLEKS R19 R5 K40 ["scrollingFrameRef"]
  SETTABLEKS R19 R18 K18 ["ref"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K0 ["FoundationFixScrollViewTags"]
  JUMPIFNOT R20 [+2]
  MOVE R19 R2
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K1 ["tag"]
  GETTABLEKS R20 R5 K41 ["children"]
  JUMPIFNOT R20 [+82]
  GETTABLEKS R20 R5 K21 ["layout"]
  JUMPIFEQKNIL R20 [+79]
  GETTABLEKS R21 R5 K21 ["layout"]
  GETTABLEKS R20 R21 K42 ["FillDirection"]
  JUMPIFEQKNIL R20 [+73]
  GETUPVAL R21 9
  GETTABLEKS R20 R21 K7 ["Dictionary"]
  GETTABLEKS R19 R20 K8 ["union"]
  DUPTABLE R20 K44 [{"ListLayout"}]
  GETUPVAL R22 7
  GETTABLEKS R21 R22 K22 ["createElement"]
  LOADK R22 K45 ["UIListLayout"]
  DUPTABLE R23 K54 [{"FillDirection", "ItemLineAlignment", "HorizontalAlignment", "HorizontalFlex", "VerticalAlignment", "VerticalFlex", "Padding", "SortOrder", "Wraps"}]
  GETTABLEKS R25 R5 K21 ["layout"]
  GETTABLEKS R24 R25 K42 ["FillDirection"]
  SETTABLEKS R24 R23 K42 ["FillDirection"]
  GETTABLEKS R25 R5 K21 ["layout"]
  GETTABLEKS R24 R25 K46 ["ItemLineAlignment"]
  SETTABLEKS R24 R23 K46 ["ItemLineAlignment"]
  GETTABLEKS R25 R5 K21 ["layout"]
  GETTABLEKS R24 R25 K47 ["HorizontalAlignment"]
  SETTABLEKS R24 R23 K47 ["HorizontalAlignment"]
  GETTABLEKS R25 R5 K21 ["layout"]
  GETTABLEKS R24 R25 K48 ["HorizontalFlex"]
  SETTABLEKS R24 R23 K48 ["HorizontalFlex"]
  GETTABLEKS R25 R5 K21 ["layout"]
  GETTABLEKS R24 R25 K49 ["VerticalAlignment"]
  SETTABLEKS R24 R23 K49 ["VerticalAlignment"]
  GETTABLEKS R25 R5 K21 ["layout"]
  GETTABLEKS R24 R25 K50 ["VerticalFlex"]
  SETTABLEKS R24 R23 K50 ["VerticalFlex"]
  GETTABLEKS R25 R5 K21 ["layout"]
  GETTABLEKS R24 R25 K51 ["Padding"]
  SETTABLEKS R24 R23 K51 ["Padding"]
  GETTABLEKS R25 R5 K21 ["layout"]
  GETTABLEKS R24 R25 K52 ["SortOrder"]
  SETTABLEKS R24 R23 K52 ["SortOrder"]
  GETTABLEKS R25 R5 K21 ["layout"]
  GETTABLEKS R24 R25 K53 ["Wraps"]
  SETTABLEKS R24 R23 K53 ["Wraps"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K43 ["ListLayout"]
  GETTABLEKS R21 R5 K41 ["children"]
  CALL R19 2 1
  JUMP [+2]
  GETTABLEKS R19 R5 K41 ["children"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ScrollingFrame"]
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
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K11 ["ScrollingFrame"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K12 ["Components"]
  GETTABLEKS R7 R8 K13 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K12 ["Components"]
  GETTABLEKS R8 R9 K14 ["View"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K7 ["Utility"]
  GETTABLEKS R9 R10 K15 ["withDefaults"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K7 ["Utility"]
  GETTABLEKS R10 R11 K16 ["useDefaultTags"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K7 ["Utility"]
  GETTABLEKS R11 R12 K17 ["useStyledDefaults"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K4 ["Parent"]
  GETTABLEKS R12 R13 K18 ["separateLayoutTags"]
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
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R5
  GETTABLEKS R17 R3 K44 ["memo"]
  GETTABLEKS R18 R3 K45 ["forwardRef"]
  MOVE R19 R16
  CALL R18 1 -1
  CALL R17 -1 -1
  RETURN R17 -1
