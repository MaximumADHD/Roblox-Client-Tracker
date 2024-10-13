PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Buttons"]
  GETTABLEKS R4 R1 K3 ["Header"]
  GETTABLEKS R5 R1 K4 ["Description"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["new"]
  LOADN R7 254
  CALL R6 1 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K8 [{"Buttons", "OnResult"}]
  SETTABLEKS R3 R9 K2 ["Buttons"]
  GETTABLEKS R10 R1 K7 ["OnResult"]
  SETTABLEKS R10 R9 K7 ["OnResult"]
  DUPTABLE R10 K10 [{"Header", "WarningDescription"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K11 ["TextLabel"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K12 ["Dictionary"]
  GETTABLEKS R13 R14 K13 ["join"]
  GETTABLEKS R15 R2 K14 ["fontStyle"]
  GETTABLEKS R14 R15 K15 ["Title"]
  DUPTABLE R15 K23 [{"AutomaticSize", "Size", "AnchorPoint", "LayoutOrder", "BackgroundTransparency", "Text", "TextXAlignment"}]
  GETIMPORT R16 K26 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K16 ["AutomaticSize"]
  GETIMPORT R16 K28 [UDim2.new]
  LOADN R17 1
  GETTABLEKS R19 R2 K29 ["warningDialog"]
  GETTABLEKS R18 R19 K30 ["headerOffset"]
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K17 ["Size"]
  GETIMPORT R16 K32 [Vector2.new]
  LOADK R17 K33 [0.5]
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K18 ["AnchorPoint"]
  NAMECALL R16 R6 K34 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K19 ["LayoutOrder"]
  LOADN R16 1
  SETTABLEKS R16 R15 K20 ["BackgroundTransparency"]
  SETTABLEKS R4 R15 K21 ["Text"]
  GETIMPORT R16 K36 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K22 ["TextXAlignment"]
  CALL R13 2 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K3 ["Header"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K37 ["Frame"]
  DUPTABLE R13 K39 [{"AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R14 K41 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K16 ["AutomaticSize"]
  LOADN R14 1
  SETTABLEKS R14 R13 K20 ["BackgroundTransparency"]
  LOADN R14 0
  SETTABLEKS R14 R13 K38 ["BorderSizePixel"]
  NAMECALL R14 R6 K34 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K19 ["LayoutOrder"]
  DUPTABLE R14 K44 [{"UILayout", "Warning", "Description"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  LOADK R16 K45 ["UIListLayout"]
  DUPTABLE R17 K50 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R18 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K46 ["FillDirection"]
  GETIMPORT R18 K54 [UDim.new]
  LOADN R19 0
  GETTABLEKS R21 R2 K55 ["dialog"]
  GETTABLEKS R20 R21 K56 ["spacing"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K47 ["Padding"]
  GETIMPORT R18 K57 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K48 ["SortOrder"]
  GETIMPORT R18 K59 [Enum.VerticalAlignment.Center]
  SETTABLEKS R18 R17 K49 ["VerticalAlignment"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K42 ["UILayout"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  LOADK R16 K60 ["ImageLabel"]
  DUPTABLE R17 K62 [{"Image", "LayoutOrder", "BackgroundTransparency", "Size"}]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K63 ["WARNING_IMAGE"]
  SETTABLEKS R18 R17 K61 ["Image"]
  NAMECALL R18 R6 K34 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K19 ["LayoutOrder"]
  LOADN R18 1
  SETTABLEKS R18 R17 K20 ["BackgroundTransparency"]
  GETIMPORT R18 K28 [UDim2.new]
  LOADN R19 0
  GETTABLEKS R22 R2 K29 ["warningDialog"]
  GETTABLEKS R21 R22 K64 ["icon"]
  GETTABLEKS R20 R21 K65 ["size"]
  LOADN R21 0
  GETTABLEKS R24 R2 K29 ["warningDialog"]
  GETTABLEKS R23 R24 K64 ["icon"]
  GETTABLEKS R22 R23 K65 ["size"]
  CALL R18 4 1
  SETTABLEKS R18 R17 K17 ["Size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K43 ["Warning"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  LOADK R16 K11 ["TextLabel"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K12 ["Dictionary"]
  GETTABLEKS R17 R18 K13 ["join"]
  GETTABLEKS R19 R2 K14 ["fontStyle"]
  GETTABLEKS R18 R19 K43 ["Warning"]
  DUPTABLE R19 K67 [{"AutomaticSize", "LayoutOrder", "Size", "BackgroundTransparency", "Text", "TextXAlignment", "TextWrapped"}]
  GETIMPORT R20 K26 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K16 ["AutomaticSize"]
  NAMECALL R20 R6 K34 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K19 ["LayoutOrder"]
  GETIMPORT R20 K28 [UDim2.new]
  LOADN R21 0
  GETTABLEKS R24 R2 K29 ["warningDialog"]
  GETTABLEKS R23 R24 K68 ["description"]
  GETTABLEKS R22 R23 K69 ["length"]
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K17 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K20 ["BackgroundTransparency"]
  SETTABLEKS R5 R19 K21 ["Text"]
  GETIMPORT R20 K36 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K22 ["TextXAlignment"]
  LOADB R20 1
  SETTABLEKS R20 R19 K66 ["TextWrapped"]
  CALL R17 2 -1
  CALL R15 -1 1
  SETTABLEKS R15 R14 K4 ["Description"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K9 ["WarningDescription"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["Util"]
  GETTABLEKS R5 R4 K10 ["LayoutOrderIterator"]
  GETTABLEKS R6 R3 K11 ["ContextServices"]
  GETTABLEKS R7 R6 K12 ["withContext"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K9 ["Util"]
  GETTABLEKS R9 R10 K14 ["DEPRECATED_Constants"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R13 R0 K13 ["Src"]
  GETTABLEKS R12 R13 K15 ["Components"]
  GETTABLEKS R11 R12 K16 ["Dialog"]
  GETTABLEKS R10 R11 K17 ["BaseDialog"]
  CALL R9 1 1
  GETTABLEKS R10 R1 K18 ["PureComponent"]
  LOADK R12 K19 ["WarningDialog"]
  NAMECALL R10 R10 K20 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K21 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R8
  SETTABLEKS R11 R10 K22 ["render"]
  MOVE R11 R7
  DUPTABLE R12 K24 [{"Stylizer"}]
  GETTABLEKS R13 R6 K23 ["Stylizer"]
  SETTABLEKS R13 R12 K23 ["Stylizer"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
