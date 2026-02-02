PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnLearnMore"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnLearnMore"]
  CALL R0 0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["OnClose"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K12 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "Style", "Layout", "Padding", "Spacing"}]
  GETIMPORT R7 K15 [UDim2.fromOffset]
  LOADN R8 144
  LOADN R9 180
  CALL R7 2 1
  SETTABLEKS R7 R6 K4 ["Size"]
  GETIMPORT R7 K17 [UDim2.fromScale]
  LOADK R8 K18 [0.5]
  LOADK R9 K18 [0.5]
  CALL R7 2 1
  SETTABLEKS R7 R6 K5 ["Position"]
  GETIMPORT R7 K21 [Vector2.new]
  LOADK R8 K18 [0.5]
  LOADK R9 K18 [0.5]
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["AnchorPoint"]
  GETTABLEKS R7 R2 K22 ["backgroundColor"]
  SETTABLEKS R7 R6 K7 ["BackgroundColor3"]
  LOADK R7 K23 ["Box"]
  SETTABLEKS R7 R6 K8 ["Style"]
  GETIMPORT R7 K27 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K9 ["Layout"]
  LOADN R7 20
  SETTABLEKS R7 R6 K10 ["Padding"]
  LOADN R7 15
  SETTABLEKS R7 R6 K11 ["Spacing"]
  DUPTABLE R7 K31 [{"Title", "Body", "Buttons"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  LOADK R9 K32 ["TextLabel"]
  DUPTABLE R10 K40 [{"Text", "Font", "TextSize", "TextColor3", "BackgroundTransparency", "Size", "TextXAlignment", "LayoutOrder"}]
  LOADK R13 K41 ["Error"]
  LOADK R14 K42 ["PublishLimitReachedTitle"]
  NAMECALL R11 R3 K43 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K33 ["Text"]
  GETTABLEKS R12 R2 K44 ["header"]
  GETTABLEKS R11 R12 K45 ["font"]
  SETTABLEKS R11 R10 K34 ["Font"]
  LOADN R11 24
  SETTABLEKS R11 R10 K35 ["TextSize"]
  GETTABLEKS R11 R2 K46 ["textColor"]
  SETTABLEKS R11 R10 K36 ["TextColor3"]
  LOADN R11 1
  SETTABLEKS R11 R10 K37 ["BackgroundTransparency"]
  GETIMPORT R11 K47 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 30
  CALL R11 4 1
  SETTABLEKS R11 R10 K4 ["Size"]
  GETIMPORT R11 K49 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K38 ["TextXAlignment"]
  LOADN R11 1
  SETTABLEKS R11 R10 K39 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K28 ["Title"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  LOADK R9 K32 ["TextLabel"]
  DUPTABLE R10 K52 [{"Text", "Font", "TextSize", "TextColor3", "BackgroundTransparency", "TextWrapped", "Size", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
  LOADK R13 K41 ["Error"]
  LOADK R14 K53 ["PublishlimitReachedDescription"]
  NAMECALL R11 R3 K43 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K33 ["Text"]
  GETTABLEKS R12 R2 K44 ["header"]
  GETTABLEKS R11 R12 K45 ["font"]
  SETTABLEKS R11 R10 K34 ["Font"]
  LOADN R11 20
  SETTABLEKS R11 R10 K35 ["TextSize"]
  GETTABLEKS R11 R2 K46 ["textColor"]
  SETTABLEKS R11 R10 K36 ["TextColor3"]
  LOADN R11 1
  SETTABLEKS R11 R10 K37 ["BackgroundTransparency"]
  LOADB R11 1
  SETTABLEKS R11 R10 K50 ["TextWrapped"]
  GETIMPORT R11 K47 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 176
  CALL R11 4 1
  SETTABLEKS R11 R10 K4 ["Size"]
  GETIMPORT R11 K49 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K38 ["TextXAlignment"]
  GETIMPORT R11 K55 [Enum.TextYAlignment.Top]
  SETTABLEKS R11 R10 K51 ["TextYAlignment"]
  LOADN R11 2
  SETTABLEKS R11 R10 K39 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K29 ["Body"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K57 [{"Layout", "HorizontalAlignment", "Spacing", "Size", "LayoutOrder"}]
  GETIMPORT R11 K59 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K9 ["Layout"]
  GETIMPORT R11 K61 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R11 R10 K56 ["HorizontalAlignment"]
  LOADN R11 10
  SETTABLEKS R11 R10 K11 ["Spacing"]
  GETIMPORT R11 K47 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 35
  CALL R11 4 1
  SETTABLEKS R11 R10 K4 ["Size"]
  LOADN R11 3
  SETTABLEKS R11 R10 K39 ["LayoutOrder"]
  DUPTABLE R11 K64 [{"OkButton", "LearnMoreButton"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K66 [{"Style", "Text", "Size", "OnClick", "LayoutOrder"}]
  LOADK R15 K67 ["RoundPrimary"]
  SETTABLEKS R15 R14 K8 ["Style"]
  LOADK R17 K68 ["Button"]
  LOADK R18 K69 ["Ok"]
  NAMECALL R15 R3 K43 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K33 ["Text"]
  GETIMPORT R15 K15 [UDim2.fromOffset]
  LOADN R16 100
  LOADN R17 35
  CALL R15 2 1
  SETTABLEKS R15 R14 K4 ["Size"]
  GETTABLEKS R15 R1 K70 ["OnClose"]
  SETTABLEKS R15 R14 K65 ["OnClick"]
  LOADN R15 1
  SETTABLEKS R15 R14 K39 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K62 ["OkButton"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K66 [{"Style", "Text", "Size", "OnClick", "LayoutOrder"}]
  LOADK R15 K71 ["Round"]
  SETTABLEKS R15 R14 K8 ["Style"]
  LOADK R17 K68 ["Button"]
  LOADK R18 K72 ["LearnMore"]
  NAMECALL R15 R3 K43 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K33 ["Text"]
  GETIMPORT R15 K15 [UDim2.fromOffset]
  LOADN R16 120
  LOADN R17 35
  CALL R15 2 1
  SETTABLEKS R15 R14 K4 ["Size"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R1
  SETTABLEKS R15 R14 K65 ["OnClick"]
  LOADN R15 2
  SETTABLEKS R15 R14 K39 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K63 ["LearnMoreButton"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K30 ["Buttons"]
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
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R2 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["Button"]
  GETTABLEKS R7 R5 K12 ["Pane"]
  GETTABLEKS R8 R1 K13 ["PureComponent"]
  LOADK R10 K14 ["ActivationFailedDialog"]
  NAMECALL R8 R8 K15 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K16 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K17 ["render"]
  MOVE R9 R4
  DUPTABLE R10 K20 [{"Stylizer", "Localization"}]
  GETTABLEKS R11 R3 K18 ["Stylizer"]
  SETTABLEKS R11 R10 K18 ["Stylizer"]
  GETTABLEKS R11 R3 K19 ["Localization"]
  SETTABLEKS R11 R10 K19 ["Localization"]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 1
  MOVE R8 R9
  RETURN R8 1
