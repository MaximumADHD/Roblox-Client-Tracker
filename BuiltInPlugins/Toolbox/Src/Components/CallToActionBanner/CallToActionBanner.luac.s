PROTO_0:
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R1 R2 K1 ["X"]
  LOADN R2 29
  JUMPIFNOTLT R1 R2 [+16]
  GETUPVAL R1 0
  DUPTABLE R3 K5 [{"fontSize", "imageWidth", "height"}]
  LOADN R4 12
  SETTABLEKS R4 R3 K2 ["fontSize"]
  LOADN R4 125
  SETTABLEKS R4 R3 K3 ["imageWidth"]
  LOADN R4 47
  SETTABLEKS R4 R3 K4 ["height"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R1 R2 K1 ["X"]
  LOADN R2 94
  JUMPIFNOTLT R1 R2 [+16]
  GETUPVAL R1 0
  DUPTABLE R3 K5 [{"fontSize", "imageWidth", "height"}]
  LOADN R4 13
  SETTABLEKS R4 R3 K2 ["fontSize"]
  LOADN R4 150
  SETTABLEKS R4 R3 K3 ["imageWidth"]
  LOADN R4 57
  SETTABLEKS R4 R3 K4 ["height"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K5 [{"fontSize", "imageWidth", "height"}]
  LOADN R4 14
  SETTABLEKS R4 R3 K2 ["fontSize"]
  LOADN R4 197
  SETTABLEKS R4 R3 K3 ["imageWidth"]
  LOADN R4 75
  SETTABLEKS R4 R3 K4 ["height"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K1 ["ref"]
  DUPTABLE R2 K5 [{"fontSize", "imageWidth", "height"}]
  LOADN R3 14
  SETTABLEKS R3 R2 K2 ["fontSize"]
  LOADN R3 197
  SETTABLEKS R3 R2 K3 ["imageWidth"]
  LOADN R3 75
  SETTABLEKS R3 R2 K4 ["height"]
  SETTABLEKS R2 R0 K6 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["onAbsoluteSizeChange"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Image"]
  GETTABLEKS R4 R1 K3 ["Gradient"]
  GETTABLEKS R5 R1 K4 ["GradientOff"]
  GETTABLEKS R6 R1 K5 ["LayoutOrder"]
  GETTABLEKS R7 R1 K6 ["Text"]
  GETTABLEKS R8 R1 K7 ["OnClick"]
  GETTABLEKS R9 R2 K8 ["fontSize"]
  GETTABLEKS R10 R2 K9 ["imageWidth"]
  GETTABLEKS R11 R2 K10 ["height"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K11 ["createElement"]
  LOADK R13 K12 ["ImageButton"]
  NEWTABLE R14 8 0
  LOADN R15 1
  SETTABLEKS R15 R14 K13 ["BackgroundTransparency"]
  GETIMPORT R15 K16 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  MOVE R19 R11
  CALL R15 4 1
  SETTABLEKS R15 R14 K17 ["Size"]
  SETTABLEKS R6 R14 K5 ["LayoutOrder"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K18 ["Ref"]
  GETTABLEKS R16 R0 K19 ["ref"]
  SETTABLE R16 R14 R15
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K20 ["Change"]
  GETTABLEKS R15 R16 K21 ["AbsoluteSize"]
  GETTABLEKS R16 R0 K22 ["onAbsoluteSizeChange"]
  SETTABLE R16 R14 R15
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K23 ["Event"]
  GETTABLEKS R15 R16 K24 ["MouseButton1Click"]
  SETTABLE R8 R14 R15
  NEWTABLE R15 1 1
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R18 1
  DUPTABLE R19 K26 [{"Cursor"}]
  LOADK R20 K27 ["PointingHand"]
  SETTABLEKS R20 R19 K25 ["Cursor"]
  CALL R17 2 1
  SETTABLEKS R17 R15 K28 ["HoverArea"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["createElement"]
  LOADK R17 K29 ["Frame"]
  DUPTABLE R18 K30 [{"Size"}]
  GETIMPORT R19 K16 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K17 ["Size"]
  DUPTABLE R19 K33 [{"UIGradient", "UIListLayout", "Text", "Image"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K11 ["createElement"]
  LOADK R21 K31 ["UIGradient"]
  DUPTABLE R22 K36 [{"Color", "Offset"}]
  SETTABLEKS R4 R22 K34 ["Color"]
  SETTABLEKS R5 R22 K35 ["Offset"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K31 ["UIGradient"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K11 ["createElement"]
  LOADK R21 K32 ["UIListLayout"]
  DUPTABLE R22 K42 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R23 K45 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K37 ["FillDirection"]
  GETIMPORT R23 K47 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R23 R22 K38 ["HorizontalAlignment"]
  GETIMPORT R23 K48 [Enum.VerticalAlignment.Center]
  SETTABLEKS R23 R22 K39 ["VerticalAlignment"]
  GETIMPORT R23 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K40 ["SortOrder"]
  GETIMPORT R23 K51 [UDim.new]
  LOADN R24 0
  LOADN R25 10
  CALL R23 2 1
  SETTABLEKS R23 R22 K41 ["Padding"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K32 ["UIListLayout"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K11 ["createElement"]
  LOADK R21 K52 ["TextLabel"]
  DUPTABLE R22 K58 [{"Size", "BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment"}]
  GETIMPORT R23 K16 [UDim2.new]
  LOADN R24 1
  MINUS R26 R10
  SUBK R25 R26 K59 [10]
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K17 ["Size"]
  LOADN R23 1
  SETTABLEKS R23 R22 K13 ["BackgroundTransparency"]
  GETUPVAL R24 2
  JUMPIFNOT R24 [+3]
  GETIMPORT R23 K61 [Enum.Font.MontserratBold]
  JUMP [+2]
  GETIMPORT R23 K63 [Enum.Font.GothamSemibold]
  SETTABLEKS R23 R22 K53 ["Font"]
  MOVE R24 R7
  LOADK R25 K64 ["  >"]
  CONCAT R23 R24 R25
  SETTABLEKS R23 R22 K6 ["Text"]
  GETIMPORT R23 K67 [Color3.fromHex]
  LOADK R24 K68 ["#FFFFFF"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K54 ["TextColor3"]
  SETTABLEKS R9 R22 K55 ["TextSize"]
  LOADB R23 1
  SETTABLEKS R23 R22 K56 ["TextWrapped"]
  GETIMPORT R23 K70 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K57 ["TextXAlignment"]
  DUPTABLE R23 K71 [{"UIListLayout", "Padding", "Text"}]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K11 ["createElement"]
  LOADK R25 K32 ["UIListLayout"]
  DUPTABLE R26 K72 [{"FillDirection", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R27 K45 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K37 ["FillDirection"]
  GETIMPORT R27 K48 [Enum.VerticalAlignment.Center]
  SETTABLEKS R27 R26 K39 ["VerticalAlignment"]
  GETIMPORT R27 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K40 ["SortOrder"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K32 ["UIListLayout"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K11 ["createElement"]
  LOADK R25 K73 ["UIPadding"]
  DUPTABLE R26 K75 [{"PaddingLeft"}]
  GETIMPORT R27 K51 [UDim.new]
  LOADN R28 0
  LOADN R29 14
  CALL R27 2 1
  SETTABLEKS R27 R26 K74 ["PaddingLeft"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K41 ["Padding"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K11 ["createElement"]
  LOADK R25 K52 ["TextLabel"]
  DUPTABLE R26 K58 [{"Size", "BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment"}]
  GETIMPORT R27 K16 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 1
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K17 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K13 ["BackgroundTransparency"]
  GETUPVAL R28 2
  JUMPIFNOT R28 [+3]
  GETIMPORT R27 K61 [Enum.Font.MontserratBold]
  JUMP [+2]
  GETIMPORT R27 K63 [Enum.Font.GothamSemibold]
  SETTABLEKS R27 R26 K53 ["Font"]
  MOVE R28 R7
  LOADK R29 K64 ["  >"]
  CONCAT R27 R28 R29
  SETTABLEKS R27 R26 K6 ["Text"]
  GETIMPORT R27 K67 [Color3.fromHex]
  LOADK R28 K68 ["#FFFFFF"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K54 ["TextColor3"]
  SETTABLEKS R9 R26 K55 ["TextSize"]
  LOADB R27 1
  SETTABLEKS R27 R26 K56 ["TextWrapped"]
  GETIMPORT R27 K70 [Enum.TextXAlignment.Left]
  SETTABLEKS R27 R26 K57 ["TextXAlignment"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K6 ["Text"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K6 ["Text"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K11 ["createElement"]
  LOADK R21 K76 ["ImageLabel"]
  DUPTABLE R22 K77 [{"LayoutOrder", "Size", "BackgroundTransparency", "Image"}]
  LOADN R23 2
  SETTABLEKS R23 R22 K5 ["LayoutOrder"]
  GETIMPORT R23 K16 [UDim2.new]
  LOADN R24 0
  MOVE R25 R10
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K17 ["Size"]
  LOADN R23 1
  SETTABLEKS R23 R22 K13 ["BackgroundTransparency"]
  SETTABLEKS R3 R22 K2 ["Image"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K2 ["Image"]
  CALL R16 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  RETURN R12 -1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K9 ["UI"]
  GETTABLEKS R4 R5 K10 ["HoverArea"]
  GETTABLEKS R5 R2 K11 ["PureComponent"]
  LOADK R7 K12 ["CallToActionBanner"]
  NAMECALL R5 R5 K13 ["extend"]
  CALL R5 2 1
  GETIMPORT R6 K15 [game]
  LOADK R8 K16 ["ToolboxRetireGotham"]
  LOADB R9 0
  NAMECALL R6 R6 K17 ["DefineFastFlag"]
  CALL R6 3 1
  DUPTABLE R7 K20 [{"Gradient", "GradientOff"}]
  GETIMPORT R8 K23 [ColorSequence.new]
  NEWTABLE R9 0 2
  GETIMPORT R10 K25 [ColorSequenceKeypoint.new]
  LOADN R11 0
  GETIMPORT R12 K28 [Color3.fromHex]
  LOADK R13 K29 ["#0C2859"]
  CALL R12 1 -1
  CALL R10 -1 1
  GETIMPORT R11 K25 [ColorSequenceKeypoint.new]
  LOADN R12 1
  GETIMPORT R13 K28 [Color3.fromHex]
  LOADK R14 K30 ["#B8425f"]
  CALL R13 1 -1
  CALL R11 -1 -1
  SETLIST R9 R10 -1 [1]
  CALL R8 1 1
  SETTABLEKS R8 R7 K18 ["Gradient"]
  GETIMPORT R8 K32 [Vector2.new]
  LOADK R9 K33 [-0.34]
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K19 ["GradientOff"]
  SETTABLEKS R7 R5 K34 ["defaultProps"]
  DUPCLOSURE R7 K35 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R7 R5 K36 ["init"]
  DUPCLOSURE R7 K37 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R7 R5 K38 ["render"]
  DUPCLOSURE R7 K39 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETGLOBAL R7 K40 ["TypedCallToActionBanner"]
  DUPTABLE R7 K43 [{"Component", "Generator"}]
  SETTABLEKS R5 R7 K41 ["Component"]
  GETGLOBAL R8 K40 ["TypedCallToActionBanner"]
  SETTABLEKS R8 R7 K42 ["Generator"]
  RETURN R7 1
