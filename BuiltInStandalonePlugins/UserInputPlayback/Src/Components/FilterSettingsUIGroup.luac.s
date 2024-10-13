PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["SetMouseMoveEnabled"]
  GETTABLEKS R3 R0 K2 ["EnabledMouseMove"]
  NOT R2 R3
  GETTABLEKS R3 R0 K3 ["RoduxStoreContext"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["SetMouseClickEnabled"]
  GETTABLEKS R3 R0 K2 ["EnabledMouseClick"]
  NOT R2 R3
  GETTABLEKS R3 R0 K3 ["RoduxStoreContext"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["SetKeyboardEnabled"]
  GETTABLEKS R3 R0 K2 ["EnabledKeyboard"]
  NOT R2 R3
  GETTABLEKS R3 R0 K3 ["RoduxStoreContext"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["SetGamepadEnabled"]
  GETTABLEKS R3 R0 K2 ["EnabledGamepad"]
  NOT R2 R3
  GETTABLEKS R3 R0 K3 ["RoduxStoreContext"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["SetTouchEnabled"]
  GETTABLEKS R3 R0 K2 ["EnabledTouch"]
  NOT R2 R3
  GETTABLEKS R3 R0 K3 ["RoduxStoreContext"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R3 R1 K0 ["RoduxStoreContext"]
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K2 [assert]
  CALL R2 1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K3 ["toggleMouseMove"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["toggleMouseClick"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K5 ["toggleKeyboard"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["toggleGamepad"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["toggleTouch"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["Disabled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K14 [{"LayoutOrder", "Style", "Size", "AutomaticSize", "Layout", "Spacing", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
  GETTABLEKS R8 R1 K5 ["LayoutOrder"]
  SETTABLEKS R8 R7 K5 ["LayoutOrder"]
  LOADK R8 K15 ["CornerBox"]
  SETTABLEKS R8 R7 K6 ["Style"]
  GETIMPORT R8 K18 [UDim2.fromOffset]
  GETTABLEKS R9 R3 K19 ["UIGroupWidthPx"]
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["Size"]
  GETIMPORT R8 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R8 R7 K8 ["AutomaticSize"]
  GETIMPORT R8 K25 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K9 ["Layout"]
  GETIMPORT R8 K28 [UDim.new]
  LOADN R9 0
  GETTABLEKS R10 R3 K29 ["PaddingPx"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["Spacing"]
  GETTABLEKS R8 R3 K29 ["PaddingPx"]
  SETTABLEKS R8 R7 K11 ["Padding"]
  GETIMPORT R8 K31 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R8 R7 K12 ["HorizontalAlignment"]
  GETIMPORT R8 K33 [Enum.VerticalAlignment.Top]
  SETTABLEKS R8 R7 K13 ["VerticalAlignment"]
  DUPTABLE R8 K36 [{"Label", "GridLayoutArea"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K40 [{"Text", "Size", "AutomaticSize", "LayoutOrder", "TextXAlignment", "TextYAlignment"}]
  LOADK R14 K41 ["PlaybackTabView"]
  LOADK R15 K42 ["FilterEventsLabel"]
  NAMECALL R12 R2 K43 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K37 ["Text"]
  GETIMPORT R12 K45 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K7 ["Size"]
  GETIMPORT R12 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K8 ["AutomaticSize"]
  LOADN R12 0
  SETTABLEKS R12 R11 K5 ["LayoutOrder"]
  GETIMPORT R12 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K38 ["TextXAlignment"]
  GETIMPORT R12 K47 [Enum.TextYAlignment.Top]
  SETTABLEKS R12 R11 K39 ["TextYAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K34 ["Label"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K48 [{"Size", "LayoutOrder"}]
  GETIMPORT R12 K49 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R16 R3 K50 ["GridAreaHeightPx"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K7 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K5 ["LayoutOrder"]
  DUPTABLE R12 K56 [{"Layout", "MouseMoveEnabled", "MouseClickEnabled", "KeyboardEnabled", "GamepadEnabled", "TouchEnabled"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  LOADK R14 K57 ["UIGridLayout"]
  DUPTABLE R15 K61 [{"FillDirection", "CellPadding", "SortOrder", "VerticalAlignment", "HorizontalAlignment", "CellSize"}]
  GETIMPORT R16 K25 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K23 ["FillDirection"]
  GETIMPORT R16 K18 [UDim2.fromOffset]
  GETTABLEKS R17 R3 K29 ["PaddingPx"]
  GETTABLEKS R18 R3 K62 ["GridCellPaddingYPx"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K58 ["CellPadding"]
  GETIMPORT R16 K63 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K59 ["SortOrder"]
  GETIMPORT R16 K33 [Enum.VerticalAlignment.Top]
  SETTABLEKS R16 R15 K13 ["VerticalAlignment"]
  GETIMPORT R16 K65 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K12 ["HorizontalAlignment"]
  GETTABLEKS R16 R3 K66 ["GridLayoutCellSize"]
  SETTABLEKS R16 R15 K60 ["CellSize"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K9 ["Layout"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K69 [{"Selected", "OnClick", "Text", "Disabled"}]
  GETTABLEKS R16 R1 K70 ["EnabledMouseMove"]
  SETTABLEKS R16 R15 K67 ["Selected"]
  GETTABLEKS R16 R0 K71 ["toggleMouseMove"]
  SETTABLEKS R16 R15 K68 ["OnClick"]
  LOADK R18 K72 ["RecordTabView"]
  LOADK R19 K73 ["FilterNameMouseMove"]
  NAMECALL R16 R2 K43 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["Text"]
  SETTABLEKS R4 R15 K3 ["Disabled"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K51 ["MouseMoveEnabled"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K69 [{"Selected", "OnClick", "Text", "Disabled"}]
  GETTABLEKS R16 R1 K74 ["EnabledMouseClick"]
  SETTABLEKS R16 R15 K67 ["Selected"]
  GETTABLEKS R16 R0 K75 ["toggleMouseClick"]
  SETTABLEKS R16 R15 K68 ["OnClick"]
  LOADK R18 K72 ["RecordTabView"]
  LOADK R19 K76 ["FilterNameMouseClick"]
  NAMECALL R16 R2 K43 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["Text"]
  SETTABLEKS R4 R15 K3 ["Disabled"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K52 ["MouseClickEnabled"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K69 [{"Selected", "OnClick", "Text", "Disabled"}]
  GETTABLEKS R16 R1 K77 ["EnabledKeyboard"]
  SETTABLEKS R16 R15 K67 ["Selected"]
  GETTABLEKS R16 R0 K78 ["toggleKeyboard"]
  SETTABLEKS R16 R15 K68 ["OnClick"]
  LOADK R18 K72 ["RecordTabView"]
  LOADK R19 K79 ["FilterNameKeyboard"]
  NAMECALL R16 R2 K43 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["Text"]
  SETTABLEKS R4 R15 K3 ["Disabled"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K53 ["KeyboardEnabled"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K69 [{"Selected", "OnClick", "Text", "Disabled"}]
  GETTABLEKS R16 R1 K80 ["EnabledGamepad"]
  SETTABLEKS R16 R15 K67 ["Selected"]
  GETTABLEKS R16 R0 K81 ["toggleGamepad"]
  SETTABLEKS R16 R15 K68 ["OnClick"]
  LOADK R18 K72 ["RecordTabView"]
  LOADK R19 K82 ["FilterNameGamepad"]
  NAMECALL R16 R2 K43 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["Text"]
  SETTABLEKS R4 R15 K3 ["Disabled"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K54 ["GamepadEnabled"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K69 [{"Selected", "OnClick", "Text", "Disabled"}]
  GETTABLEKS R16 R1 K83 ["EnabledTouch"]
  SETTABLEKS R16 R15 K67 ["Selected"]
  GETTABLEKS R16 R0 K84 ["toggleTouch"]
  SETTABLEKS R16 R15 K68 ["OnClick"]
  LOADK R18 K72 ["RecordTabView"]
  LOADK R19 K85 ["FilterNameTouch"]
  NAMECALL R16 R2 K43 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["Text"]
  SETTABLEKS R4 R15 K3 ["Disabled"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K55 ["TouchEnabled"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K35 ["GridLayoutArea"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_7:
  GETTABLEKS R2 R1 K0 ["RoduxStoreContext"]
  GETTABLE R3 R0 R2
  DUPTABLE R4 K6 [{"EnabledMouseMove", "EnabledMouseClick", "EnabledKeyboard", "EnabledGamepad", "EnabledTouch"}]
  GETTABLEKS R5 R3 K7 ["mouseMove"]
  SETTABLEKS R5 R4 K1 ["EnabledMouseMove"]
  GETTABLEKS R5 R3 K8 ["mouseClick"]
  SETTABLEKS R5 R4 K2 ["EnabledMouseClick"]
  GETTABLEKS R5 R3 K9 ["keyboard"]
  SETTABLEKS R5 R4 K3 ["EnabledKeyboard"]
  GETTABLEKS R5 R3 K10 ["gamepad"]
  SETTABLEKS R5 R4 K4 ["EnabledGamepad"]
  GETTABLEKS R5 R3 K11 ["touch"]
  SETTABLEKS R5 R4 K5 ["EnabledTouch"]
  RETURN R4 1

PROTO_8:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K5 [{"SetMouseMoveEnabled", "SetMouseClickEnabled", "SetKeyboardEnabled", "SetGamepadEnabled", "SetTouchEnabled"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetMouseMoveEnabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetMouseClickEnabled"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["SetKeyboardEnabled"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["SetGamepadEnabled"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["SetTouchEnabled"]
  RETURN R1 1

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
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R3 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["TextLabel"]
  GETTABLEKS R7 R5 K12 ["Pane"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K14 ["Components"]
  GETTABLEKS R9 R10 K15 ["LabeledToggleButton"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R13 R0 K13 ["Src"]
  GETTABLEKS R12 R13 K16 ["Actions"]
  GETTABLEKS R11 R12 K17 ["EventTypeEnabled"]
  GETTABLEKS R10 R11 K18 ["SetGamepadEnabled"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R14 R0 K13 ["Src"]
  GETTABLEKS R13 R14 K16 ["Actions"]
  GETTABLEKS R12 R13 K17 ["EventTypeEnabled"]
  GETTABLEKS R11 R12 K19 ["SetKeyboardEnabled"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R15 R0 K13 ["Src"]
  GETTABLEKS R14 R15 K16 ["Actions"]
  GETTABLEKS R13 R14 K17 ["EventTypeEnabled"]
  GETTABLEKS R12 R13 K20 ["SetMouseClickEnabled"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R16 R0 K13 ["Src"]
  GETTABLEKS R15 R16 K16 ["Actions"]
  GETTABLEKS R14 R15 K17 ["EventTypeEnabled"]
  GETTABLEKS R13 R14 K21 ["SetMouseMoveEnabled"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R17 R0 K13 ["Src"]
  GETTABLEKS R16 R17 K16 ["Actions"]
  GETTABLEKS R15 R16 K17 ["EventTypeEnabled"]
  GETTABLEKS R14 R15 K22 ["SetTouchEnabled"]
  CALL R13 1 1
  GETTABLEKS R14 R1 K23 ["PureComponent"]
  LOADK R16 K24 ["FilterSettingsUIGroup"]
  NAMECALL R14 R14 K25 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K26 [PROTO_5]
  SETTABLEKS R15 R14 K27 ["init"]
  DUPCLOSURE R15 K28 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R15 R14 K29 ["render"]
  GETTABLEKS R15 R4 K30 ["withContext"]
  DUPTABLE R16 K33 [{"Stylizer", "Localization"}]
  GETTABLEKS R17 R4 K31 ["Stylizer"]
  SETTABLEKS R17 R16 K31 ["Stylizer"]
  GETTABLEKS R17 R4 K32 ["Localization"]
  SETTABLEKS R17 R16 K32 ["Localization"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  DUPCLOSURE R15 K34 [PROTO_7]
  DUPCLOSURE R16 K35 [PROTO_13]
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R13
  GETTABLEKS R17 R2 K36 ["connect"]
  MOVE R18 R15
  MOVE R19 R16
  CALL R17 2 1
  MOVE R18 R14
  CALL R17 1 -1
  RETURN R17 -1
