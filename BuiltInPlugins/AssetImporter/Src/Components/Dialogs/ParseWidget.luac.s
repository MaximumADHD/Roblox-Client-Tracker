PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["SetShowParsingWidget"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  JUMPIFNOTEQKS R0 K0 ["Close"] [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["onClose"]
  CALL R1 0 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onClose"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["onButtonPressed"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R3 K3 ["ParseWidget"]
  NEWTABLE R5 0 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K14 [{"Enabled", "MinContentSize", "Modal", "Resizable", "Title", "Buttons", "OnClose", "OnButtonPressed", "ButtonHorizontalAlignment"}]
  GETTABLEKS R9 R1 K15 ["ShowParsingWidget"]
  SETTABLEKS R9 R8 K5 ["Enabled"]
  GETIMPORT R9 K18 [Vector2.new]
  GETTABLEKS R10 R4 K19 ["Width"]
  GETTABLEKS R11 R4 K20 ["Height"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K6 ["MinContentSize"]
  LOADB R9 0
  SETTABLEKS R9 R8 K7 ["Modal"]
  LOADB R9 1
  SETTABLEKS R9 R8 K8 ["Resizable"]
  GETTABLEKS R9 R1 K9 ["Title"]
  SETTABLEKS R9 R8 K9 ["Title"]
  SETTABLEKS R5 R8 K10 ["Buttons"]
  GETTABLEKS R9 R0 K21 ["onClose"]
  SETTABLEKS R9 R8 K11 ["OnClose"]
  GETTABLEKS R9 R0 K22 ["onButtonPressed"]
  SETTABLEKS R9 R8 K12 ["OnButtonPressed"]
  GETIMPORT R9 K26 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R9 R8 K13 ["ButtonHorizontalAlignment"]
  DUPTABLE R9 K28 [{"Content"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K32 [{"LayoutOrder", "Layout", "Size"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K29 ["LayoutOrder"]
  GETIMPORT R13 K35 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K30 ["Layout"]
  GETIMPORT R13 K37 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K31 ["Size"]
  DUPTABLE R13 K40 [{"TextPane", "LoadingIndicatorPane"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K4 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K32 [{"LayoutOrder", "Layout", "Size"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K29 ["LayoutOrder"]
  GETIMPORT R17 K35 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K30 ["Layout"]
  GETIMPORT R17 K37 [UDim2.new]
  LOADK R18 K41 [0.6]
  LOADN R19 0
  LOADK R20 K41 [0.6]
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K31 ["Size"]
  DUPTABLE R17 K44 [{"Header", "SubtextSize"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K4 ["createElement"]
  GETUPVAL R19 3
  DUPTABLE R20 K48 [{"Text", "TextSize", "TextXAlignment", "Size", "LayoutOrder"}]
  LOADK R23 K49 ["Parse"]
  LOADK R24 K42 ["Header"]
  NAMECALL R21 R2 K50 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K45 ["Text"]
  GETTABLEKS R21 R4 K46 ["TextSize"]
  SETTABLEKS R21 R20 K46 ["TextSize"]
  GETTABLEKS R21 R4 K51 ["TextAlignment"]
  SETTABLEKS R21 R20 K47 ["TextXAlignment"]
  GETTABLEKS R21 R4 K52 ["TextLabelSize"]
  SETTABLEKS R21 R20 K31 ["Size"]
  LOADN R21 1
  SETTABLEKS R21 R20 K29 ["LayoutOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K42 ["Header"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K4 ["createElement"]
  GETUPVAL R19 3
  DUPTABLE R20 K54 [{"Text", "TextSize", "TextXAlignment", "TextColor", "Size", "LayoutOrder"}]
  LOADK R23 K49 ["Parse"]
  LOADK R24 K55 ["Subheader"]
  NAMECALL R21 R2 K50 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K45 ["Text"]
  GETTABLEKS R21 R4 K43 ["SubtextSize"]
  SETTABLEKS R21 R20 K46 ["TextSize"]
  GETTABLEKS R21 R4 K51 ["TextAlignment"]
  SETTABLEKS R21 R20 K47 ["TextXAlignment"]
  GETTABLEKS R21 R4 K56 ["SubtextColor"]
  SETTABLEKS R21 R20 K53 ["TextColor"]
  GETTABLEKS R21 R4 K52 ["TextLabelSize"]
  SETTABLEKS R21 R20 K31 ["Size"]
  LOADN R21 2
  SETTABLEKS R21 R20 K29 ["LayoutOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K43 ["SubtextSize"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K38 ["TextPane"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K4 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K57 [{"LayoutOrder", "Size"}]
  LOADN R17 2
  SETTABLEKS R17 R16 K29 ["LayoutOrder"]
  GETIMPORT R17 K37 [UDim2.new]
  LOADK R18 K58 [0.2]
  LOADN R19 0
  LOADK R20 K59 [0.4]
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K31 ["Size"]
  DUPTABLE R17 K61 [{"LoadingIndicator"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K4 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K65 [{"AnchorPoint", "Position", "StartColor"}]
  GETIMPORT R21 K18 [Vector2.new]
  LOADK R22 K66 [0.5]
  LOADK R23 K66 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K62 ["AnchorPoint"]
  GETIMPORT R21 K37 [UDim2.new]
  LOADK R22 K66 [0.5]
  LOADN R23 0
  LOADK R24 K66 [0.5]
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K63 ["Position"]
  GETTABLEKS R21 R4 K67 ["LoadingButtonColor"]
  SETTABLEKS R21 R20 K64 ["StartColor"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K60 ["LoadingIndicator"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K39 ["LoadingIndicatorPane"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K27 ["Content"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"SetShowParsingWidget"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetShowParsingWidget"]
  RETURN R1 1

PROTO_6:
  DUPTABLE R1 K1 [{"ShowParsingWidget"}]
  GETTABLEKS R3 R0 K2 ["Dialogs"]
  GETTABLEKS R2 R3 K3 ["showParsingWidget"]
  SETTABLEKS R2 R1 K0 ["ShowParsingWidget"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Localization"]
  GETTABLEKS R8 R3 K13 ["Style"]
  GETTABLEKS R7 R8 K14 ["Stylizer"]
  GETTABLEKS R8 R3 K15 ["UI"]
  GETTABLEKS R9 R8 K16 ["Pane"]
  GETTABLEKS R10 R8 K17 ["TextLabel"]
  GETTABLEKS R11 R8 K18 ["StyledDialog"]
  GETTABLEKS R12 R8 K19 ["LoadingIndicator"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K20 ["Src"]
  GETTABLEKS R15 R16 K21 ["Actions"]
  GETTABLEKS R14 R15 K22 ["SetShowParsingWidget"]
  CALL R13 1 1
  GETTABLEKS R14 R1 K23 ["PureComponent"]
  LOADK R16 K24 ["ParseWidget"]
  NAMECALL R14 R14 K25 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K26 [PROTO_2]
  SETTABLEKS R15 R14 K27 ["init"]
  DUPCLOSURE R15 K28 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R12
  SETTABLEKS R15 R14 K29 ["render"]
  MOVE R15 R5
  DUPTABLE R16 K30 [{"Localization", "Stylizer"}]
  SETTABLEKS R6 R16 K12 ["Localization"]
  SETTABLEKS R7 R16 K14 ["Stylizer"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  DUPCLOSURE R15 K31 [PROTO_5]
  CAPTURE VAL R13
  DUPCLOSURE R16 K32 [PROTO_6]
  GETTABLEKS R17 R2 K33 ["connect"]
  MOVE R18 R16
  MOVE R19 R15
  CALL R17 2 1
  MOVE R18 R14
  CALL R17 1 -1
  RETURN R17 -1
