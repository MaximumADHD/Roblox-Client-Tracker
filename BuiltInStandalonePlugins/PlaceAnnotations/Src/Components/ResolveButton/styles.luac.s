MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Component-ResolveButton"]
  DUPTABLE R5 K14 [{"Text", "Size", "BackgroundTransparency"}]
  LOADK R6 K15 [""]
  SETTABLEKS R6 R5 K11 ["Text"]
  GETIMPORT R6 K18 [UDim2.fromOffset]
  LOADN R7 20
  LOADN R8 20
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["Size"]
  LOADN R6 1
  SETTABLEKS R6 R5 K13 ["BackgroundTransparency"]
  NEWTABLE R6 0 7
  MOVE R7 R2
  LOADK R8 K19 ["::UIPadding"]
  DUPTABLE R9 K24 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R10 K27 [UDim.new]
  LOADN R11 0
  LOADN R12 2
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["PaddingTop"]
  GETIMPORT R10 K27 [UDim.new]
  LOADN R11 0
  LOADN R12 2
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["PaddingLeft"]
  GETIMPORT R10 K27 [UDim.new]
  LOADN R11 0
  LOADN R12 2
  CALL R10 2 1
  SETTABLEKS R10 R9 K22 ["PaddingRight"]
  GETIMPORT R10 K27 [UDim.new]
  LOADN R11 0
  LOADN R12 2
  CALL R10 2 1
  SETTABLEKS R10 R9 K23 ["PaddingBottom"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K28 [":hover"]
  DUPTABLE R10 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R11 K31 ["$Shift200Color"]
  SETTABLEKS R11 R10 K29 ["BackgroundColor3"]
  LOADK R11 K32 ["$Shift200Transparency"]
  SETTABLEKS R11 R10 K13 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K33 [":press"]
  DUPTABLE R11 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R12 K31 ["$Shift200Color"]
  SETTABLEKS R12 R11 K29 ["BackgroundColor3"]
  LOADK R12 K34 ["$Shift100Transparency"]
  SETTABLEKS R12 R11 K13 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K35 ["::UICorner"]
  DUPTABLE R12 K37 [{"CornerRadius"}]
  GETIMPORT R13 K27 [UDim.new]
  LOADN R14 0
  LOADN R15 4
  CALL R13 2 1
  SETTABLEKS R13 R12 K36 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K38 ["> ImageLabel"]
  DUPTABLE R13 K42 [{"AnchorPoint", "Position", "Size", "Image", "BackgroundTransparency"}]
  GETIMPORT R14 K44 [Vector2.new]
  LOADK R15 K45 [0.5]
  LOADK R16 K45 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K39 ["AnchorPoint"]
  GETIMPORT R14 K47 [UDim2.fromScale]
  LOADK R15 K45 [0.5]
  LOADK R16 K45 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K40 ["Position"]
  GETIMPORT R14 K18 [UDim2.fromOffset]
  LOADN R15 15
  LOADN R16 15
  CALL R14 2 1
  SETTABLEKS R14 R13 K12 ["Size"]
  LOADK R14 K48 ["$ResolveIcon"]
  SETTABLEKS R14 R13 K41 ["Image"]
  LOADN R14 1
  SETTABLEKS R14 R13 K13 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K49 [".Resolved"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K38 ["> ImageLabel"]
  DUPTABLE R18 K50 [{"Image"}]
  LOADK R19 K51 ["$ResolveIconResolved"]
  SETTABLEKS R19 R18 K41 ["Image"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K52 [".Disabled"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K38 ["> ImageLabel"]
  DUPTABLE R19 K54 [{"ImageTransparency"}]
  LOADK R20 K55 [0.4]
  SETTABLEKS R20 R19 K53 ["ImageTransparency"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
