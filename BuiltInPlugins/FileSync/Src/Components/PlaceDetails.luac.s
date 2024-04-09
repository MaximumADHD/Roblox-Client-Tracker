PROTO_0:
  GETTABLEKS R1 R0 K0 ["Size"]
  JUMPIF R1 [+7]
  GETIMPORT R1 K3 [UDim2.new]
  LOADN R2 1
  LOADN R3 0
  LOADN R4 0
  LOADN R5 20
  CALL R1 4 1
  GETUPVAL R2 0
  NAMECALL R2 R2 K4 ["use"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["new"]
  CALL R3 0 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["GAME_ICON_URL"]
  LOADK R6 K6 ["5202961468"]
  NAMECALL R4 R4 K7 ["format"]
  CALL R4 2 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K8 ["createElement"]
  LOADK R6 K9 ["Frame"]
  DUPTABLE R7 K12 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K10 ["BackgroundTransparency"]
  SETTABLEKS R1 R7 K0 ["Size"]
  GETTABLEKS R8 R0 K11 ["LayoutOrder"]
  SETTABLEKS R8 R7 K11 ["LayoutOrder"]
  DUPTABLE R8 K17 [{"ListLayout", "PlaceLabel", "SpacerPlace", "PlaceFrame"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K8 ["createElement"]
  LOADK R10 K18 ["UIListLayout"]
  DUPTABLE R11 K22 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R12 K25 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K19 ["FillDirection"]
  GETIMPORT R12 K27 [UDim.new]
  LOADN R13 0
  LOADN R14 2
  CALL R12 2 1
  SETTABLEKS R12 R11 K20 ["Padding"]
  GETIMPORT R12 K28 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K21 ["SortOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["ListLayout"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K33 [{"Text", "Style", "AutomaticSize", "BackgroundTransparency", "Size", "TextXAlignment", "LayoutOrder"}]
  LOADK R14 K34 ["Labels"]
  LOADK R15 K35 ["Place"]
  NAMECALL R12 R2 K36 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K29 ["Text"]
  LOADK R12 K37 ["Basic"]
  SETTABLEKS R12 R11 K30 ["Style"]
  GETIMPORT R12 K39 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K31 ["AutomaticSize"]
  LOADN R12 1
  SETTABLEKS R12 R11 K10 ["BackgroundTransparency"]
  GETIMPORT R12 K3 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 20
  CALL R12 4 1
  SETTABLEKS R12 R11 K0 ["Size"]
  GETIMPORT R12 K41 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K32 ["TextXAlignment"]
  NAMECALL R12 R3 K42 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K11 ["LayoutOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["PlaceLabel"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K8 ["createElement"]
  LOADK R10 K9 ["Frame"]
  DUPTABLE R11 K43 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
  NAMECALL R12 R3 K42 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K11 ["LayoutOrder"]
  GETIMPORT R12 K3 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 8
  CALL R12 4 1
  SETTABLEKS R12 R11 K0 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K10 ["BackgroundTransparency"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["SpacerPlace"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K8 ["createElement"]
  LOADK R10 K9 ["Frame"]
  DUPTABLE R11 K12 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K10 ["BackgroundTransparency"]
  GETIMPORT R12 K3 [UDim2.new]
  LOADN R13 1
  LOADN R14 20
  LOADN R15 0
  LOADN R16 20
  CALL R12 4 1
  SETTABLEKS R12 R11 K0 ["Size"]
  NAMECALL R12 R3 K42 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K11 ["LayoutOrder"]
  DUPTABLE R12 K47 [{"Layout", "GameIconImage", "PlaceName"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K8 ["createElement"]
  LOADK R14 K18 ["UIListLayout"]
  DUPTABLE R15 K49 [{"FillDirection", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R16 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K19 ["FillDirection"]
  GETIMPORT R16 K28 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K21 ["SortOrder"]
  GETIMPORT R16 K53 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K48 ["VerticalAlignment"]
  GETIMPORT R16 K27 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K20 ["Padding"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K44 ["Layout"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K8 ["createElement"]
  LOADK R14 K54 ["ImageLabel"]
  DUPTABLE R15 K57 [{"BackgroundTransparency", "Image", "Size", "ImageTransparency", "LayoutOrder"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K10 ["BackgroundTransparency"]
  SETTABLEKS R4 R15 K55 ["Image"]
  GETIMPORT R16 K3 [UDim2.new]
  LOADN R17 0
  LOADN R18 25
  LOADN R19 0
  LOADN R20 25
  CALL R16 4 1
  SETTABLEKS R16 R15 K0 ["Size"]
  LOADN R16 0
  SETTABLEKS R16 R15 K56 ["ImageTransparency"]
  LOADN R16 0
  SETTABLEKS R16 R15 K11 ["LayoutOrder"]
  DUPTABLE R16 K59 [{"Corner"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K8 ["createElement"]
  LOADK R18 K60 ["UICorner"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K58 ["Corner"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K45 ["GameIconImage"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K61 [{"Text", "Style", "AutomaticSize", "Size", "TextXAlignment", "BackgroundTransparency", "LayoutOrder"}]
  GETTABLEKS R16 R0 K46 ["PlaceName"]
  SETTABLEKS R16 R15 K29 ["Text"]
  LOADK R16 K37 ["Basic"]
  SETTABLEKS R16 R15 K30 ["Style"]
  GETIMPORT R16 K39 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K31 ["AutomaticSize"]
  GETIMPORT R16 K3 [UDim2.new]
  LOADN R17 1
  LOADN R18 231
  LOADN R19 0
  LOADN R20 25
  CALL R16 4 1
  SETTABLEKS R16 R15 K0 ["Size"]
  GETIMPORT R16 K41 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K32 ["TextXAlignment"]
  LOADN R16 1
  SETTABLEKS R16 R15 K10 ["BackgroundTransparency"]
  LOADN R16 1
  SETTABLEKS R16 R15 K11 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K46 ["PlaceName"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K16 ["PlaceFrame"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FileSync"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K12 ["ContextServices"]
  GETTABLEKS R4 R5 K13 ["Localization"]
  GETTABLEKS R5 R3 K14 ["UI"]
  GETTABLEKS R6 R5 K15 ["TextLabel"]
  GETTABLEKS R7 R3 K9 ["Util"]
  GETTABLEKS R8 R7 K16 ["LayoutOrderIterator"]
  DUPCLOSURE R9 K17 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R6
  RETURN R9 1
