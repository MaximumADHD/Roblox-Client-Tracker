PROTO_0:
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["learnMoreUrl"]
  NAMECALL R0 R0 K1 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Title"]
  JUMPIF R3 [+5]
  LOADK R5 K3 ["Dialog"]
  LOADK R6 K4 ["DefaultTitle"]
  NAMECALL R3 R2 K5 ["getText"]
  CALL R3 3 1
  GETTABLEKS R4 R1 K6 ["Stylizer"]
  GETTABLEKS R5 R1 K7 ["learnMoreLabel"]
  JUMPIF R5 [+5]
  LOADK R7 K8 ["FaceCapture"]
  LOADK R8 K9 ["DefaultLearnMoreLabel"]
  NAMECALL R5 R2 K5 ["getText"]
  CALL R5 3 1
  GETTABLEKS R6 R1 K10 ["TitleText"]
  GETIMPORT R7 K14 [Enum.Font.SourceSansBold]
  GETUPVAL R8 0
  MOVE R9 R6
  LOADN R10 20
  MOVE R11 R7
  GETIMPORT R12 K17 [Vector2.new]
  LOADN R13 194
  LOADN R14 232
  CALL R12 2 -1
  CALL R8 -1 1
  GETTABLEKS R9 R1 K18 ["BodyText"]
  GETIMPORT R10 K20 [Enum.Font.SourceSans]
  GETUPVAL R11 0
  MOVE R12 R9
  LOADN R13 20
  MOVE R14 R10
  GETIMPORT R15 K17 [Vector2.new]
  LOADN R16 194
  LOADN R17 232
  CALL R15 2 -1
  CALL R11 -1 1
  GETTABLEKS R14 R8 K22 ["Y"]
  ADDK R13 R14 K21 [10]
  GETTABLEKS R14 R11 K22 ["Y"]
  ADD R12 R13 R14
  GETIMPORT R13 K17 [Vector2.new]
  LOADN R14 194
  MOVE R15 R12
  CALL R13 2 1
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K23 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K31 [{"Title", "OnClose", "BorderPadding", "OnButtonPressed", "Buttons", "ButtonHorizontalAlignment", "MinContentSize", "Modal"}]
  SETTABLEKS R3 R16 K2 ["Title"]
  GETTABLEKS R17 R1 K24 ["OnClose"]
  SETTABLEKS R17 R16 K24 ["OnClose"]
  LOADN R17 20
  SETTABLEKS R17 R16 K25 ["BorderPadding"]
  GETTABLEKS R17 R1 K26 ["OnButtonPressed"]
  SETTABLEKS R17 R16 K26 ["OnButtonPressed"]
  GETTABLEKS R17 R1 K27 ["Buttons"]
  SETTABLEKS R17 R16 K27 ["Buttons"]
  GETIMPORT R17 K34 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R17 R16 K28 ["ButtonHorizontalAlignment"]
  SETTABLEKS R13 R16 K29 ["MinContentSize"]
  LOADB R17 1
  SETTABLEKS R17 R16 K30 ["Modal"]
  DUPTABLE R17 K37 [{"Content", "LinkText"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K23 ["createElement"]
  GETUPVAL R19 3
  DUPTABLE R20 K41 [{"Layout", "HorizontalAlignment", "AutomaticSize", "Spacing"}]
  GETIMPORT R21 K44 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K38 ["Layout"]
  GETIMPORT R21 K46 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R21 R20 K32 ["HorizontalAlignment"]
  GETIMPORT R21 K48 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K39 ["AutomaticSize"]
  LOADN R21 10
  SETTABLEKS R21 R20 K40 ["Spacing"]
  DUPTABLE R21 K51 [{"Message", "Message2"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K23 ["createElement"]
  GETUPVAL R23 4
  DUPTABLE R24 K59 [{"AutomaticSize", "TextXAlignment", "Text", "Font", "TextSize", "TextColor3", "BackgroundTransparency", "TextWrapped", "LayoutOrder"}]
  GETIMPORT R25 K48 [Enum.AutomaticSize.XY]
  SETTABLEKS R25 R24 K39 ["AutomaticSize"]
  GETIMPORT R25 K60 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K52 ["TextXAlignment"]
  SETTABLEKS R6 R24 K53 ["Text"]
  SETTABLEKS R7 R24 K12 ["Font"]
  LOADN R25 20
  SETTABLEKS R25 R24 K54 ["TextSize"]
  GETTABLEKS R25 R4 K61 ["TextColor"]
  SETTABLEKS R25 R24 K55 ["TextColor3"]
  LOADN R25 1
  SETTABLEKS R25 R24 K56 ["BackgroundTransparency"]
  LOADB R25 1
  SETTABLEKS R25 R24 K57 ["TextWrapped"]
  LOADN R25 1
  SETTABLEKS R25 R24 K58 ["LayoutOrder"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K49 ["Message"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K23 ["createElement"]
  GETUPVAL R23 4
  DUPTABLE R24 K59 [{"AutomaticSize", "TextXAlignment", "Text", "Font", "TextSize", "TextColor3", "BackgroundTransparency", "TextWrapped", "LayoutOrder"}]
  GETIMPORT R25 K48 [Enum.AutomaticSize.XY]
  SETTABLEKS R25 R24 K39 ["AutomaticSize"]
  GETIMPORT R25 K60 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K52 ["TextXAlignment"]
  SETTABLEKS R9 R24 K53 ["Text"]
  SETTABLEKS R10 R24 K12 ["Font"]
  LOADN R25 20
  SETTABLEKS R25 R24 K54 ["TextSize"]
  GETTABLEKS R25 R4 K61 ["TextColor"]
  SETTABLEKS R25 R24 K55 ["TextColor3"]
  LOADN R25 1
  SETTABLEKS R25 R24 K56 ["BackgroundTransparency"]
  LOADB R25 1
  SETTABLEKS R25 R24 K57 ["TextWrapped"]
  LOADN R25 2
  SETTABLEKS R25 R24 K58 ["LayoutOrder"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K50 ["Message2"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K35 ["Content"]
  GETTABLEKS R18 R1 K62 ["learnMoreUrl"]
  JUMPIFNOT R18 [+47]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K23 ["createElement"]
  GETUPVAL R19 5
  DUPTABLE R20 K67 [{"LayoutOrder", "Text", "TextYAlignment", "OnClick", "Style", "Position"}]
  LOADN R21 3
  SETTABLEKS R21 R20 K58 ["LayoutOrder"]
  SETTABLEKS R5 R20 K53 ["Text"]
  GETIMPORT R21 K69 [Enum.TextYAlignment.Bottom]
  SETTABLEKS R21 R20 K63 ["TextYAlignment"]
  NEWCLOSURE R21 P0
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  SETTABLEKS R21 R20 K64 ["OnClick"]
  DUPTABLE R21 K71 [{"Font", "TextColor", "TextSize", "ShowUnderline"}]
  GETIMPORT R22 K20 [Enum.Font.SourceSans]
  SETTABLEKS R22 R21 K12 ["Font"]
  GETUPVAL R23 7
  GETTABLEKS R22 R23 K72 ["Blue"]
  SETTABLEKS R22 R21 K61 ["TextColor"]
  LOADN R22 20
  SETTABLEKS R22 R21 K54 ["TextSize"]
  LOADB R22 1
  SETTABLEKS R22 R21 K70 ["ShowUnderline"]
  SETTABLEKS R21 R20 K65 ["Style"]
  GETIMPORT R21 K74 [UDim2.new]
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  LOADN R25 157
  CALL R21 4 1
  SETTABLEKS R21 R20 K66 ["Position"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K36 ["LinkText"]
  CALL R14 3 -1
  RETURN R14 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["UI"]
  GETTABLEKS R4 R3 K10 ["LinkText"]
  GETTABLEKS R5 R2 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETIMPORT R7 K14 [game]
  LOADK R9 K15 ["GuiService"]
  NAMECALL R7 R7 K16 ["GetService"]
  CALL R7 2 1
  GETTABLEKS R8 R2 K9 ["UI"]
  GETTABLEKS R9 R8 K17 ["DockWidget"]
  GETTABLEKS R10 R8 K18 ["Pane"]
  GETTABLEKS R11 R8 K19 ["TextLabel"]
  GETTABLEKS R13 R2 K20 ["Util"]
  GETTABLEKS R12 R13 K21 ["GetTextSize"]
  GETTABLEKS R13 R8 K22 ["StyledDialog"]
  GETTABLEKS R14 R1 K23 ["PureComponent"]
  LOADK R16 K24 ["WarningDialog"]
  NAMECALL R14 R14 K25 ["extend"]
  CALL R14 2 1
  GETTABLEKS R15 R2 K20 ["Util"]
  GETTABLEKS R16 R15 K26 ["Typecheck"]
  GETTABLEKS R17 R16 K27 ["wrap"]
  MOVE R18 R14
  GETIMPORT R19 K1 [script]
  CALL R17 2 0
  GETTABLEKS R18 R2 K28 ["Style"]
  GETTABLEKS R17 R18 K29 ["Colors"]
  DUPCLOSURE R18 K30 [PROTO_0]
  SETTABLEKS R18 R14 K31 ["init"]
  DUPCLOSURE R18 K32 [PROTO_2]
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R17
  SETTABLEKS R18 R14 K33 ["render"]
  MOVE R18 R6
  DUPTABLE R19 K37 [{"Mouse", "Stylizer", "Localization"}]
  GETTABLEKS R20 R5 K34 ["Mouse"]
  SETTABLEKS R20 R19 K34 ["Mouse"]
  GETTABLEKS R20 R5 K35 ["Stylizer"]
  SETTABLEKS R20 R19 K35 ["Stylizer"]
  GETTABLEKS R20 R5 K36 ["Localization"]
  SETTABLEKS R20 R19 K36 ["Localization"]
  CALL R18 1 1
  MOVE R19 R14
  CALL R18 1 1
  MOVE R14 R18
  RETURN R14 1
