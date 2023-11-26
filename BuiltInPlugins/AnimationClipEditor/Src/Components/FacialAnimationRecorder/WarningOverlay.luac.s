PROTO_0:
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["TitleText"]
  GETTABLEKS R3 R1 K2 ["AnchorPoint"]
  GETTABLEKS R4 R1 K3 ["Image"]
  GETTABLEKS R5 R1 K4 ["Position"]
  GETTABLEKS R6 R1 K5 ["LayoutOrder"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K15 [{"AutomaticSize", "Position", "AnchorPoint", "Padding", "Layout", "Spacing", "VerticalAlignment", "ZIndex", "Style", "ImageTransparency", "LayoutOrder"}]
  GETIMPORT R10 K18 [Enum.AutomaticSize.XY]
  SETTABLEKS R10 R9 K7 ["AutomaticSize"]
  SETTABLEKS R5 R9 K4 ["Position"]
  SETTABLEKS R3 R9 K2 ["AnchorPoint"]
  DUPTABLE R10 K23 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R11 10
  SETTABLEKS R11 R10 K19 ["Left"]
  LOADN R11 10
  SETTABLEKS R11 R10 K20 ["Right"]
  LOADN R11 5
  SETTABLEKS R11 R10 K21 ["Top"]
  LOADN R11 5
  SETTABLEKS R11 R10 K22 ["Bottom"]
  SETTABLEKS R10 R9 K8 ["Padding"]
  GETIMPORT R10 K26 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K9 ["Layout"]
  LOADN R10 8
  SETTABLEKS R10 R9 K10 ["Spacing"]
  GETIMPORT R10 K28 [Enum.VerticalAlignment.Center]
  SETTABLEKS R10 R9 K11 ["VerticalAlignment"]
  LOADN R10 1
  SETTABLEKS R10 R9 K12 ["ZIndex"]
  LOADK R10 K29 ["RoundBox"]
  SETTABLEKS R10 R9 K13 ["Style"]
  LOADK R10 K30 [0.1]
  SETTABLEKS R10 R9 K14 ["ImageTransparency"]
  SETTABLEKS R6 R9 K5 ["LayoutOrder"]
  DUPTABLE R10 K32 [{"Image", "Message"}]
  LOADB R11 0
  JUMPIFEQKNIL R4 [+33]
  LOADB R11 0
  JUMPIFEQKS R4 K33 [""] [+30]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K34 ["ImageLabel"]
  DUPTABLE R13 K37 [{"BackgroundTransparency", "Size", "Position", "Image"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K35 ["BackgroundTransparency"]
  GETIMPORT R14 K40 [UDim2.new]
  LOADN R15 0
  LOADN R16 15
  LOADN R17 0
  LOADN R18 15
  CALL R14 4 1
  SETTABLEKS R14 R13 K36 ["Size"]
  GETIMPORT R14 K40 [UDim2.new]
  LOADN R15 0
  LOADN R16 19
  LOADN R17 0
  LOADN R18 5
  CALL R14 4 1
  SETTABLEKS R14 R13 K4 ["Position"]
  SETTABLEKS R4 R13 K3 ["Image"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K3 ["Image"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K44 [{"AutomaticSize", "TextXAlignment", "Text", "BackgroundTransparency", "TextWrapped", "LayoutOrder"}]
  GETIMPORT R14 K18 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K7 ["AutomaticSize"]
  GETIMPORT R14 K45 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K41 ["TextXAlignment"]
  SETTABLEKS R2 R13 K42 ["Text"]
  LOADN R14 1
  SETTABLEKS R14 R13 K35 ["BackgroundTransparency"]
  LOADB R14 1
  SETTABLEKS R14 R13 K43 ["TextWrapped"]
  LOADN R14 1
  SETTABLEKS R14 R13 K5 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K31 ["Message"]
  CALL R7 3 -1
  RETURN R7 -1

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
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETTABLEKS R6 R2 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["StyleModifier"]
  GETTABLEKS R6 R2 K13 ["UI"]
  GETTABLEKS R7 R6 K14 ["Pane"]
  GETTABLEKS R9 R2 K13 ["UI"]
  GETTABLEKS R8 R9 K15 ["Button"]
  GETTABLEKS R9 R6 K16 ["TextLabel"]
  GETTABLEKS R10 R6 K17 ["Container"]
  GETTABLEKS R11 R6 K18 ["Tooltip"]
  GETTABLEKS R12 R6 K19 ["HoverArea"]
  GETTABLEKS R13 R6 K20 ["LoadingIndicator"]
  GETTABLEKS R14 R1 K21 ["PureComponent"]
  LOADK R16 K22 ["WarningOverlay"]
  NAMECALL R14 R14 K23 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K24 [PROTO_0]
  SETTABLEKS R15 R14 K25 ["init"]
  DUPCLOSURE R15 K26 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K27 ["render"]
  MOVE R15 R4
  DUPTABLE R16 K30 [{"Stylizer", "Localization"}]
  GETTABLEKS R17 R3 K28 ["Stylizer"]
  SETTABLEKS R17 R16 K28 ["Stylizer"]
  GETTABLEKS R17 R3 K29 ["Localization"]
  SETTABLEKS R17 R16 K29 ["Localization"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  RETURN R14 1
