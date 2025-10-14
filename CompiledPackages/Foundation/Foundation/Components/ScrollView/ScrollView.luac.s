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
  JUMPIF R3 [+12]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["FoundationFixScrollViewBackgroundForStylingV2"]
  JUMPIF R3 [+8]
  GETUPVAL R2 1
  LOADK R3 K2 ["View"]
  GETTABLEKS R4 R0 K3 ["tag"]
  LOADK R5 K4 ["gui-object-defaults"]
  GETUPVAL R6 2
  CALL R2 4 1
  JUMP [+1]
  LOADNIL R2
  GETUPVAL R3 3
  MOVE R4 R0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["FoundationDisableStylingPolyfill"]
  JUMPIF R6 [+6]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["FoundationFixScrollViewBackgroundForStylingV2"]
  JUMPIF R6 [+2]
  MOVE R5 R2
  JUMP [+1]
  GETUPVAL R5 2
  CALL R3 2 1
  GETUPVAL R4 4
  GETTABLEKS R5 R3 K3 ["tag"]
  LOADK R6 K4 ["gui-object-defaults"]
  CALL R4 2 1
  GETUPVAL R5 5
  MOVE R6 R4
  CALL R5 1 1
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K5 ["useState"]
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K6 ["Initialize"]
  CALL R6 1 2
  NEWCLOSURE R8 P0
  CAPTURE VAL R7
  CAPTURE VAL R3
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K7 ["Dictionary"]
  GETTABLEKS R9 R10 K8 ["union"]
  MOVE R10 R3
  NEWTABLE R11 8 0
  SETTABLEKS R8 R11 K9 ["onStateChanged"]
  GETTABLEKS R13 R3 K9 ["onStateChanged"]
  JUMPIF R13 [+3]
  GETTABLEKS R13 R3 K10 ["onActivated"]
  JUMPIFNOT R13 [+3]
  GETTABLEKS R12 R3 K11 ["stateLayer"]
  JUMP [+4]
  DUPTABLE R12 K13 [{"affordance"}]
  LOADK R13 K14 ["None"]
  SETTABLEKS R13 R12 K12 ["affordance"]
  SETTABLEKS R12 R11 K11 ["stateLayer"]
  DUPTABLE R12 K16 [{"Selectable"}]
  LOADB R13 0
  SETTABLEKS R13 R12 K15 ["Selectable"]
  SETTABLEKS R12 R11 K17 ["selection"]
  SETTABLEKS R1 R11 K18 ["ref"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K19 ["Tag"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["FoundationFixScrollViewBackgroundForStylingV2"]
  JUMPIFNOT R14 [+2]
  LOADNIL R13
  JUMP [+1]
  MOVE R13 R5
  SETTABLE R13 R11 R12
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K1 ["FoundationFixScrollViewBackgroundForStylingV2"]
  JUMPIFNOT R13 [+3]
  GETTABLEKS R12 R3 K3 ["tag"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K3 ["tag"]
  CALL R9 2 1
  LOADNIL R10
  SETTABLEKS R10 R9 K20 ["scroll"]
  LOADNIL R10
  SETTABLEKS R10 R9 K21 ["layout"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K22 ["createElement"]
  GETUPVAL R11 9
  MOVE R12 R9
  DUPTABLE R13 K24 [{"ScrollingFrame"}]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K22 ["createElement"]
  GETUPVAL R15 10
  DUPTABLE R16 K35 [{"controlState", "scrollBarVisibility", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset", "HorizontalScrollBarInset", "ref"}]
  SETTABLEKS R6 R16 K25 ["controlState"]
  GETTABLEKS R18 R3 K20 ["scroll"]
  GETTABLEKS R17 R18 K26 ["scrollBarVisibility"]
  SETTABLEKS R17 R16 K26 ["scrollBarVisibility"]
  GETTABLEKS R17 R3 K27 ["onCanvasPositionChanged"]
  SETTABLEKS R17 R16 K27 ["onCanvasPositionChanged"]
  GETTABLEKS R17 R3 K28 ["onAbsoluteCanvasSizeChanged"]
  SETTABLEKS R17 R16 K28 ["onAbsoluteCanvasSizeChanged"]
  GETTABLEKS R17 R3 K29 ["onAbsoluteWindowSizeChanged"]
  SETTABLEKS R17 R16 K29 ["onAbsoluteWindowSizeChanged"]
  GETTABLEKS R18 R3 K20 ["scroll"]
  GETTABLEKS R17 R18 K30 ["AutomaticCanvasSize"]
  SETTABLEKS R17 R16 K30 ["AutomaticCanvasSize"]
  GETTABLEKS R18 R3 K20 ["scroll"]
  GETTABLEKS R17 R18 K31 ["CanvasSize"]
  SETTABLEKS R17 R16 K31 ["CanvasSize"]
  GETTABLEKS R18 R3 K20 ["scroll"]
  GETTABLEKS R17 R18 K32 ["ScrollingDirection"]
  SETTABLEKS R17 R16 K32 ["ScrollingDirection"]
  GETTABLEKS R18 R3 K20 ["scroll"]
  GETTABLEKS R17 R18 K33 ["VerticalScrollBarInset"]
  SETTABLEKS R17 R16 K33 ["VerticalScrollBarInset"]
  GETTABLEKS R18 R3 K20 ["scroll"]
  GETTABLEKS R17 R18 K34 ["HorizontalScrollBarInset"]
  SETTABLEKS R17 R16 K34 ["HorizontalScrollBarInset"]
  GETTABLEKS R17 R3 K36 ["scrollingFrameRef"]
  SETTABLEKS R17 R16 K18 ["ref"]
  GETTABLEKS R18 R3 K37 ["children"]
  JUMPIFNOT R18 [+82]
  GETTABLEKS R18 R3 K21 ["layout"]
  JUMPIFEQKNIL R18 [+79]
  GETTABLEKS R19 R3 K21 ["layout"]
  GETTABLEKS R18 R19 K38 ["FillDirection"]
  JUMPIFEQKNIL R18 [+73]
  GETUPVAL R19 8
  GETTABLEKS R18 R19 K7 ["Dictionary"]
  GETTABLEKS R17 R18 K8 ["union"]
  DUPTABLE R18 K40 [{"ListLayout"}]
  GETUPVAL R20 6
  GETTABLEKS R19 R20 K22 ["createElement"]
  LOADK R20 K41 ["UIListLayout"]
  DUPTABLE R21 K50 [{"FillDirection", "ItemLineAlignment", "HorizontalAlignment", "HorizontalFlex", "VerticalAlignment", "VerticalFlex", "Padding", "SortOrder", "Wraps"}]
  GETTABLEKS R23 R3 K21 ["layout"]
  GETTABLEKS R22 R23 K38 ["FillDirection"]
  SETTABLEKS R22 R21 K38 ["FillDirection"]
  GETTABLEKS R23 R3 K21 ["layout"]
  GETTABLEKS R22 R23 K42 ["ItemLineAlignment"]
  SETTABLEKS R22 R21 K42 ["ItemLineAlignment"]
  GETTABLEKS R23 R3 K21 ["layout"]
  GETTABLEKS R22 R23 K43 ["HorizontalAlignment"]
  SETTABLEKS R22 R21 K43 ["HorizontalAlignment"]
  GETTABLEKS R23 R3 K21 ["layout"]
  GETTABLEKS R22 R23 K44 ["HorizontalFlex"]
  SETTABLEKS R22 R21 K44 ["HorizontalFlex"]
  GETTABLEKS R23 R3 K21 ["layout"]
  GETTABLEKS R22 R23 K45 ["VerticalAlignment"]
  SETTABLEKS R22 R21 K45 ["VerticalAlignment"]
  GETTABLEKS R23 R3 K21 ["layout"]
  GETTABLEKS R22 R23 K46 ["VerticalFlex"]
  SETTABLEKS R22 R21 K46 ["VerticalFlex"]
  GETTABLEKS R23 R3 K21 ["layout"]
  GETTABLEKS R22 R23 K47 ["Padding"]
  SETTABLEKS R22 R21 K47 ["Padding"]
  GETTABLEKS R23 R3 K21 ["layout"]
  GETTABLEKS R22 R23 K48 ["SortOrder"]
  SETTABLEKS R22 R21 K48 ["SortOrder"]
  GETTABLEKS R23 R3 K21 ["layout"]
  GETTABLEKS R22 R23 K49 ["Wraps"]
  SETTABLEKS R22 R21 K49 ["Wraps"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K39 ["ListLayout"]
  GETTABLEKS R19 R3 K37 ["children"]
  CALL R17 2 1
  JUMP [+2]
  GETTABLEKS R17 R3 K37 ["children"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K23 ["ScrollingFrame"]
  CALL R10 3 -1
  RETURN R10 -1

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
  GETTABLEKS R14 R0 K18 ["Providers"]
  GETTABLEKS R13 R14 K19 ["Style"]
  GETTABLEKS R12 R13 K20 ["useStyleTags"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R0 K21 ["Enums"]
  GETTABLEKS R13 R14 K22 ["Visibility"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R0 K21 ["Enums"]
  GETTABLEKS R14 R15 K23 ["ControlState"]
  CALL R13 1 1
  DUPTABLE R14 K29 [{"layout", "scroll", "AutoLocalize", "BorderSizePixel", "isDisabled"}]
  DUPTABLE R15 K31 [{"SortOrder"}]
  GETIMPORT R16 K34 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K30 ["SortOrder"]
  SETTABLEKS R15 R14 K24 ["layout"]
  DUPTABLE R15 K36 [{"scrollBarVisibility"}]
  GETTABLEKS R16 R12 K37 ["Auto"]
  SETTABLEKS R16 R15 K35 ["scrollBarVisibility"]
  SETTABLEKS R15 R14 K25 ["scroll"]
  LOADB R15 0
  SETTABLEKS R15 R14 K26 ["AutoLocalize"]
  LOADN R15 0
  SETTABLEKS R15 R14 K27 ["BorderSizePixel"]
  LOADB R15 0
  SETTABLEKS R15 R14 K28 ["isDisabled"]
  DUPCLOSURE R15 K38 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R5
  GETTABLEKS R16 R3 K39 ["memo"]
  GETTABLEKS R17 R3 K40 ["forwardRef"]
  MOVE R18 R15
  CALL R17 1 -1
  CALL R16 -1 -1
  RETURN R16 -1
