PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Position"]
  GETTABLEKS R4 R1 K3 ["Size"]
  GETTABLEKS R5 R1 K4 ["AnchorPoint"]
  GETTABLEKS R6 R1 K5 ["Time"]
  GETTABLEKS R7 R1 K6 ["ZIndex"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K11 [{"Style", "BackgroundColor3", "BorderSizePixel", "AnchorPoint", "Size", "Position", "ZIndex"}]
  LOADK R11 K12 ["BorderBox"]
  SETTABLEKS R11 R10 K8 ["Style"]
  GETTABLEKS R12 R2 K13 ["scaleControlsTheme"]
  GETTABLEKS R11 R12 K14 ["mainColor"]
  SETTABLEKS R11 R10 K9 ["BackgroundColor3"]
  LOADN R11 0
  SETTABLEKS R11 R10 K10 ["BorderSizePixel"]
  SETTABLEKS R5 R10 K4 ["AnchorPoint"]
  SETTABLEKS R4 R10 K3 ["Size"]
  SETTABLEKS R3 R10 K2 ["Position"]
  SETTABLEKS R7 R10 K6 ["ZIndex"]
  DUPTABLE R11 K15 [{"Time"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  LOADK R13 K16 ["TextLabel"]
  DUPTABLE R14 K24 [{"BackgroundTransparency", "Position", "AnchorPoint", "Size", "TextXAlignment", "TextYAlignment", "Text", "TextColor3", "TextSize", "Font"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K17 ["BackgroundTransparency"]
  GETIMPORT R15 K27 [UDim2.new]
  LOADK R16 K28 [0.5]
  LOADN R17 0
  LOADK R18 K28 [0.5]
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K2 ["Position"]
  GETIMPORT R15 K30 [Vector2.new]
  LOADK R16 K28 [0.5]
  LOADK R17 K28 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K4 ["AnchorPoint"]
  GETIMPORT R15 K27 [UDim2.new]
  LOADN R16 1
  LOADN R17 252
  LOADN R18 1
  LOADN R19 254
  CALL R15 4 1
  SETTABLEKS R15 R14 K3 ["Size"]
  GETIMPORT R15 K33 [Enum.TextXAlignment.Center]
  SETTABLEKS R15 R14 K18 ["TextXAlignment"]
  GETIMPORT R15 K34 [Enum.TextYAlignment.Center]
  SETTABLEKS R15 R14 K19 ["TextYAlignment"]
  SETTABLEKS R6 R14 K20 ["Text"]
  GETTABLEKS R16 R2 K13 ["scaleControlsTheme"]
  GETTABLEKS R15 R16 K35 ["textColor"]
  SETTABLEKS R15 R14 K21 ["TextColor3"]
  GETTABLEKS R16 R2 K13 ["scaleControlsTheme"]
  GETTABLEKS R15 R16 K36 ["textSize"]
  SETTABLEKS R15 R14 K22 ["TextSize"]
  GETTABLEKS R15 R2 K37 ["font"]
  SETTABLEKS R15 R14 K23 ["Font"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K5 ["Time"]
  CALL R8 3 -1
  RETURN R8 -1

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
  GETTABLEKS R6 R2 K11 ["UI"]
  GETTABLEKS R5 R6 K12 ["Pane"]
  GETTABLEKS R6 R1 K13 ["PureComponent"]
  LOADK R8 K14 ["TimeTag"]
  NAMECALL R6 R6 K15 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K16 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K17 ["render"]
  MOVE R7 R4
  DUPTABLE R8 K19 [{"Stylizer"}]
  GETTABLEKS R9 R3 K18 ["Stylizer"]
  SETTABLEKS R9 R8 K18 ["Stylizer"]
  CALL R7 1 1
  MOVE R8 R6
  CALL R7 1 1
  MOVE R6 R7
  RETURN R6 1
