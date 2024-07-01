MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K9 [".Component-CollaboratorThumbnail"]
  DUPTABLE R5 K11 [{"BackgroundTransparency"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K10 ["BackgroundTransparency"]
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K12 [">> #ActivityRing"]
  DUPTABLE R9 K16 [{"Image", "Size", "BackgroundColor3"}]
  LOADK R10 K17 ["$ActivityRingImage"]
  SETTABLEKS R10 R9 K13 ["Image"]
  GETIMPORT R10 K20 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["Size"]
  LOADK R10 K21 ["$ForegroundContrast"]
  SETTABLEKS R10 R9 K15 ["BackgroundColor3"]
  NEWTABLE R10 0 2
  MOVE R11 R2
  LOADK R12 K22 [".Idle"]
  DUPTABLE R13 K25 [{"ImageColor3", "ImageTransparency"}]
  GETIMPORT R14 K28 [Color3.fromRGB]
  LOADN R15 140
  LOADN R16 140
  LOADN R17 140
  CALL R14 3 1
  SETTABLEKS R14 R13 K23 ["ImageColor3"]
  LOADK R14 K29 [0.2]
  SETTABLEKS R14 R13 K24 ["ImageTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K30 ["::UICorner"]
  DUPTABLE R14 K32 [{"CornerRadius"}]
  GETIMPORT R15 K35 [UDim.new]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K31 ["CornerRadius"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K36 [">> #Avatar"]
  DUPTABLE R10 K40 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R11 K20 [UDim2.fromScale]
  LOADK R12 K41 [0.7]
  LOADK R13 K41 [0.7]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Size"]
  GETIMPORT R11 K20 [UDim2.fromScale]
  LOADK R12 K42 [0.5]
  LOADK R13 K42 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K37 ["Position"]
  GETIMPORT R11 K44 [Vector2.new]
  LOADK R12 K42 [0.5]
  LOADK R13 K42 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K38 ["AnchorPoint"]
  LOADK R11 K45 ["$SecondaryContrast"]
  SETTABLEKS R11 R10 K15 ["BackgroundColor3"]
  LOADN R11 0
  SETTABLEKS R11 R10 K39 ["BorderSizePixel"]
  NEWTABLE R11 0 2
  MOVE R12 R2
  LOADK R13 K22 [".Idle"]
  DUPTABLE R14 K46 [{"BackgroundColor3", "ImageColor3", "ImageTransparency"}]
  LOADK R15 K21 ["$ForegroundContrast"]
  SETTABLEKS R15 R14 K15 ["BackgroundColor3"]
  GETIMPORT R15 K28 [Color3.fromRGB]
  LOADN R16 140
  LOADN R17 140
  LOADN R18 140
  CALL R15 3 1
  SETTABLEKS R15 R14 K23 ["ImageColor3"]
  LOADK R15 K29 [0.2]
  SETTABLEKS R15 R14 K24 ["ImageTransparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K30 ["::UICorner"]
  DUPTABLE R15 K32 [{"CornerRadius"}]
  GETIMPORT R16 K35 [UDim.new]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K31 ["CornerRadius"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
