PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R4 R1 K2 ["Stylizer"]
  GETTABLEKS R3 R4 K3 ["CGEAlert"]
  GETTABLEKS R4 R1 K4 ["Title"]
  GETTABLEKS R5 R1 K5 ["Body"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K13 [{"LayoutOrder", "AutomaticSize", "Padding", "BackgroundColor3", "Size", "OnClick"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K7 ["LayoutOrder"]
  GETIMPORT R9 K16 [Enum.AutomaticSize.Y]
  SETTABLEKS R9 R8 K8 ["AutomaticSize"]
  GETTABLEKS R9 R3 K9 ["Padding"]
  SETTABLEKS R9 R8 K9 ["Padding"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K17 ["darker"]
  GETTABLEKS R10 R3 K18 ["BackgroundColor"]
  GETTABLEKS R11 R3 K19 ["BackgroundColorHoverDarkerMultiplier"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K10 ["BackgroundColor3"]
  GETIMPORT R9 K22 [UDim2.fromScale]
  LOADN R10 1
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K11 ["Size"]
  GETTABLEKS R9 R1 K12 ["OnClick"]
  SETTABLEKS R9 R8 K12 ["OnClick"]
  DUPTABLE R9 K26 [{"UICorner", "UIStroke", "Inner"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K6 ["createElement"]
  LOADK R11 K23 ["UICorner"]
  DUPTABLE R12 K28 [{"CornerRadius"}]
  GETTABLEKS R13 R3 K27 ["CornerRadius"]
  SETTABLEKS R13 R12 K27 ["CornerRadius"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K23 ["UICorner"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K6 ["createElement"]
  LOADK R11 K24 ["UIStroke"]
  DUPTABLE R12 K31 [{"ApplyStrokeMode", "Color"}]
  GETIMPORT R13 K33 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R13 R12 K29 ["ApplyStrokeMode"]
  GETTABLEKS R13 R3 K34 ["BorderColor"]
  SETTABLEKS R13 R12 K30 ["Color"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K24 ["UIStroke"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K6 ["createElement"]
  GETUPVAL R11 1
  DUPTABLE R12 K38 [{"AutomaticSize", "Padding", "Spacing", "Layout", "HorizontalAlignment", "Size"}]
  GETIMPORT R13 K16 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K8 ["AutomaticSize"]
  GETTABLEKS R13 R3 K39 ["LinePadding"]
  SETTABLEKS R13 R12 K9 ["Padding"]
  GETTABLEKS R13 R3 K40 ["LineSpacing"]
  SETTABLEKS R13 R12 K35 ["Spacing"]
  GETIMPORT R13 K43 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K36 ["Layout"]
  GETIMPORT R13 K45 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R13 R12 K37 ["HorizontalAlignment"]
  GETIMPORT R13 K22 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K11 ["Size"]
  DUPTABLE R13 K47 [{"TopBar", "Body"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K6 ["createElement"]
  GETUPVAL R15 1
  DUPTABLE R16 K48 [{"AutomaticSize", "LayoutOrder", "Size"}]
  GETIMPORT R17 K16 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K8 ["AutomaticSize"]
  LOADN R17 1
  SETTABLEKS R17 R16 K7 ["LayoutOrder"]
  GETIMPORT R17 K22 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K11 ["Size"]
  DUPTABLE R17 K50 [{"Title", "RightSide"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K6 ["createElement"]
  GETUPVAL R19 3
  DUPTABLE R20 K54 [{"AutomaticSize", "Text", "TextXAlignment", "RichText", "LayoutOrder"}]
  GETIMPORT R21 K56 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K8 ["AutomaticSize"]
  LOADK R22 K57 ["<b>%*</b>"]
  MOVE R24 R4
  NAMECALL R22 R22 K58 ["format"]
  CALL R22 2 1
  MOVE R21 R22
  SETTABLEKS R21 R20 K51 ["Text"]
  GETIMPORT R21 K59 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K52 ["TextXAlignment"]
  LOADB R21 1
  SETTABLEKS R21 R20 K53 ["RichText"]
  LOADN R21 1
  SETTABLEKS R21 R20 K7 ["LayoutOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K4 ["Title"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K6 ["createElement"]
  GETUPVAL R19 1
  DUPTABLE R20 K62 [{"AnchorPoint", "AutomaticSize", "Position", "Size", "LayoutOrder"}]
  GETIMPORT R21 K65 [Vector2.new]
  LOADN R22 1
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K60 ["AnchorPoint"]
  GETIMPORT R21 K67 [Enum.AutomaticSize.X]
  SETTABLEKS R21 R20 K8 ["AutomaticSize"]
  GETIMPORT R21 K22 [UDim2.fromScale]
  LOADN R22 1
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K61 ["Position"]
  GETIMPORT R21 K69 [UDim2.fromOffset]
  LOADN R22 0
  LOADN R23 18
  CALL R21 2 1
  SETTABLEKS R21 R20 K11 ["Size"]
  LOADN R21 2
  SETTABLEKS R21 R20 K7 ["LayoutOrder"]
  DUPTABLE R21 K71 [{"PrimaryAction"}]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K6 ["createElement"]
  GETUPVAL R23 3
  DUPTABLE R24 K74 [{"AutomaticSize", "Font", "RichText", "Text", "TextColor"}]
  GETIMPORT R25 K56 [Enum.AutomaticSize.XY]
  SETTABLEKS R25 R24 K8 ["AutomaticSize"]
  GETTABLEKS R25 R3 K75 ["PrimaryActionFont"]
  SETTABLEKS R25 R24 K72 ["Font"]
  LOADB R25 1
  SETTABLEKS R25 R24 K53 ["RichText"]
  LOADK R26 K76 ["<u>%*</u>"]
  LOADK R30 K77 ["Common"]
  LOADK R31 K78 ["LearnMore"]
  NAMECALL R28 R2 K79 ["getText"]
  CALL R28 3 1
  NAMECALL R26 R26 K58 ["format"]
  CALL R26 2 1
  MOVE R25 R26
  SETTABLEKS R25 R24 K51 ["Text"]
  GETTABLEKS R25 R3 K73 ["TextColor"]
  SETTABLEKS R25 R24 K73 ["TextColor"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K70 ["PrimaryAction"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K49 ["RightSide"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K46 ["TopBar"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K6 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K81 [{"LayoutOrder", "AutomaticSize", "Text", "TextWrapped", "TextXAlignment", "RichText"}]
  LOADN R17 2
  SETTABLEKS R17 R16 K7 ["LayoutOrder"]
  GETIMPORT R17 K56 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K8 ["AutomaticSize"]
  SETTABLEKS R5 R16 K51 ["Text"]
  LOADB R17 1
  SETTABLEKS R17 R16 K80 ["TextWrapped"]
  GETIMPORT R17 K59 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K52 ["TextXAlignment"]
  LOADB R17 1
  SETTABLEKS R17 R16 K53 ["RichText"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K5 ["Body"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K25 ["Inner"]
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
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R5 R2 K9 ["Style"]
  GETTABLEKS R4 R5 K10 ["Colors"]
  GETTABLEKS R5 R2 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Pane"]
  GETTABLEKS R7 R5 K13 ["TextLabel"]
  GETTABLEKS R8 R1 K14 ["PureComponent"]
  LOADK R10 K15 ["CGEAlert"]
  NAMECALL R8 R8 K16 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K17 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K18 ["render"]
  GETTABLEKS R9 R3 K19 ["withContext"]
  DUPTABLE R10 K22 [{"Stylizer", "Localization"}]
  GETTABLEKS R11 R3 K20 ["Stylizer"]
  SETTABLEKS R11 R10 K20 ["Stylizer"]
  GETTABLEKS R11 R3 K21 ["Localization"]
  SETTABLEKS R11 R10 K21 ["Localization"]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 1
  MOVE R8 R9
  RETURN R8 1
