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
  LOADK R4 K10 [".Component-DropdownButton"]
  DUPTABLE R5 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K11 ["BackgroundTransparency"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  NEWTABLE R6 0 5
  MOVE R7 R2
  LOADK R8 K14 [".AddPadding"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K15 ["::UIPadding"]
  DUPTABLE R13 K20 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R14 K23 [UDim.new]
  LOADN R15 0
  LOADN R16 2
  CALL R14 2 1
  SETTABLEKS R14 R13 K16 ["PaddingTop"]
  GETIMPORT R14 K23 [UDim.new]
  LOADN R15 0
  LOADN R16 2
  CALL R14 2 1
  SETTABLEKS R14 R13 K17 ["PaddingLeft"]
  GETIMPORT R14 K23 [UDim.new]
  LOADN R15 0
  LOADN R16 2
  CALL R14 2 1
  SETTABLEKS R14 R13 K18 ["PaddingRight"]
  GETIMPORT R14 K23 [UDim.new]
  LOADN R15 0
  LOADN R16 2
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["PaddingBottom"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K24 ["::UICorner"]
  DUPTABLE R10 K26 [{"CornerRadius"}]
  GETIMPORT R11 K23 [UDim.new]
  LOADN R12 0
  LOADN R13 4
  CALL R11 2 1
  SETTABLEKS R11 R10 K25 ["CornerRadius"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K27 [":hover"]
  DUPTABLE R11 K29 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R12 K30 ["$Shift200Transparency"]
  SETTABLEKS R12 R11 K11 ["BackgroundTransparency"]
  LOADK R12 K31 ["$Shift200Color"]
  SETTABLEKS R12 R11 K28 ["BackgroundColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K32 [":press"]
  DUPTABLE R12 K29 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R13 K33 ["$Shift100Transparency"]
  SETTABLEKS R13 R12 K11 ["BackgroundTransparency"]
  LOADK R13 K31 ["$Shift200Color"]
  SETTABLEKS R13 R12 K28 ["BackgroundColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K34 [".Disabled"]
  DUPTABLE R13 K36 [{"ImageTransparency"}]
  LOADK R14 K37 [0.4]
  SETTABLEKS R14 R13 K35 ["ImageTransparency"]
  CALL R11 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
