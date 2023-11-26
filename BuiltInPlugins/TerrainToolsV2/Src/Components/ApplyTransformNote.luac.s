PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R4 R1 K2 ["Stylizer"]
  GETTABLEKS R3 R4 K3 ["ApplyTransformNote"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["Portal"]
  DUPTABLE R6 K7 [{"target"}]
  GETIMPORT R7 K9 [game]
  LOADK R9 K10 ["CoreGui"]
  NAMECALL R7 R7 K11 ["GetService"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["target"]
  DUPTABLE R7 K12 [{"ApplyTransformNote"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  LOADK R9 K13 ["ScreenGui"]
  NEWTABLE R10 0 0
  DUPTABLE R11 K15 [{"Frame"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K24 [{"AnchorPoint", "AutomaticSize", "BackgroundColor", "Layout", "Spacing", "Padding", "Position", "Size"}]
  GETIMPORT R15 K27 [Vector2.new]
  LOADK R16 K28 [0.5]
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K16 ["AnchorPoint"]
  GETIMPORT R15 K31 [Enum.AutomaticSize.X]
  SETTABLEKS R15 R14 K17 ["AutomaticSize"]
  GETTABLEKS R15 R3 K32 ["Background"]
  SETTABLEKS R15 R14 K18 ["BackgroundColor"]
  GETIMPORT R15 K35 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K19 ["Layout"]
  GETTABLEKS R15 R3 K36 ["FramePadding"]
  SETTABLEKS R15 R14 K20 ["Spacing"]
  GETTABLEKS R15 R3 K36 ["FramePadding"]
  SETTABLEKS R15 R14 K21 ["Padding"]
  GETIMPORT R15 K38 [UDim2.new]
  LOADK R16 K28 [0.5]
  LOADN R17 0
  LOADN R18 0
  GETTABLEKS R19 R3 K39 ["EdgePadding"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K22 ["Position"]
  GETIMPORT R15 K41 [UDim2.fromOffset]
  LOADN R16 0
  LOADN R17 25
  CALL R15 2 1
  SETTABLEKS R15 R14 K23 ["Size"]
  DUPTABLE R15 K44 [{"Enter", "Apply"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 1
  DUPTABLE R18 K46 [{"AutomaticSize", "BackgroundColor", "Padding", "LayoutOrder"}]
  GETIMPORT R19 K48 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K17 ["AutomaticSize"]
  GETTABLEKS R19 R3 K49 ["KeyBackground"]
  SETTABLEKS R19 R18 K18 ["BackgroundColor"]
  GETTABLEKS R19 R3 K50 ["TextMargin"]
  SETTABLEKS R19 R18 K21 ["Padding"]
  LOADN R19 1
  SETTABLEKS R19 R18 K45 ["LayoutOrder"]
  DUPTABLE R19 K53 [{"Corner", "Text"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  LOADK R21 K54 ["UICorner"]
  DUPTABLE R22 K56 [{"CornerRadius"}]
  GETIMPORT R23 K58 [UDim.new]
  LOADN R24 0
  LOADN R25 4
  CALL R23 2 1
  SETTABLEKS R23 R22 K55 ["CornerRadius"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K51 ["Corner"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 2
  DUPTABLE R22 K59 [{"Text"}]
  LOADK R25 K60 ["TransformAction"]
  LOADK R26 K61 ["PressEnter"]
  NAMECALL R23 R2 K62 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K52 ["Text"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K52 ["Text"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K42 ["Enter"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 1
  DUPTABLE R18 K63 [{"AutomaticSize", "Padding", "LayoutOrder"}]
  GETIMPORT R19 K48 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K17 ["AutomaticSize"]
  GETTABLEKS R19 R3 K50 ["TextMargin"]
  SETTABLEKS R19 R18 K21 ["Padding"]
  LOADN R19 2
  SETTABLEKS R19 R18 K45 ["LayoutOrder"]
  DUPTABLE R19 K59 [{"Text"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 2
  DUPTABLE R22 K59 [{"Text"}]
  LOADK R25 K60 ["TransformAction"]
  LOADK R26 K64 ["ApplyStatusTip"]
  NAMECALL R23 R2 K62 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K52 ["Text"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K52 ["Text"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K43 ["Apply"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K14 ["Frame"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K3 ["ApplyTransformNote"]
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
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R1 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["Pane"]
  GETTABLEKS R7 R5 K12 ["TextLabel"]
  GETTABLEKS R8 R2 K13 ["PureComponent"]
  LOADK R10 K14 ["ApplyTransformNote"]
  NAMECALL R8 R8 K15 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K16 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K17 ["render"]
  MOVE R9 R4
  DUPTABLE R10 K20 [{"Localization", "Stylizer"}]
  GETTABLEKS R11 R3 K18 ["Localization"]
  SETTABLEKS R11 R10 K18 ["Localization"]
  GETTABLEKS R11 R3 K19 ["Stylizer"]
  SETTABLEKS R11 R10 K19 ["Stylizer"]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 -1
  RETURN R9 -1
