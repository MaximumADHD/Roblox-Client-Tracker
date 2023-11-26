PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Stylizer"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Image"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["imageSize"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["imageTopPadding"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["LayoutOrder"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K6 ["Text"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K7 ["TextColor3"]
  JUMPIF R7 [+2]
  GETTABLEKS R7 R1 K8 ["TextColor"]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K9 ["TextSize"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K15 [{"BackgroundTransparency", "FillDirection", "height", "LayoutOrder", "VerticalAlignment"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K11 ["BackgroundTransparency"]
  GETIMPORT R12 K18 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K12 ["FillDirection"]
  GETIMPORT R12 K21 [UDim.new]
  LOADN R13 0
  MOVE R14 R8
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["height"]
  SETTABLEKS R5 R11 K5 ["LayoutOrder"]
  GETIMPORT R12 K23 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K14 ["VerticalAlignment"]
  DUPTABLE R12 K26 [{"IconContainer", "CountText"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K10 ["createElement"]
  LOADK R14 K27 ["Frame"]
  DUPTABLE R15 K29 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K11 ["BackgroundTransparency"]
  LOADN R16 0
  SETTABLEKS R16 R15 K5 ["LayoutOrder"]
  GETIMPORT R16 K31 [UDim2.new]
  LOADN R17 0
  MOVE R18 R3
  LOADN R19 0
  MOVE R20 R3
  CALL R16 4 1
  SETTABLEKS R16 R15 K28 ["Size"]
  DUPTABLE R16 K34 [{"Padding", "Icon"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K10 ["createElement"]
  LOADK R18 K35 ["UIPadding"]
  DUPTABLE R19 K37 [{"PaddingTop"}]
  GETIMPORT R20 K21 [UDim.new]
  LOADN R21 0
  MOVE R22 R4
  CALL R20 2 1
  SETTABLEKS R20 R19 K36 ["PaddingTop"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K32 ["Padding"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K10 ["createElement"]
  LOADK R18 K38 ["ImageLabel"]
  DUPTABLE R19 K40 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K11 ["BackgroundTransparency"]
  SETTABLEKS R2 R19 K2 ["Image"]
  SETTABLEKS R7 R19 K39 ["ImageColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K5 ["LayoutOrder"]
  GETIMPORT R20 K31 [UDim2.new]
  LOADN R21 0
  MOVE R22 R3
  LOADN R23 0
  MOVE R24 R3
  CALL R20 4 1
  SETTABLEKS R20 R19 K28 ["Size"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K33 ["Icon"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K24 ["IconContainer"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K10 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K43 [{"BackgroundTransparency", "LayoutOrder", "Font", "Text", "TextColor3", "TextSize", "width"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K11 ["BackgroundTransparency"]
  LOADN R16 1
  SETTABLEKS R16 R15 K5 ["LayoutOrder"]
  GETTABLEKS R16 R1 K41 ["Font"]
  SETTABLEKS R16 R15 K41 ["Font"]
  SETTABLEKS R6 R15 K6 ["Text"]
  SETTABLEKS R7 R15 K7 ["TextColor3"]
  SETTABLEKS R8 R15 K9 ["TextSize"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K44 ["Width"]
  GETTABLEKS R16 R17 K45 ["FitToText"]
  SETTABLEKS R16 R15 K42 ["width"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K25 ["CountText"]
  CALL R9 3 -1
  RETURN R9 -1

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
  GETTABLEKS R3 R4 K7 ["FitFrame"]
  CALL R2 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K8 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETTABLEKS R5 R2 K11 ["FitFrameHorizontal"]
  GETTABLEKS R6 R2 K12 ["FitTextLabel"]
  GETTABLEKS R7 R1 K13 ["PureComponent"]
  LOADK R9 K14 ["IconWithText"]
  NAMECALL R7 R7 K15 ["extend"]
  CALL R7 2 1
  DUPTABLE R8 K20 [{"Image", "imageSize", "imageTopPadding", "TextSize"}]
  LOADK R9 K21 [""]
  SETTABLEKS R9 R8 K16 ["Image"]
  LOADN R9 16
  SETTABLEKS R9 R8 K17 ["imageSize"]
  LOADN R9 0
  SETTABLEKS R9 R8 K18 ["imageTopPadding"]
  LOADN R9 14
  SETTABLEKS R9 R8 K19 ["TextSize"]
  SETTABLEKS R8 R7 K22 ["defaultProps"]
  DUPCLOSURE R8 K23 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K24 ["render"]
  MOVE R8 R4
  DUPTABLE R9 K26 [{"Stylizer"}]
  GETTABLEKS R10 R3 K25 ["Stylizer"]
  SETTABLEKS R10 R9 K25 ["Stylizer"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1
