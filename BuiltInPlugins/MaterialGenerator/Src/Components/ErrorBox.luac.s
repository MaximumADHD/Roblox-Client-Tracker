PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["ErrorBox"]
  GETTABLEKS R3 R1 K3 ["Padding"]
  JUMPIF R3 [+2]
  GETTABLEKS R3 R2 K3 ["Padding"]
  GETTABLEKS R4 R1 K4 ["MaxWidth"]
  JUMPIF R4 [+2]
  GETTABLEKS R4 R2 K4 ["MaxWidth"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["createElement"]
  LOADK R6 K6 ["Frame"]
  DUPTABLE R7 K10 [{"AutomaticSize", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R8 K13 [Enum.AutomaticSize.XY]
  SETTABLEKS R8 R7 K7 ["AutomaticSize"]
  LOADN R8 1
  SETTABLEKS R8 R7 K8 ["BackgroundTransparency"]
  GETTABLEKS R8 R1 K9 ["LayoutOrder"]
  SETTABLEKS R8 R7 K9 ["LayoutOrder"]
  DUPTABLE R8 K20 [{"UIPadding", "UISizeConstraint", "UIStroke", "UICorner", "CloseButton", "MainWarningLabel"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K14 ["UIPadding"]
  DUPTABLE R11 K25 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R12 K28 [UDim.new]
  LOADN R13 0
  MOVE R14 R3
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["PaddingTop"]
  GETIMPORT R12 K28 [UDim.new]
  LOADN R13 0
  MOVE R14 R3
  CALL R12 2 1
  SETTABLEKS R12 R11 K22 ["PaddingLeft"]
  GETIMPORT R12 K28 [UDim.new]
  LOADN R13 0
  GETTABLEKS R15 R2 K29 ["RightPadding"]
  ADD R14 R3 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K23 ["PaddingRight"]
  GETIMPORT R12 K28 [UDim.new]
  LOADN R13 0
  MOVE R14 R3
  CALL R12 2 1
  SETTABLEKS R12 R11 K24 ["PaddingBottom"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["UIPadding"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K15 ["UISizeConstraint"]
  DUPTABLE R11 K31 [{"MaxSize"}]
  GETIMPORT R12 K33 [Vector2.new]
  MOVE R13 R4
  LOADK R14 K34 [∞]
  CALL R12 2 1
  SETTABLEKS R12 R11 K30 ["MaxSize"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["UISizeConstraint"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K16 ["UIStroke"]
  DUPTABLE R11 K38 [{"Color", "Thickness", "ApplyStrokeMode"}]
  GETTABLEKS R12 R2 K39 ["PrimaryColor"]
  SETTABLEKS R12 R11 K35 ["Color"]
  LOADN R12 1
  SETTABLEKS R12 R11 K36 ["Thickness"]
  GETIMPORT R12 K41 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R12 R11 K37 ["ApplyStrokeMode"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K16 ["UIStroke"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K17 ["UICorner"]
  DUPTABLE R11 K43 [{"CornerRadius"}]
  GETIMPORT R12 K28 [UDim.new]
  LOADN R13 0
  GETTABLEKS R14 R2 K42 ["CornerRadius"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K42 ["CornerRadius"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["UICorner"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K50 [{"AnchorPoint", "Position", "Size", "Style", "OnClick", "ZIndex"}]
  GETIMPORT R12 K33 [Vector2.new]
  LOADN R13 1
  LOADK R14 K51 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K44 ["AnchorPoint"]
  GETTABLEKS R12 R2 K52 ["CloseButtonPosition"]
  SETTABLEKS R12 R11 K45 ["Position"]
  GETTABLEKS R12 R2 K53 ["CloseButtonSize"]
  SETTABLEKS R12 R11 K46 ["Size"]
  LOADK R12 K54 ["ErrorClose"]
  SETTABLEKS R12 R11 K47 ["Style"]
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K55 ["Close"]
  SETTABLEKS R12 R11 K48 ["OnClick"]
  LOADN R12 232
  SETTABLEKS R12 R11 K49 ["ZIndex"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K18 ["CloseButton"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K61 [{"AutomaticSize", "TextXAlignment", "TextSize", "TextWrapped", "TextColor", "Text", "LayoutOrder"}]
  GETIMPORT R12 K13 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K7 ["AutomaticSize"]
  GETIMPORT R12 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K56 ["TextXAlignment"]
  LOADN R12 20
  SETTABLEKS R12 R11 K57 ["TextSize"]
  LOADB R12 1
  SETTABLEKS R12 R11 K58 ["TextWrapped"]
  GETTABLEKS R12 R2 K39 ["PrimaryColor"]
  SETTABLEKS R12 R11 K59 ["TextColor"]
  GETTABLEKS R12 R1 K60 ["Text"]
  SETTABLEKS R12 R11 K60 ["Text"]
  LOADN R12 1
  SETTABLEKS R12 R11 K9 ["LayoutOrder"]
  DUPTABLE R12 K64 [{"UISizeConstraint"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["createElement"]
  LOADK R14 K15 ["UISizeConstraint"]
  DUPTABLE R15 K31 [{"MaxSize"}]
  GETIMPORT R16 K33 [Vector2.new]
  LOADN R19 2
  MUL R18 R19 R3
  SUB R17 R4 R18
  LOADK R18 K34 [∞]
  CALL R16 2 1
  SETTABLEKS R16 R15 K30 ["MaxSize"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K15 ["UISizeConstraint"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K19 ["MainWarningLabel"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R1 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["Button"]
  GETTABLEKS R7 R5 K12 ["TextLabel"]
  GETTABLEKS R9 R1 K13 ["Style"]
  GETTABLEKS R8 R9 K14 ["Stylizer"]
  GETTABLEKS R9 R2 K15 ["PureComponent"]
  LOADK R11 K16 ["ErrorBox"]
  NAMECALL R9 R9 K17 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K18 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K19 ["render"]
  MOVE R10 R4
  DUPTABLE R11 K20 [{"Stylizer"}]
  SETTABLEKS R8 R11 K14 ["Stylizer"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
