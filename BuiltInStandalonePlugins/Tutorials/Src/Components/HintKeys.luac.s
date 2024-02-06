PROTO_0:
  GETUPVAL R1 0
  LOADK R3 K0 ["HintKeys"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETTABLEKS R3 R0 K2 ["Pressed"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R1 K3 ["HintKeyBackgroundPressed"]
  JUMP [+2]
  GETTABLEKS R2 R1 K4 ["HintKeyBackground"]
  GETTABLEKS R4 R0 K2 ["Pressed"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R1 K5 ["HintKeyBorderPressed"]
  JUMP [+2]
  GETTABLEKS R3 R1 K6 ["HintKeyBorder"]
  GETTABLEKS R5 R0 K2 ["Pressed"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R1 K7 ["HintKeyTextColorPressed"]
  JUMP [+2]
  GETTABLEKS R4 R1 K8 ["HintKeyTextColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["createElement"]
  LOADK R6 K10 ["TextLabel"]
  DUPTABLE R7 K19 [{"AutomaticSize", "BackgroundColor3", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize"}]
  GETIMPORT R8 K22 [Enum.AutomaticSize.XY]
  SETTABLEKS R8 R7 K11 ["AutomaticSize"]
  SETTABLEKS R2 R7 K12 ["BackgroundColor3"]
  GETIMPORT R8 K24 [Enum.Font.SourceSansBold]
  SETTABLEKS R8 R7 K13 ["Font"]
  GETTABLEKS R8 R0 K14 ["LayoutOrder"]
  SETTABLEKS R8 R7 K14 ["LayoutOrder"]
  GETIMPORT R8 K27 [UDim2.fromOffset]
  LOADN R9 32
  LOADN R10 32
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["Size"]
  GETTABLEKS R9 R0 K28 ["Key"]
  JUMPIFNOTEQKS R9 K29 ["LeftControl"] [+3]
  LOADK R8 K30 ["Ctrl"]
  JUMP [+2]
  GETTABLEKS R8 R0 K28 ["Key"]
  SETTABLEKS R8 R7 K16 ["Text"]
  SETTABLEKS R4 R7 K17 ["TextColor3"]
  LOADN R8 24
  SETTABLEKS R8 R7 K18 ["TextSize"]
  DUPTABLE R8 K34 [{"Corner", "Padding", "Stroke"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["createElement"]
  LOADK R10 K35 ["UICorner"]
  DUPTABLE R11 K37 [{"CornerRadius"}]
  GETIMPORT R12 K40 [UDim.new]
  LOADN R13 0
  LOADN R14 8
  CALL R12 2 1
  SETTABLEKS R12 R11 K36 ["CornerRadius"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K31 ["Corner"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["createElement"]
  LOADK R10 K41 ["UIPadding"]
  DUPTABLE R11 K46 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R12 K40 [UDim.new]
  LOADN R13 0
  LOADN R14 5
  CALL R12 2 1
  SETTABLEKS R12 R11 K42 ["PaddingLeft"]
  GETIMPORT R12 K40 [UDim.new]
  LOADN R13 0
  LOADN R14 5
  CALL R12 2 1
  SETTABLEKS R12 R11 K43 ["PaddingTop"]
  GETIMPORT R12 K40 [UDim.new]
  LOADN R13 0
  LOADN R14 5
  CALL R12 2 1
  SETTABLEKS R12 R11 K44 ["PaddingRight"]
  GETIMPORT R12 K40 [UDim.new]
  LOADN R13 0
  LOADN R14 5
  CALL R12 2 1
  SETTABLEKS R12 R11 K45 ["PaddingBottom"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K32 ["Padding"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["createElement"]
  LOADK R10 K47 ["UIStroke"]
  DUPTABLE R11 K51 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R12 K53 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R12 R11 K48 ["ApplyStrokeMode"]
  SETTABLEKS R3 R11 K49 ["Color"]
  LOADN R12 5
  SETTABLEKS R12 R11 K50 ["Thickness"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K33 ["Stroke"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K4 [{"Key", "LayoutOrder", "Pressed"}]
  GETTABLEKS R4 R0 K5 ["key"]
  SETTABLEKS R4 R3 K1 ["Key"]
  GETTABLEKS R4 R0 K6 ["index"]
  SETTABLEKS R4 R3 K2 ["LayoutOrder"]
  GETTABLEKS R4 R0 K7 ["pressed"]
  SETTABLEKS R4 R3 K3 ["Pressed"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["PressedKeys"]
  DUPCLOSURE R3 K1 [PROTO_1]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 3
  DUPTABLE R4 K8 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding", "Spacing"}]
  GETIMPORT R5 K11 [Enum.AutomaticSize.XY]
  SETTABLEKS R5 R4 K3 ["AutomaticSize"]
  GETIMPORT R5 K14 [Enum.FillDirection.Horizontal]
  SETTABLEKS R5 R4 K4 ["Layout"]
  GETTABLEKS R5 R0 K5 ["LayoutOrder"]
  SETTABLEKS R5 R4 K5 ["LayoutOrder"]
  LOADN R5 10
  SETTABLEKS R5 R4 K6 ["Padding"]
  LOADN R5 20
  SETTABLEKS R5 R4 K7 ["Spacing"]
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["map"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["Pane"]
  GETTABLEKS R7 R4 K12 ["ContextServices"]
  GETTABLEKS R8 R7 K13 ["Stylizer"]
  DUPCLOSURE R9 K14 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R1
  DUPCLOSURE R10 K15 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R6
  RETURN R10 1
