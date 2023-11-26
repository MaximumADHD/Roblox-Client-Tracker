PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Size"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETTABLEKS R5 R1 K4 ["Localization"]
  GETTABLEKS R6 R1 K5 ["processResult"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["new"]
  CALL R7 0 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K12 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
  SETTABLEKS R2 R10 K1 ["Size"]
  SETTABLEKS R4 R10 K3 ["LayoutOrder"]
  GETIMPORT R11 K16 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K8 ["Layout"]
  GETIMPORT R11 K18 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R11 R10 K9 ["HorizontalAlignment"]
  GETIMPORT R11 K20 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K10 ["VerticalAlignment"]
  GETTABLEKS R11 R3 K11 ["Spacing"]
  SETTABLEKS R11 R10 K11 ["Spacing"]
  DUPTABLE R11 K23 [{"ResultContainer", "Buttons"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K26 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "BorderSizePixel", "Padding", "Size", "Spacing"}]
  GETIMPORT R15 K16 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K8 ["Layout"]
  GETIMPORT R15 K28 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K9 ["HorizontalAlignment"]
  GETIMPORT R15 K20 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K10 ["VerticalAlignment"]
  LOADN R15 0
  SETTABLEKS R15 R14 K24 ["BorderSizePixel"]
  GETTABLEKS R15 R3 K29 ["ResultContainerPadding"]
  SETTABLEKS R15 R14 K25 ["Padding"]
  GETTABLEKS R15 R3 K30 ["ResultContainerSize"]
  SETTABLEKS R15 R14 K1 ["Size"]
  GETTABLEKS R15 R3 K31 ["ResultContainerSpacing"]
  SETTABLEKS R15 R14 K11 ["Spacing"]
  DUPTABLE R15 K34 [{"Separator", "ProcessResult"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K37 [{"DominantAxis", "LayoutOrder", "Style"}]
  GETIMPORT R19 K39 [Enum.DominantAxis.Width]
  SETTABLEKS R19 R18 K35 ["DominantAxis"]
  NAMECALL R19 R7 K40 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K3 ["LayoutOrder"]
  GETTABLEKS R19 R3 K41 ["SeparatorStyle"]
  SETTABLEKS R19 R18 K36 ["Style"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K32 ["Separator"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K44 [{"Size", "LayoutOrder", "Text", "TextXAlignment"}]
  GETTABLEKS R19 R3 K45 ["ResultSize"]
  SETTABLEKS R19 R18 K1 ["Size"]
  NAMECALL R19 R7 K40 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K3 ["LayoutOrder"]
  JUMPIFNOTEQKS R6 K46 [""] [+3]
  MOVE R19 R6
  JUMP [+5]
  LOADK R21 K47 ["ReplaceResult"]
  MOVE R22 R6
  NAMECALL R19 R5 K48 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K42 ["Text"]
  GETIMPORT R19 K49 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K43 ["TextXAlignment"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K33 ["ProcessResult"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K21 ["ResultContainer"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K51 [{"AutomaticSize", "LayoutOrder", "Padding"}]
  GETIMPORT R15 K53 [Enum.AutomaticSize.XY]
  SETTABLEKS R15 R14 K50 ["AutomaticSize"]
  NAMECALL R15 R7 K40 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K3 ["LayoutOrder"]
  GETTABLEKS R15 R3 K54 ["ButtonPadding"]
  SETTABLEKS R15 R14 K25 ["Padding"]
  NEWTABLE R15 0 1
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 5
  CALL R16 1 -1
  SETLIST R15 R16 4294967295 [1]
  CALL R12 3 1
  SETTABLEKS R12 R11 K22 ["Buttons"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_1:
  DUPTABLE R2 K1 [{"processResult"}]
  GETTABLEKS R4 R0 K2 ["AnimationConversion"]
  GETTABLEKS R3 R4 K0 ["processResult"]
  SETTABLEKS R3 R2 K0 ["processResult"]
  RETURN R2 1

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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K9 ["UI"]
  GETTABLEKS R5 R4 K10 ["Pane"]
  GETTABLEKS R6 R4 K11 ["Separator"]
  GETTABLEKS R7 R4 K12 ["TextLabel"]
  GETTABLEKS R9 R1 K13 ["Util"]
  GETTABLEKS R8 R9 K14 ["LayoutOrderIterator"]
  GETTABLEKS R9 R1 K15 ["ContextServices"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K16 ["Src"]
  GETTABLEKS R12 R13 K17 ["Components"]
  GETTABLEKS R11 R12 K18 ["ConvertDebugButtons"]
  CALL R10 1 1
  GETTABLEKS R11 R2 K19 ["PureComponent"]
  LOADK R13 K20 ["AnimationConversionPaneFooter"]
  NAMECALL R11 R11 K21 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K22 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K23 ["render"]
  DUPCLOSURE R12 K24 [PROTO_1]
  GETTABLEKS R13 R9 K25 ["withContext"]
  DUPTABLE R14 K28 [{"Stylizer", "Localization"}]
  GETTABLEKS R15 R9 K26 ["Stylizer"]
  SETTABLEKS R15 R14 K26 ["Stylizer"]
  GETTABLEKS R15 R9 K27 ["Localization"]
  SETTABLEKS R15 R14 K27 ["Localization"]
  CALL R13 1 1
  MOVE R14 R11
  CALL R13 1 1
  MOVE R11 R13
  GETTABLEKS R13 R3 K29 ["connect"]
  MOVE R14 R12
  CALL R13 1 1
  MOVE R14 R11
  CALL R13 1 -1
  RETURN R13 -1
