PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["values"]
  NAMECALL R4 R2 K1 ["GetStatuses"]
  CALL R4 1 -1
  CALL R3 -1 1
  LENGTH R4 R3
  LOADN R5 1
  JUMPIFNOTLE R5 R4 [+9]
  LOADK R6 K2 ["Error"]
  GETTABLEN R8 R3 1
  GETTABLEKS R7 R8 K3 ["Type"]
  NAMECALL R4 R0 K4 ["getText"]
  CALL R4 3 -1
  RETURN R4 -1
  LOADK R6 K2 ["Error"]
  LOADK R7 K5 ["DefaultNoStatus"]
  NAMECALL R4 R0 K4 ["getText"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K2 ["Stylizer"]
  GETTABLEKS R4 R3 K3 ["ErrorWidget"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K14 [{"Buttons", "Enabled", "MinContentSize", "Modal", "OnButtonPressed", "OnClose", "Resizable", "Style", "Title"}]
  NEWTABLE R8 0 1
  DUPTABLE R9 K17 [{"Key", "Text"}]
  LOADK R10 K18 ["ok"]
  SETTABLEKS R10 R9 K15 ["Key"]
  LOADK R12 K19 ["Error"]
  LOADK R13 K20 ["OK"]
  NAMECALL R10 R1 K21 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K16 ["Text"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K5 ["Buttons"]
  LOADB R8 1
  SETTABLEKS R8 R7 K6 ["Enabled"]
  GETIMPORT R8 K24 [Vector2.new]
  GETTABLEKS R9 R4 K25 ["Width"]
  GETTABLEKS R10 R4 K26 ["Height"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["MinContentSize"]
  LOADB R8 1
  SETTABLEKS R8 R7 K8 ["Modal"]
  GETTABLEKS R8 R2 K10 ["OnClose"]
  SETTABLEKS R8 R7 K9 ["OnButtonPressed"]
  GETTABLEKS R8 R2 K10 ["OnClose"]
  SETTABLEKS R8 R7 K10 ["OnClose"]
  LOADB R8 0
  SETTABLEKS R8 R7 K11 ["Resizable"]
  LOADK R8 K27 ["Alert"]
  SETTABLEKS R8 R7 K12 ["Style"]
  GETTABLEKS R8 R2 K13 ["Title"]
  SETTABLEKS R8 R7 K13 ["Title"]
  DUPTABLE R8 K29 [{"Content"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K33 [{"Layout", "Size", "Spacing"}]
  GETIMPORT R12 K37 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K30 ["Layout"]
  GETIMPORT R12 K39 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K31 ["Size"]
  GETTABLEKS R12 R4 K40 ["IconSpacing"]
  SETTABLEKS R12 R11 K32 ["Spacing"]
  DUPTABLE R12 K43 [{"Image", "TextPane"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  LOADK R14 K44 ["ImageLabel"]
  DUPTABLE R15 K47 [{"BackgroundTransparency", "Image", "Size", "LayoutOrder"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K45 ["BackgroundTransparency"]
  GETTABLEKS R17 R3 K48 ["ErrorIcon"]
  GETTABLEKS R16 R17 K41 ["Image"]
  SETTABLEKS R16 R15 K41 ["Image"]
  GETIMPORT R16 K50 [UDim2.fromOffset]
  GETTABLEKS R17 R4 K51 ["IconSize"]
  GETTABLEKS R18 R4 K51 ["IconSize"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K31 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K46 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K41 ["Image"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K52 [{"Layout", "Size", "LayoutOrder"}]
  GETIMPORT R16 K54 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K30 ["Layout"]
  GETIMPORT R16 K39 [UDim2.new]
  LOADK R17 K55 [0.6]
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K31 ["Size"]
  LOADN R16 2
  SETTABLEKS R16 R15 K46 ["LayoutOrder"]
  DUPTABLE R16 K58 [{"Header", "SubtextSize"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K4 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K61 [{"Text", "TextSize", "TextXAlignment", "Size", "LayoutOrder"}]
  LOADK R22 K19 ["Error"]
  LOADK R23 K56 ["Header"]
  NAMECALL R20 R1 K21 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K16 ["Text"]
  GETTABLEKS R20 R4 K59 ["TextSize"]
  SETTABLEKS R20 R19 K59 ["TextSize"]
  GETIMPORT R20 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K60 ["TextXAlignment"]
  GETIMPORT R20 K39 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADK R23 K64 [0.35]
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K31 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K46 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K56 ["Header"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K4 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K61 [{"Text", "TextSize", "TextXAlignment", "Size", "LayoutOrder"}]
  GETTABLEKS R21 R2 K65 ["ImportStatuses"]
  GETTABLEKS R22 R2 K66 ["AssetImportSession"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K67 ["values"]
  NAMECALL R24 R22 K68 ["GetStatuses"]
  CALL R24 1 -1
  CALL R23 -1 1
  LENGTH R24 R23
  LOADN R25 1
  JUMPIFNOTLE R25 R24 [+10]
  LOADK R26 K19 ["Error"]
  GETTABLEN R28 R23 1
  GETTABLEKS R27 R28 K69 ["Type"]
  NAMECALL R24 R1 K21 ["getText"]
  CALL R24 3 1
  MOVE R20 R24
  JUMP [+6]
  LOADK R26 K19 ["Error"]
  LOADK R27 K70 ["DefaultNoStatus"]
  NAMECALL R24 R1 K21 ["getText"]
  CALL R24 3 1
  MOVE R20 R24
  SETTABLEKS R20 R19 K16 ["Text"]
  GETTABLEKS R20 R4 K57 ["SubtextSize"]
  SETTABLEKS R20 R19 K59 ["TextSize"]
  GETIMPORT R20 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K60 ["TextXAlignment"]
  GETIMPORT R20 K39 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADK R23 K64 [0.35]
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K31 ["Size"]
  LOADN R20 2
  SETTABLEKS R20 R19 K46 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K57 ["SubtextSize"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K42 ["TextPane"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K28 ["Content"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_2:
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_3:
  DUPTABLE R1 K2 [{"AssetImportSession", "ImportStatuses"}]
  GETTABLEKS R2 R0 K3 ["assetImportSession"]
  SETTABLEKS R2 R1 K0 ["AssetImportSession"]
  GETTABLEKS R2 R0 K4 ["importStatuses"]
  SETTABLEKS R2 R1 K1 ["ImportStatuses"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K9 ["Dash"]
  GETTABLEKS R5 R1 K10 ["ContextServices"]
  GETTABLEKS R6 R5 K11 ["withContext"]
  GETTABLEKS R7 R5 K12 ["Localization"]
  GETTABLEKS R9 R1 K13 ["Style"]
  GETTABLEKS R8 R9 K14 ["Stylizer"]
  GETTABLEKS R9 R1 K15 ["UI"]
  GETTABLEKS R10 R9 K16 ["Pane"]
  GETTABLEKS R11 R9 K17 ["TextLabel"]
  GETTABLEKS R12 R9 K18 ["StyledDialog"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K19 ["Src"]
  GETTABLEKS R15 R16 K20 ["Utility"]
  GETTABLEKS R14 R15 K21 ["GetLocalizedString"]
  CALL R13 1 1
  GETTABLEKS R14 R2 K22 ["PureComponent"]
  LOADK R16 K23 ["ErrorWidget"]
  NAMECALL R14 R14 K24 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K25 [PROTO_0]
  CAPTURE VAL R4
  DUPCLOSURE R16 K26 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R4
  SETTABLEKS R16 R14 K27 ["render"]
  MOVE R16 R6
  DUPTABLE R17 K28 [{"Localization", "Stylizer"}]
  SETTABLEKS R7 R17 K12 ["Localization"]
  SETTABLEKS R8 R17 K14 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R14
  CALL R16 1 1
  MOVE R14 R16
  DUPCLOSURE R16 K29 [PROTO_2]
  DUPCLOSURE R17 K30 [PROTO_3]
  GETTABLEKS R18 R3 K31 ["connect"]
  MOVE R19 R17
  MOVE R20 R16
  CALL R18 2 1
  MOVE R19 R14
  CALL R18 1 -1
  RETURN R18 -1
