PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["ImageLabel"]
  DUPTABLE R3 K5 [{"Name", "Size", "BackgroundColor3"}]
  LOADK R4 K6 ["LoadingPrompt"]
  SETTABLEKS R4 R3 K2 ["Name"]
  GETIMPORT R4 K9 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 1
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K3 ["Size"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["Theme"]
  GETIMPORT R6 K14 [Enum.StudioStyleGuideColor.MainBackground]
  GETIMPORT R7 K17 [Enum.StudioStyleGuideModifier.Default]
  NAMECALL R4 R4 K18 ["GetColor"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K4 ["BackgroundColor3"]
  DUPTABLE R4 K20 [{"description"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K21 ["TextLabel"]
  DUPTABLE R7 K31 [{"AnchorPoint", "BackgroundTransparency", "Font", "Name", "Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
  GETIMPORT R8 K33 [Vector2.new]
  LOADK R9 K34 [0.5]
  LOADK R10 K34 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K22 ["AnchorPoint"]
  LOADN R8 1
  SETTABLEKS R8 R7 K23 ["BackgroundTransparency"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K35 ["FONT"]
  SETTABLEKS R8 R7 K24 ["Font"]
  LOADK R8 K36 ["Description"]
  SETTABLEKS R8 R7 K2 ["Name"]
  GETIMPORT R8 K9 [UDim2.new]
  LOADK R9 K34 [0.5]
  LOADN R10 0
  LOADK R11 K34 [0.5]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K25 ["Position"]
  GETIMPORT R8 K9 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K3 ["Size"]
  LOADK R8 K37 ["Importing Avatar, please wait..."]
  SETTABLEKS R8 R7 K26 ["Text"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K38 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R8 R7 K27 ["TextSize"]
  GETIMPORT R8 K40 [Enum.TextXAlignment.Center]
  SETTABLEKS R8 R7 K28 ["TextXAlignment"]
  GETIMPORT R8 K41 [Enum.TextYAlignment.Center]
  SETTABLEKS R8 R7 K29 ["TextYAlignment"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K10 ["Theme"]
  GETIMPORT R10 K43 [Enum.StudioStyleGuideColor.MainText]
  GETIMPORT R11 K17 [Enum.StudioStyleGuideModifier.Default]
  NAMECALL R8 R8 K18 ["GetColor"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K30 ["TextColor3"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K19 ["description"]
  CALL R1 3 -1
  RETURN R1 -1

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
  GETIMPORT R3 K8 [settings]
  CALL R3 0 1
  GETTABLEKS R2 R3 K9 ["Studio"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K10 ["src"]
  GETTABLEKS R4 R5 K11 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K12 ["Component"]
  LOADK R6 K13 ["LoadingPrompt"]
  NAMECALL R4 R4 K14 ["extend"]
  CALL R4 2 1
  DUPCLOSURE R5 K15 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K16 ["render"]
  RETURN R4 1
